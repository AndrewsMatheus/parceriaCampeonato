import { createClient } from '@supabase/supabase-js';
import { buildChampionship } from '@/domain/championship/championship-engine';
import type { Championship, RawMatch, RawRankingEntry, Role } from '@/domain/championship/types';

type SupabasePlayerRow = {
  name: string;
  avatar_url: string | null;
  initial_mmr: number;
  final_mmr: number;
  reported_rank: number | null;
  reported_wins: number;
  reported_losses: number;
  reported_winrate: number;
};

type SupabaseMatchPlayerRow = {
  side: 'blue' | 'red';
  role: Role;
  lp_delta: number;
  champion_name?: string | null;
  champion_icon_url?: string | null;
  level?: number | null;
  rank_label?: string | null;
  kills?: number | null;
  deaths?: number | null;
  assists?: number | null;
  creep_score?: number | null;
  gold_earned?: number | null;
  kill_participation?: number | null;
  vision_score?: number | null;
  damage_dealt_champions?: number | null;
  damage_taken?: number | null;
  turret_damage?: number | null;
  wards_placed?: number | null;
  wards_killed?: number | null;
  summoner_spells?: string[] | null;
  items?: string[] | null;
  runes?: string[] | null;
  players: {
    name: string;
  } | null;
};

type SupabaseMatchRow = {
  match_number: number;
  winner_side: 'blue' | 'red';
  queue_type?: string | null;
  map_name?: string | null;
  duration_seconds?: number | null;
  played_at?: string | null;
  game_id?: string | null;
  blue_kills?: number | null;
  red_kills?: number | null;
  blue_towers?: number | null;
  red_towers?: number | null;
  blue_dragons?: number | null;
  red_dragons?: number | null;
  blue_barons?: number | null;
  red_barons?: number | null;
  blue_heralds?: number | null;
  red_heralds?: number | null;
  blue_inhibitors?: number | null;
  red_inhibitors?: number | null;
  blue_bans?: string[] | null;
  red_bans?: string[] | null;
  match_players: SupabaseMatchPlayerRow[];
};

type SupabaseChampionshipRow = {
  players: SupabasePlayerRow[];
  matches: SupabaseMatchRow[];
};

function createEmptyChampionship(): Championship {
  return buildChampionship([], []);
}

function createSupabaseClient() {
  const supabaseUrl = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const supabaseKey = process.env.NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY;

  if (!supabaseUrl || !supabaseKey) {
    throw new Error('Configure NEXT_PUBLIC_SUPABASE_URL e NEXT_PUBLIC_SUPABASE_PUBLISHABLE_KEY para carregar os dados do campeonato.');
  }

  return createClient(supabaseUrl, supabaseKey, {
    auth: {
      persistSession: false,
    },
  });
}

function toRawRanking(players: SupabasePlayerRow[]): RawRankingEntry[] {
  return players.map(player => ({
    name: player.name,
    avatar_url: player.avatar_url,
    initialMMR: player.initial_mmr,
    finalMMR: player.final_mmr,
    rank: player.reported_rank ?? undefined,
    wins: player.reported_wins,
    losses: player.reported_losses,
    winrate: player.reported_winrate,
  }));
}

function toRawMatches(matches: SupabaseMatchRow[]): RawMatch[] {
  const roleOrder: Role[] = ['TOP', 'JNG', 'MID', 'ADC', 'SUP', 'UNK'];
  const byRoleOrder = (playerA: SupabaseMatchPlayerRow, playerB: SupabaseMatchPlayerRow) => (
    roleOrder.indexOf(playerA.role) - roleOrder.indexOf(playerB.role)
  );
  const toRawPlayer = (player: SupabaseMatchPlayerRow) => ({
    assists: player.assists ?? undefined,
    champion: player.champion_name ?? undefined,
    championIconUrl: player.champion_icon_url,
    creepScore: player.creep_score ?? undefined,
    damageDealtChampions: player.damage_dealt_champions ?? undefined,
    damageTaken: player.damage_taken ?? undefined,
    deaths: player.deaths ?? undefined,
    goldEarned: player.gold_earned ?? undefined,
    items: player.items ?? undefined,
    killParticipation: player.kill_participation ?? undefined,
    kills: player.kills ?? undefined,
    level: player.level ?? undefined,
    lp: player.lp_delta,
    player: player.players?.name || 'Sem nome',
    rankLabel: player.rank_label,
    role: player.role,
    runes: player.runes ?? undefined,
    summonerSpells: player.summoner_spells ?? undefined,
    turretDamage: player.turret_damage ?? undefined,
    visionScore: player.vision_score ?? undefined,
    wardsKilled: player.wards_killed ?? undefined,
    wardsPlaced: player.wards_placed ?? undefined,
  });

  return matches
    .slice()
    .sort((matchA, matchB) => matchA.match_number - matchB.match_number)
    .map(match => ({
      blueBans: match.blue_bans ?? undefined,
      blueBarons: match.blue_barons ?? undefined,
      blueDragons: match.blue_dragons ?? undefined,
      blueHeralds: match.blue_heralds ?? undefined,
      blueInhibitors: match.blue_inhibitors ?? undefined,
      blueKills: match.blue_kills ?? undefined,
      blueTowers: match.blue_towers ?? undefined,
      durationSeconds: match.duration_seconds ?? undefined,
      gameId: match.game_id ?? undefined,
      matchNumber: match.match_number,
      mapName: match.map_name ?? 'Summoner\'s Rift',
      playedAt: match.played_at ?? undefined,
      queueType: match.queue_type ?? 'Personalizada',
      redBans: match.red_bans ?? undefined,
      redBarons: match.red_barons ?? undefined,
      redDragons: match.red_dragons ?? undefined,
      redHeralds: match.red_heralds ?? undefined,
      redInhibitors: match.red_inhibitors ?? undefined,
      redKills: match.red_kills ?? undefined,
      redTowers: match.red_towers ?? undefined,
      winner: match.winner_side,
      teams: {
        blue: match.match_players
          .filter(player => player.side === 'blue')
          .sort(byRoleOrder)
          .map(toRawPlayer),
        red: match.match_players
          .filter(player => player.side === 'red')
          .sort(byRoleOrder)
          .map(toRawPlayer),
      },
    }));
}

