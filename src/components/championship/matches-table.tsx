'use client';

import { useRouter } from 'next/navigation';
import { ChampionPortrait } from '@/components/championship/champion-portrait';
import { MatchManagementDialogs } from '@/components/championship/match-management-dialogs';
import { PlayerAvatar } from '@/components/championship/player-avatar';
import { formatNumber } from '@/domain/championship/formatters';
import type { Championship, PlayerMatchEntry, ProcessedMatch } from '@/domain/championship/types';

function MatchPlayerSummary({
  championship,
  player,
  side,
}: {
  championship: Championship;
  player: PlayerMatchEntry;
  side: 'blue' | 'red';
}) {
  const profile = championship.players[player.name];

  return (
    <span className={`match-summary-player is-${side}`}>
      <ChampionPortrait champion={player.champion} iconUrl={player.championIconUrl} size="default" />
      <span className="match-summary-copy">
        <strong>{player.champion || 'Campeão pendente'}</strong>
        <small>
          <PlayerAvatar name={player.name} size="sm" src={profile?.avatarUrl} />
          {player.name}
        </small>
      </span>
      <span className="match-summary-role">{player.role}</span>
    </span>
  );
}

function TeamSummary({
  championship,
  players,
  side,
}: {
  championship: Championship;
  players: PlayerMatchEntry[];
  side: 'blue' | 'red';
}) {
  return (
    <div className={`match-summary-team is-${side}`}>
      {players.map(player => (
        <MatchPlayerSummary championship={championship} key={`${side}-${player.name}`} player={player} side={side} />
      ))}
    </div>
  );
}

export function MatchesTable({ championship, matches }: { championship: Championship; matches: ProcessedMatch[] }) {
  const router = useRouter();

  return (
    <>
      <div className="page-head">
        <h1>Partidas</h1>
        <MatchManagementDialogs />
      </div>
      <div className="matches-list" aria-label="Lista de partidas">
        {matches.reverse().map(match => (
          <button className="match-list-row" key={match.id} onClick={() => router.push(`/matches/${match.id}`)} type="button">
            <span className="match-list-meta">
              <strong>{formatNumber(match.id)}</strong>
              <span className={`match-winner is-${match.winner}`}>
                {match.winner === 'blue' ? 'Azul' : 'Vermelho'}
              </span>
            </span>
            <span className="match-list-teams">
              <TeamSummary championship={championship} players={match.blue} side="blue" />
              <TeamSummary championship={championship} players={match.red} side="red" />
            </span>
          </button>
        ))}
      </div>
    </>
  );
}
