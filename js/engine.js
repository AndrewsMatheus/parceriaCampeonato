import { INITIAL_MMR, ROLES, normalizeRole, pairKey, teamKey, getSide, winnerSide } from './utils.js';

function emptyPlayer(name) {
  return { name, rank: 0, initialMMR: INITIAL_MMR, currentMMR: INITIAL_MMR, finalMMR: INITIAL_MMR, wins: 0, losses: 0, winrate: 0, matches: [], roles: {}, teammates: {}, opponents: {}, history: [], mmrHistory: [INITIAL_MMR], streaks: { currentWin: 0, currentLoss: 0, bestWin: 0, bestLoss: 0 }, records: { bestGain: 0, worstLoss: 0 } };
}

function statObj() { return { matches: 0, wins: 0, losses: 0, winrate: 0 }; }

const inc = (o, k, win) => {
  o[k] ??= statObj();
  o[k].matches++;
  win ? o[k].wins++ : o[k].losses++;
  o[k].winrate = o[k].wins / o[k].matches * 100;
};

export async function loadData() {
  try {
    const [r, m] = await Promise.all([fetch('data/ranking.json'), fetch('data/matches.json')]);
    if (!r.ok || !m.ok) throw new Error('missing');
    return { ranking: await r.json(), matches: await m.json(), source: 'auto' };
  } catch {
    return null;
  }
}

export async function readImported(files) {
  const parse = f => new Promise((res, rej) => {
    const fr = new FileReader();
    fr.onload = () => res(JSON.parse(fr.result));
    fr.onerror = rej;
    fr.readAsText(f);
  });
  return { ranking: await parse(files.ranking), matches: await parse(files.matches), source: 'imported' };
}

function rankingFields(row, i) {
  return { name: row.name || row.player || row.jogador, rank: +(row.rank || row.position || row.posicao || i + 1), finalMMR: +(row.finalMMR || row.mmrFinal || row.mmr || row.currentMMR || INITIAL_MMR), wins: +(row.wins || row.vitorias || 0), losses: +(row.losses || row.derrotas || 0), winrate: +(row.winrate || 0) };
}

export function buildChampionship(rawRanking = [], rawMatches = []) {
  const c = { players: {}, ranking: [], matches: [], headToHead: {}, duos: {}, teams: {}, timeline: [], statistics: {} };
  rawRanking.forEach((r, i) => {
    const f = rankingFields(r, i);
    c.players[f.name] = { ...emptyPlayer(f.name), ...f, currentMMR: INITIAL_MMR, finalMMR: f.finalMMR };
  });
  rawMatches.forEach((match, idx) => processMatch(c, match, idx + 1));
  Object.values(c.players).forEach(p => {
    p.winrate = p.matches.length ? p.wins / p.matches.length * 100 : p.winrate;
    if (Math.round(p.currentMMR) !== Math.round(p.finalMMR)) console.error(`MMR divergente: ${p.name}`, p.currentMMR, p.finalMMR);
  });
  c.ranking = Object.values(c.players).sort((a, b) => b.finalMMR - a.finalMMR).map((p, i) => ({ ...p, rank: i + 1 }));
  c.statistics = buildStats(c);
  return c;
}

function processMatch(c, match, n) {
  const blue = getSide(match, 'blue');
  const red = getSide(match, 'red');
  const w = winnerSide(match);
  const blueWin = w === 'blue' || blue.some(p => p.name === match.winner);
  const sides = [{ name: 'blue', team: blue, win: blueWin }, { name: 'red', team: red, win: !blueWin }];
  c.matches.push({ id: n, raw: match, blue, red, winner: blueWin ? 'blue' : 'red' });

  for (const side of sides) {
    const opp = side.name === 'blue' ? red : blue;
    for (const pl of side.team) updatePlayerFromMatch(c, pl, side, opp, n);
    addSameSidePairs(c, side.team, side.win);
    addTeam(c, side.team, side.win);
  }

  addOpponentPairs(c, blue, red, blueWin);
  c.timeline.push({ match: n, ranking: Object.values(c.players).map(p => ({ name: p.name, mmr: p.currentMMR, wins: p.wins, losses: p.losses })).sort((a, b) => b.mmr - a.mmr) });
}

function updatePlayerFromMatch(c, pl, side, opp, n) {
  const p = c.players[pl.name] ??= emptyPlayer(pl.name);
  const delta = +(pl.lp ?? pl.mmr ?? 0);
  const role = normalizeRole(pl.role || pl.funcao);
  p.currentMMR += delta;
  p[side.win ? 'wins' : 'losses']++;
  p.matches.push(n);
  p.history.push({ match: n, result: side.win ? 'W' : 'L', role, delta, mmr: p.currentMMR, side: side.name });
  p.mmrHistory.push(p.currentMMR);
  p.records.bestGain = Math.max(p.records.bestGain, delta);
  p.records.worstLoss = Math.min(p.records.worstLoss, delta);
  side.win ? (p.streaks.currentWin++, p.streaks.currentLoss = 0) : (p.streaks.currentLoss++, p.streaks.currentWin = 0);
  p.streaks.bestWin = Math.max(p.streaks.bestWin, p.streaks.currentWin);
  p.streaks.bestLoss = Math.max(p.streaks.bestLoss, p.streaks.currentLoss);
  inc(p.roles, role, side.win);
  side.team.filter(t => t.name !== pl.name).forEach(t => inc(p.teammates, t.name, side.win));
  opp.forEach(o => inc(p.opponents, o.name, side.win));
}

function addSameSidePairs(c, team, win) {
  for (let i = 0; i < team.length; i++) {
    for (let j = i + 1; j < team.length; j++) {
      addDuo(c, team[i].name, team[j].name, win);
      addH2H(c, team[i].name, team[j].name, true, win);
    }
  }
}

function addOpponentPairs(c, blue, red, blueWin) {
  for (const b of blue) {
    for (const r of red) {
      const [first] = pairKey(b.name, r.name).split('::');
      addH2H(c, b.name, r.name, false, first === b.name ? blueWin : !blueWin);
    }
  }
}

function addH2H(c, a, b, same, win) {
  const k = pairKey(a, b);
  c.headToHead[k] ??= { players: k.split('::'), same: statObj(), opposite: statObj() };
  const o = same ? c.headToHead[k].same : c.headToHead[k].opposite;
  o.matches++;
  win ? o.wins++ : o.losses++;
  o.winrate = o.wins / o.matches * 100;
}

function addDuo(c, a, b, win) {
  const k = pairKey(a, b);
  c.duos[k] ??= { players: k.split('::'), ...statObj() };
  const d = c.duos[k];
  d.matches++;
  win ? d.wins++ : d.losses++;
  d.winrate = d.wins / d.matches * 100;
}

function addTeam(c, t, win) {
  const k = teamKey(t);
  c.teams[k] ??= { players: k.split('::'), ...statObj() };
  const q = c.teams[k];
  q.matches++;
  win ? q.wins++ : q.losses++;
  q.winrate = q.wins / q.matches * 100;
}

function buildStats(c) {
  const ps = Object.values(c.players), deltas = ps.flatMap(p => p.history.map(h => h.delta));
  return { totalMatches: c.matches.length, totalPlayers: ps.length, initialMMR: INITIAL_MMR, maxMMR: Math.max(...ps.map(p => p.finalMMR), 0), minMMR: Math.min(...ps.map(p => p.finalMMR), 0), bestGain: Math.max(...deltas, 0), worstLoss: Math.min(...deltas, 0), roles: ROLES.map(r => ({ role: r, matches: ps.reduce((s, p) => s + (p.roles[r]?.matches || 0), 0) })) };
}
