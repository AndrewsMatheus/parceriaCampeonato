import type { MatchSide, RankingPayload, RawMatch, RawPlayerEntry, RawRankingEntry, Role } from './types';

export function extractRanking(data: RankingPayload): RawRankingEntry[] {
  if (Array.isArray(data)) return data;
  if (data.championship?.players) return data.championship.players;
  if (data.players) return data.players;

  return [];
}

export function normalizeRole(role: string | undefined): Role {
  const normalized = String(role || 'UNK')
    .toUpperCase()
    .replace('JUNGLE', 'JNG')
    .replace('BOTTOM', 'ADC')
    .replace('UTILITY', 'SUP');

  if (['TOP', 'JNG', 'MID', 'ADC', 'SUP'].includes(normalized)) {
    return normalized as Role;
  }

  return 'UNK';
}

export function normalizePlayerEntry(row: RawPlayerEntry) {
  const toNumber = (value: number | string | undefined) => {
    const number = Number(value);

    return Number.isFinite(number) ? number : undefined;
  };
  const numberOrUndefined = (value: number | string | undefined) => {
    const number = toNumber(value);

    return number === undefined ? undefined : number;
  };

  return {
    assists: numberOrUndefined(row.assists),
    champion: row.champion,
    championIconUrl: row.championIconUrl,
    creepScore: numberOrUndefined(row.creepScore ?? row.cs),
    damageDealtChampions: numberOrUndefined(row.damageDealtChampions),
    damageTaken: numberOrUndefined(row.damageTaken),
    deaths: numberOrUndefined(row.deaths),
    goldEarned: numberOrUndefined(row.goldEarned ?? row.gold),
    items: row.items,
    killParticipation: numberOrUndefined(row.killParticipation),
    kills: numberOrUndefined(row.kills),
    level: numberOrUndefined(row.level),
    name: row.name || row.player || row.jogador || row.nome || 'Sem nome',
    rankLabel: row.rankLabel,
    role: normalizeRole(row.role || row.funcao || row.cargo),
    runes: row.runes,
    summonerSpells: row.summonerSpells,
    lp: Number(row.lp ?? row.mmr ?? row.delta ?? 0),
    turretDamage: numberOrUndefined(row.turretDamage),
    visionScore: numberOrUndefined(row.visionScore),
    wardsKilled: numberOrUndefined(row.wardsKilled),
    wardsPlaced: numberOrUndefined(row.wardsPlaced),
  };
}

export function getSide(match: RawMatch, side: MatchSide): RawPlayerEntry[] {
  return match[side] || match[`${side}Team`] || match.teams?.[side] || [];
}

export function winnerSide(match: RawMatch): MatchSide | string {
  const winner = String(match.winner || match.vencedor || '').toLowerCase();

  if (['blue', 'azul'].includes(winner)) return 'blue';
  if (['red', 'vermelho'].includes(winner)) return 'red';

  return winner;
}