function isEmptyDatabaseError(error: { code?: string; message?: string } | null): boolean {
  if (!error) return false;

  return (
    error.code === 'PGRST116' ||
    error.code === 'PGRST205' ||
    Boolean(error.message?.includes("Could not find the table 'public.championships'"))
  );
}

function isMissingAvatarColumnError(error: { message?: string } | null): boolean {
  return Boolean(error?.message?.includes('avatar_url'));
}

function isMissingScoreboardColumnError(error: { message?: string } | null): boolean {
  const message = error?.message ?? '';

  return [
    'queue_type',
    'champion_name',
    'duration_seconds',
    'blue_kills',
    'summoner_spells',
  ].some(column => message.includes(column));
}

function championshipSelect(includeAvatarUrl: boolean, includeScoreboardFields: boolean): string {
  const matchScoreboardFields = includeScoreboardFields
    ? `
      queue_type,
      map_name,
      duration_seconds,
      played_at,
      game_id,
      blue_kills,
      red_kills,
      blue_towers,
      red_towers,
      blue_dragons,
      red_dragons,
      blue_barons,
      red_barons,
      blue_heralds,
      red_heralds,
      blue_inhibitors,
      red_inhibitors,
      blue_bans,
      red_bans,
    `
    : '';
  const matchPlayerScoreboardFields = includeScoreboardFields
    ? `
        champion_name,
        champion_icon_url,
        level,
        rank_label,
        kills,
        deaths,
        assists,
        creep_score,
        gold_earned,
        kill_participation,
        vision_score,
        damage_dealt_champions,
        damage_taken,
        turret_damage,
        wards_placed,
        wards_killed,
        summoner_spells,
        items,
        runes,
    `
    : '';

  return `
    players (
      name,
      ${includeAvatarUrl ? 'avatar_url,' : ''}
      initial_mmr,
      final_mmr,
      reported_rank,
      reported_wins,
      reported_losses,
      reported_winrate
    ),
    matches (
      match_number,
      winner_side,
      ${matchScoreboardFields}
      match_players (
        side,
        role,
        lp_delta,
        ${matchPlayerScoreboardFields}
        players (
          name
        )
      )
    )
  `;
}

export async function getChampionshipFromSupabase(slug = 'parceria-vive-2026-2'): Promise<Championship> {
  const supabase = createSupabaseClient();

  const queryChampionship = (includeAvatarUrl: boolean, includeScoreboardFields: boolean) => supabase
    .from('championships')
    .select(championshipSelect(includeAvatarUrl, includeScoreboardFields))
    .eq('slug', slug)
    .maybeSingle<SupabaseChampionshipRow>();

  let includeAvatarUrl = true;
  let includeScoreboardFields = true;
  let { data, error } = await queryChampionship(includeAvatarUrl, includeScoreboardFields);

  if (isMissingAvatarColumnError(error)) {
    includeAvatarUrl = false;
    const retry = await queryChampionship(includeAvatarUrl, includeScoreboardFields);

    data = retry.data;
    error = retry.error;
  }

  if (isMissingScoreboardColumnError(error)) {
    includeScoreboardFields = false;
    const retry = await queryChampionship(includeAvatarUrl, includeScoreboardFields);

    data = retry.data;
    error = retry.error;
  }

  if (error) {
    if (isEmptyDatabaseError(error)) {
      return createEmptyChampionship();
    }

    throw new Error(`Erro ao carregar dados do Supabase: ${error.message}`);
  }

  if (!data) {
    return createEmptyChampionship();
  }

  return buildChampionship(toRawRanking(data.players ?? []), toRawMatches(data.matches ?? []));
}
