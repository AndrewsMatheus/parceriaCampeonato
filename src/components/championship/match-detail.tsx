import Link from 'next/link';
import { ChampionPortrait } from '@/components/championship/champion-portrait';
import { MatchEditDialog } from '@/components/championship/match-edit-dialog';
import { formatNumber, formatPercent } from '@/domain/championship/formatters';
import { getChampionIconUrl } from '@/domain/championship/champion-assets';
import type { Championship, MatchSide, PlayerMatchEntry } from '@/domain/championship/types';

type MatchDetailProps = {
  championship: Championship;
  match: Championship['matches'][number];
};

type TeamSummary = {
  assists: number;
  deaths: number;
  kills: number;
  players: PlayerMatchEntry[];
  resultLabel: 'Vitória' | 'Derrota';
  status: 'victory' | 'defeat';
};

type TeamObjective = {
  blue?: number | string;
  label: string;
  red?: number | string;
};

type MatchObjectiveKey = 'blue' | 'red';

function sumStat(players: PlayerMatchEntry[], key: 'assists' | 'deaths' | 'kills') {
  return players.reduce((sum, player) => sum + (player[key] ?? 0), 0);
}

function toNumber(value?: number | string) {
  const number = Number(value);

  return Number.isFinite(number) ? number : undefined;
}

function hasKda(players: PlayerMatchEntry[]) {
  return players.some(player => player.kills !== undefined || player.deaths !== undefined || player.assists !== undefined);
}

function formatDuration(seconds?: number | string) {
  const duration = toNumber(seconds);

  if (!duration) return '';

  const minutes = Math.floor(duration / 60);
  const remainingSeconds = String(duration % 60).padStart(2, '0');

  return `${minutes}:${remainingSeconds}`;
}

function formatTeamLine(summary: TeamSummary) {
  if (!hasKda(summary.players)) {
    return 'Placar pendente';
  }

  return `${formatNumber(summary.kills)} / ${formatNumber(summary.deaths)} / ${formatNumber(summary.assists)}`;
}

function formatObjectiveValue(value?: number | string) {
  return formatNumber(toNumber(value) ?? 0);
}

function MatchObjectiveStrip({ objectives, side }: { objectives: TeamObjective[]; side: MatchObjectiveKey }) {
  const visibleObjectives = objectives.filter(objective => objective.blue !== undefined || objective.red !== undefined);

  if (visibleObjectives.length === 0) return null;

  return (
    <span className="match-board-objective-strip">
      {visibleObjectives.map(objective => (
        <span key={objective.label} title={objective.label}>
          <i>{objective.label.slice(0, 1)}</i>
          {formatObjectiveValue(objective[side])}
        </span>
      ))}
    </span>
  );
}

function getTeamSummary(match: Championship['matches'][number], side: MatchSide): TeamSummary {
  const players = match[side];
  const oppositeSide = side === 'blue' ? 'red' : 'blue';
  const rawKills = toNumber(match.raw[`${side}Kills`]);
  const rawDeaths = toNumber(match.raw[`${oppositeSide}Kills`]);

  return {
    assists: sumStat(players, 'assists'),
    deaths: rawDeaths ?? sumStat(players, 'deaths'),
    kills: rawKills ?? sumStat(players, 'kills'),
    players,
    resultLabel: match.winner === side ? 'Vitória' : 'Derrota',
    status: match.winner === side ? 'victory' : 'defeat',
  };
}

function getPlayerMeta(championship: Championship, player: PlayerMatchEntry) {
  const profile = championship.players[player.name];

  return {
    rank: profile?.rank,
  };
}

function isUrl(value: string) {
  return value.startsWith('http') || value.startsWith('/');
}

function AssetSlots({ assets, label }: { assets?: string[]; label: string }) {
  const filledAssets = assets?.filter(Boolean) ?? [];

  if (filledAssets.length === 0) return null;

  return (
    <div aria-label={label} className="match-board-assets">
      {filledAssets.map((asset, index) => (
        <span key={`${asset}-${index}`} title={asset}>
          {isUrl(asset) ? <img alt="" src={asset} /> : asset.slice(0, 2).toUpperCase()}
        </span>
      ))}
    </div>
  );
}

function PlayerSpells({ player }: { player: PlayerMatchEntry }) {
  return <AssetSlots assets={player.summonerSpells} label={`Feitiços de ${player.name}`} />;
}

function MatchItems({ align, player }: { align: 'left' | 'right'; player: PlayerMatchEntry }) {
  return (
    <div className={`match-board-loadout is-${align}`}>
      <AssetSlots assets={player.items} label={`Itens de ${player.name}`} />
      <AssetSlots assets={player.runes} label={`Runas de ${player.name}`} />
    </div>
  );
}

function MatchPlayerBlock({
  align,
  championship,
  player,
}: {
  align: 'left' | 'right';
  championship: Championship;
  player: PlayerMatchEntry;
}) {
  const meta = getPlayerMeta(championship, player);

  return (
    <Link className={`match-board-player is-${align}`} href={`/player/${encodeURIComponent(player.name)}`}>
      {align === 'left' ? (
        <div className="match-board-player-media">
          <ChampionPortrait champion={player.champion} iconUrl={player.championIconUrl} size="lg" />
          {player.level ? <span className="match-board-level">{player.level}</span> : null}
          <PlayerSpells player={player} />
        </div>
      ) : null}
      <div className="match-board-player-copy">
        <strong>{player.name}</strong>
        <span>{player.rankLabel || (meta.rank ? `Ranking #${meta.rank}` : 'Sem ranking')}</span>
        <b className={`match-board-pdl ${player.lp >= 0 ? 'win' : 'loss'}`}>{formatNumber(player.lp)} PDL</b>
      </div>
      {align === 'right' ? (
        <div className="match-board-player-media">
          <ChampionPortrait champion={player.champion} iconUrl={player.championIconUrl} size="lg" />
          {player.level ? <span className="match-board-level">{player.level}</span> : null}
          <PlayerSpells player={player} />
        </div>
      ) : null}
    </Link>
  );
}

