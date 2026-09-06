export type Role = 'TOP' | 'JNG' | 'MID' | 'ADC' | 'SUP' | 'UNK';

export type MatchSide = 'blue' | 'red';

export type RawRankingEntry = {
  name?: string;
  player?: string;
  jogador?: string;
  nome?: string;
  rank?: number | string;
  position?: number | string;
  posicao?: number | string;
  finalMMR?: number | string;
  mmrFinal?: number | string;
  mmr?: number | string;
  currentMMR?: number | string;
  wins?: number | string;
  vitorias?: number | string;
  losses?: number | string;
  derrotas?: number | string;
  winrate?: number | string;
  avatarUrl?: string | null;
  avatar_url?: string | null;
};

export type RankingPayload =
  | RawRankingEntry[]
  | {
      championship?: {
        players?: RawRankingEntry[];
      };
      players?: RawRankingEntry[];
    };

export type RawPlayerEntry = {
  name?: string;
  player?: string;
  jogador?: string;
  nome?: string;
  champion?: string;
  championIconUrl?: string | null;
  level?: number | string;
  rankLabel?: string | null;
  role?: string;
  funcao?: string;
  cargo?: string;
  lp?: number | string;
  mmr?: number | string;
  delta?: number | string;
  kills?: number | string;
  deaths?: number | string;
  assists?: number | string;
  creepScore?: number | string;
  cs?: number | string;
  goldEarned?: number | string;
  gold?: number | string;
  killParticipation?: number | string;
  visionScore?: number | string;
  damageDealtChampions?: number | string;
  damageTaken?: number | string;
  turretDamage?: number | string;
  wardsPlaced?: number | string;
  wardsKilled?: number | string;
  summonerSpells?: string[];
  items?: string[];
  runes?: string[];
};

export type RawMatch = {
  matchNumber?: number | string;
  winner?: string;
  vencedor?: string;
  queueType?: string;
  mapName?: string;
  durationSeconds?: number | string;
  playedAt?: string;
  gameId?: string;
  blueKills?: number | string;
  redKills?: number | string;
  blueTowers?: number | string;
  redTowers?: number | string;
  blueDragons?: number | string;
  redDragons?: number | string;
  blueBarons?: number | string;
  redBarons?: number | string;
  blueHeralds?: number | string;
  redHeralds?: number | string;
  blueInhibitors?: number | string;
  redInhibitors?: number | string;
  blueBans?: string[];
  redBans?: string[];
  blue?: RawPlayerEntry[];
  red?: RawPlayerEntry[];
  blueTeam?: RawPlayerEntry[];
  redTeam?: RawPlayerEntry[];
  teams?: {
    blue?: RawPlayerEntry[];
    red?: RawPlayerEntry[];
  };
};

export type PlayerMatchEntry = {
  name: string;
  champion?: string;
  championIconUrl?: string | null;
  level?: number;
  rankLabel?: string | null;
  role: Role;
  lp: number;
  kills?: number;
  deaths?: number;
  assists?: number;
  creepScore?: number;
  goldEarned?: number;
  killParticipation?: number;
  visionScore?: number;
  damageDealtChampions?: number;
  damageTaken?: number;
  turretDamage?: number;
  wardsPlaced?: number;
  wardsKilled?: number;
  summonerSpells?: string[];
  items?: string[];
  runes?: string[];
};

export type StatRecord = {
  matches: number;
  wins: number;
  losses: number;
  winrate: number;
};

export type ChampionStatRecord = StatRecord & {
  iconUrl?: string | null;
};

export type PlayerHistoryEntry = {
  match: number;
  result: 'W' | 'L';
  role: Role;
  champion?: string;
  championIconUrl?: string | null;
  delta: number;
  mmr: number;
  side: MatchSide;
};

export type PlayerRecords = {
  bestGain: number;
  worstLoss: number;
  reportedWins?: number;
  reportedLosses?: number;
  reportedWinrate?: number;
};

export type Player = {
  name: string;
  avatarUrl?: string | null;
  rank: number;
  initialMMR: number;
  currentMMR: number;
  finalMMR: number;
  wins: number;
  losses: number;
  winrate: number;
  matches: number[];
  roles: Record<string, StatRecord>;
  champions: Record<string, ChampionStatRecord>;
  teammates: Record<string, StatRecord>;
  opponents: Record<string, StatRecord>;
  history: PlayerHistoryEntry[];
  mmrHistory: number[];
  streaks: {
    currentWin: number;
    currentLoss: number;
    bestWin: number;
    bestLoss: number;
  };
  records: PlayerRecords;
};

export type ProcessedMatch = {
  id: number;
  raw: RawMatch;
  blue: PlayerMatchEntry[];
  red: PlayerMatchEntry[];
  winner: MatchSide;
};

export type HeadToHeadEntry = {
  players: string[];
  same: StatRecord;
  opposite: StatRecord;
};

export type GroupStat = StatRecord & {
  players: string[];
};

export type TimelineEntry = {
  match: number;
  ranking: Array<{
    name: string;
    mmr: number;
    wins: number;
    losses: number;
  }>;
};

export type ChampionshipStatistics = {
  totalMatches: number;
  totalPlayers: number;
  initialMMR: number;
  maxMMR: number;
  minMMR: number;
  bestGain: number;
  worstLoss: number;
  roles: Array<{
    role: string;
    matches: number;
  }>;
};

export type Championship = {
  players: Record<string, Player>;
  ranking: Player[];
  matches: ProcessedMatch[];
  headToHead: Record<string, HeadToHeadEntry>;
  duos: Record<string, GroupStat>;
  teams: Record<string, GroupStat>;
  timeline: TimelineEntry[];
  statistics: ChampionshipStatistics;
};
