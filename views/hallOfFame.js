import { card } from '../components/card.js';
import { escapeHtml, fmt, pct } from '../js/utils.js';

export function hallOfFame(c) {
  const ps = c.ranking;
  const winrateLeader = ps.slice().sort((a, b) => b.winrate - a.winrate)[0];
  const bestD = Object.values(c.duos).sort((a, b) => b.winrate - a.winrate || b.matches - a.matches)[0];
  const bestT = Object.values(c.teams).sort((a, b) => b.winrate - a.winrate || b.matches - a.matches)[0];
  const item = (t, v) => card(t, `<p class="value gold">${escapeHtml(v)}</p>`);
  const playerName = p => p?.name || '-';
  const first = mmr => playerName(ps.find(p => p.mmrHistory.some(v => v >= mmr)));
  const bestGainPlayer = playerName(ps.find(p => p.records.bestGain === c.statistics.bestGain));
  const worstLossPlayer = playerName(ps.find(p => p.records.worstLoss === c.statistics.worstLoss));

  return `<div class="page-head"><h1>Hall da Fama</h1></div><div class="grid three">
    ${item('Maior MMR', `${playerName(ps[0])} · ${fmt(ps[0]?.finalMMR)}`)}
    ${item('Maior ganho', `${bestGainPlayer} · ${fmt(c.statistics.bestGain)}`)}
    ${item('Maior perda', `${worstLossPlayer} · ${fmt(c.statistics.worstLoss)}`)}
    ${item('Melhor winrate', winrateLeader ? `${winrateLeader.name} · ${pct(winrateLeader.winrate)}` : '-')}
    ${item('Mais vitórias', playerName(ps.slice().sort((a, b) => b.wins - a.wins)[0]))}
    ${item('Mais derrotas', playerName(ps.slice().sort((a, b) => b.losses - a.losses)[0]))}
    ${item('Melhor dupla', bestD ? `${bestD.players.join(' + ')} · ${pct(bestD.winrate)}` : '-')}
    ${item('Melhor quinteto', bestT ? `${bestT.players.join(', ')} · ${pct(bestT.winrate)}` : '-')}
    ${item('Maior sequência V', playerName(ps.slice().sort((a, b) => b.streaks.bestWin - a.streaks.bestWin)[0]))}
    ${item('Maior sequência D', playerName(ps.slice().sort((a, b) => b.streaks.bestLoss - a.streaks.bestLoss)[0]))}
    ${item('Mais versátil', playerName(ps.slice().sort((a, b) => Object.keys(b.roles).length - Object.keys(a.roles).length)[0]))}
    ${[1000, 1500, 2000, 2500, 3000].map(m => item(`Primeiro ${m} MMR`, first(m))).join('')}
    ${item('Maior evolução', playerName(ps.slice().sort((a, b) => (b.finalMMR - b.initialMMR) - (a.finalMMR - a.initialMMR))[0]))}
    ${item('Maior queda', playerName(ps.slice().sort((a, b) => (a.finalMMR - a.initialMMR) - (b.finalMMR - b.initialMMR))[0]))}
  </div>`;
}