function MatchPlayerStats({ align, player }: { align: 'left' | 'right'; player: PlayerMatchEntry }) {
  const showKda = player.kills !== undefined || player.deaths !== undefined || player.assists !== undefined;

  return (
    <div className={`match-board-stats is-${align}`}>
      {showKda ? (
        <>
        <div className="match-board-kda">
          <strong className="win">{formatNumber(player.kills ?? 0)}</strong>
          <span>/</span>
          <strong className="loss">{formatNumber(player.deaths ?? 0)}</strong>
          <span>/</span>
          <strong className="gold">{formatNumber(player.assists ?? 0)}</strong>
        </div>
        <span>
          {player.creepScore !== undefined ? `${formatNumber(player.creepScore)} farm` : 'Farm pendente'}
          {player.goldEarned !== undefined ? ` - ${formatNumber(player.goldEarned)} ouro` : ''}
        </span>
      <span>
          {player.killParticipation !== undefined ? `${formatPercent(player.killParticipation)} part. abates` : 'Part. abates pendente'}
          {player.visionScore !== undefined ? ` - Visão ${formatNumber(player.visionScore)}` : ''}
        </span>
        </>
      ) : null}
    </div>
  );
}

function MatchBoardRow({
  blue,
  championship,
  red,
}: {
  blue?: PlayerMatchEntry;
  championship: Championship;
  red?: PlayerMatchEntry;
}) {
  return (
    <div className="match-board-row">
      {blue ? <MatchPlayerBlock align="left" championship={championship} player={blue} /> : <span />}
      {blue ? <MatchPlayerStats align="left" player={blue} /> : <span />}
      {blue ? <MatchItems align="left" player={blue} /> : <span />}
      {red ? <MatchItems align="right" player={red} /> : <span />}
      {red ? <MatchPlayerStats align="right" player={red} /> : <span />}
      {red ? <MatchPlayerBlock align="right" championship={championship} player={red} /> : <span />}
    </div>
  );
}

function MatchBans({ bans, side }: { bans?: string[]; side: MatchSide }) {
  const visibleBans = bans?.filter(Boolean) ?? [];
  const placeholders = Array.from({ length: Math.max(5 - visibleBans.length, 0) }, (_, index) => `placeholder-${index}`);

  return (
    <div className={`match-board-bans is-${side}`}>
      <span>Banimentos:</span>
      {visibleBans.map((ban, index) => (
        <i key={`${ban}-${index}`} title={ban}>
          <img alt="" src={isUrl(ban) ? ban : getChampionIconUrl(ban)} />
        </i>
      ))}
      {placeholders.map(placeholder => (
        <i aria-hidden="true" key={placeholder} />
      ))}
    </div>
  );
}

export function MatchDetail({ championship, match }: MatchDetailProps) {
  const blueSummary = getTeamSummary(match, 'blue');
  const redSummary = getTeamSummary(match, 'red');
  const duration = formatDuration(match.raw.durationSeconds);
  const objectives: TeamObjective[] = [
    { blue: match.raw.blueTowers, label: 'Torres', red: match.raw.redTowers },
    { blue: match.raw.blueDragons, label: 'Dragões', red: match.raw.redDragons },
    { blue: match.raw.blueBarons, label: 'Barões', red: match.raw.redBarons },
    { blue: match.raw.blueHeralds, label: 'Arautos', red: match.raw.redHeralds },
    { blue: match.raw.blueInhibitors, label: 'Inibidores', red: match.raw.redInhibitors },
  ];
  const rows = Array.from({ length: Math.max(match.blue.length, match.red.length) }, (_, index) => ({
    blue: match.blue[index],
    red: match.red[index],
  }));

  return (
    <>
      <MatchEditDialog championship={championship} match={match} />
      <div className="match-board">
      <div className="match-board-top">
        <div className={`match-board-result is-blue is-${blueSummary.status}`}>
          <strong>{blueSummary.resultLabel}</strong>
          <span>{formatTeamLine(blueSummary)}</span>
          <MatchObjectiveStrip objectives={objectives} side="blue" />
        </div>

        <div className="match-board-title">
          <h1>
            {match.raw.queueType || 'Personalizada'}
            {duration ? ` (${duration})` : ''}
          </h1>
          <p>{match.raw.mapName || 'Summoner\'s Rift'}{match.raw.gameId ? ` - ID da partida ${match.raw.gameId}` : ''}</p>
        </div>

        <div className={`match-board-result is-red is-${redSummary.status}`}>
          <MatchObjectiveStrip objectives={objectives} side="red" />
          <span>{formatTeamLine(redSummary)}</span>
          <strong>{redSummary.resultLabel}</strong>
        </div>
      </div>

      <div className="match-board-body">
        {rows.map(row => (
          <MatchBoardRow
            blue={row.blue}
            championship={championship}
            key={`${row.blue?.name || 'blue'}-${row.red?.name || 'red'}`}
            red={row.red}
          />
        ))}
      </div>

      <div className="match-board-footer">
        <MatchBans bans={match.raw.blueBans} side="blue" />
        <MatchBans bans={match.raw.redBans} side="red" />
      </div>
      </div>
    </>
  );
}
