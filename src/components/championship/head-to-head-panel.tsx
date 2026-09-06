'use client';

import { useMemo, useState } from 'react';
import { PlayerAvatar } from '@/components/championship/player-avatar';
import { DataTable } from '@/components/ui/data-table';
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '@/components/ui/select';
import { formatNumber, formatPercent } from '@/domain/championship/formatters';
import { pairKey } from '@/domain/championship/keys';
import type { Championship, HeadToHeadEntry, Player, StatRecord } from '@/domain/championship/types';

type HeadToHeadRow = {
  opposite: StatRecord;
  playerA: string;
  playerB: string;
  players: string;
  same: StatRecord;
  totalMatches: number;
};

function recordLabel(record: StatRecord) {
  return `${formatNumber(record.wins)}V / ${formatNumber(record.losses)}D`;
}

function recordBalance(record: StatRecord) {
  return record.wins - record.losses;
}

function playerProfile(championship: Championship, playerName: string): Player | undefined {
  return championship.players[playerName];
}

function PlayerPill({ championship, playerName }: { championship: Championship; playerName: string }) {
  const player = playerProfile(championship, playerName);

  return (
    <div className="h2h-player-pill">
      <PlayerAvatar name={playerName} size="sm" src={player?.avatarUrl} />
      <span>{playerName}</span>
    </div>
  );
}

function H2hStatCard({
  description,
  record,
  title,
}: {
  description: string;
  record: StatRecord;
  title: string;
}) {
  return (
    <div className="h2h-stat">
      <div className="muted">{title}</div>
      <div className="h2h-stat-value">{recordLabel(record)}</div>
      <div className="gold">{formatPercent(record.winrate)}</div>
      <div className="muted">
        {formatNumber(record.matches)} partidas · saldo {formatNumber(recordBalance(record))}
      </div>
      <div className="muted">{description}</div>
    </div>
  );
}

function ResultPanel({
  championship,
  entry,
  playerA,
  playerB,
}: {
  championship: Championship;
  entry?: HeadToHeadEntry;
  playerA: string;
  playerB: string;
}) {
  if (!entry) {
    return (
      <div className="muted">
        Nenhum confronto direto registrado entre <strong>{playerA}</strong> e <strong>{playerB}</strong>.
      </div>
    );
  }

  return (
    <div className="h2h-result">
      <div className="h2h-selected">
        <PlayerPill championship={championship} playerName={entry.players[0]} />
        <strong>vs</strong>
        <PlayerPill championship={championship} playerName={entry.players[1]} />
      </div>
      <div className="h2h-stat-grid">
        <H2hStatCard
          description="Leitura de sinergia quando os dois caem no mesmo time."
          record={entry.same}
          title="Jogando juntos"
        />
        <H2hStatCard
          description={`Winrate para ${entry.players[0]} quando eles ficam em lados opostos.`}
          record={entry.opposite}
          title="Frente a frente"
        />
      </div>
    </div>
  );
}

export function HeadToHeadPanel({ championship }: { championship: Championship }) {
  const players = useMemo(() => Object.keys(championship.players).sort((a, b) => a.localeCompare(b, 'pt-BR')), [championship.players]);
  const [playerA, setPlayerA] = useState(players[0] || '');
  const [playerB, setPlayerB] = useState(players[1] || players[0] || '');
  const entry = playerA && playerB && playerA !== playerB ? championship.headToHead[pairKey(playerA, playerB)] : undefined;
  const rows = Object.values(championship.headToHead)
    .map<HeadToHeadRow>(headToHead => ({
      opposite: headToHead.opposite,
      playerA: headToHead.players[0],
      playerB: headToHead.players[1],
      players: headToHead.players.join(' vs '),
      same: headToHead.same,
      totalMatches: headToHead.same.matches + headToHead.opposite.matches,
    }))
    .sort((rowA, rowB) => rowB.totalMatches - rowA.totalMatches);

  function changePlayerA(nextPlayer: string) {
    setPlayerA(nextPlayer);
    if (nextPlayer === playerB) {
      setPlayerB(players.find(player => player !== nextPlayer) || playerB);
    }
  }

  function changePlayerB(nextPlayer: string) {
    setPlayerB(nextPlayer);
    if (nextPlayer === playerA) {
      setPlayerA(players.find(player => player !== nextPlayer) || playerA);
    }
  }

  return (
    <>
      <div className="page-head">
        <h1>Confrontos</h1>
      </div>
      <section className="rounded-xl bg-card p-4 text-card-foreground ring-1 ring-foreground/10">
        <div className="h2h-controls">
          <label>
            Jogador A
            <Select onValueChange={value => value && changePlayerA(value)} value={playerA}>
              <SelectTrigger className="min-w-52">
                <SelectValue />
              </SelectTrigger>
              <SelectContent>
                {players.map(player => (
                  <SelectItem key={player} value={player}>
                    {player}
                  </SelectItem>
                ))}
              </SelectContent>
            </Select>
          </label>
          <strong>vs</strong>
          <label>
            Jogador B
            <Select onValueChange={value => value && changePlayerB(value)} value={playerB}>
              <SelectTrigger className="min-w-52">
                <SelectValue />
              </SelectTrigger>
              <SelectContent>
                {players.map(player => (
                  <SelectItem key={player} value={player}>
                    {player}
                  </SelectItem>
                ))}
              </SelectContent>
            </Select>
          </label>
        </div>
        {playerA === playerB ? (
          <div className="muted">Escolha dois jogadores diferentes para ver o confronto direto.</div>
        ) : (
          <ResultPanel championship={championship} entry={entry} playerA={playerA} playerB={playerB} />
        )}
      </section>
      <div style={{ marginTop: '1rem' }}>
        <DataTable
          columns={[
            { key: 'players', label: 'Jogadores', render: row => row.players },
            { key: 'totalMatches', label: 'Partidas', render: row => formatNumber(row.totalMatches) },
            { key: 'same', label: 'Juntos', render: row => `${recordLabel(row.same)} · ${formatPercent(row.same.winrate)}` },
            { key: 'opposite', label: 'Contra', render: row => `${recordLabel(row.opposite)} · ${formatPercent(row.opposite.winrate)}` },
          ]}
          getRowKey={row => row.players}
          onRowClick={row => {
            setPlayerA(row.playerA);
            setPlayerB(row.playerB);
          }}
          rows={rows}
        />
      </div>
    </>
  );
}
