'use client';

import { useMemo, useState } from 'react';
import { Badge } from '@/components/ui/badge';
import { Bars, LineChart, WinLossDonut } from '@/components/ui/charts';
import { ChampionPortrait } from '@/components/championship/champion-portrait';
import { LaneRoleSummary } from '@/components/championship/lane-role-summary';
import { PlayerAvatar } from '@/components/championship/player-avatar';
import { PanelCard } from '@/components/ui/panel-card';
import { DataTable } from '@/components/ui/data-table';
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from '@/components/ui/select';
import { formatNumber, formatPercent } from '@/domain/championship/formatters';
import type { ChampionStatRecord, Player, StatRecord } from '@/domain/championship/types';
import { Card, CardContent } from '@/components/ui/card';

type SortMode = 'matches-desc' | 'matches-asc' | 'winrate-desc' | 'winrate-asc';

const sortModeLabels: Record<SortMode, string> = {
  'matches-desc': 'Mais partidas',
  'matches-asc': 'Menos partidas',
  'winrate-desc': 'Maior winrate',
  'winrate-asc': 'Menor winrate',
};

function buildRelationshipRows(records: Record<string, StatRecord>, labelPrefix: string) {
  return Object.entries(records).map(([label, value]) => ({
    label,
    matches: value.matches,
    winrate: value.winrate,
    hint: `${formatPercent(value.winrate)} de winrate ${labelPrefix} ${label}`,
  }));
}

function sortRelationships<T extends { matches: number; winrate: number }>(items: T[], sortMode: SortMode): T[] {
  return [...items].sort((itemA, itemB) => {
    if (sortMode === 'matches-asc') return itemA.matches - itemB.matches;
    if (sortMode === 'winrate-desc') return itemB.winrate - itemA.winrate;
    if (sortMode === 'winrate-asc') return itemA.winrate - itemB.winrate;

    return itemB.matches - itemA.matches;
  });
}

function RelationshipPanel({
  title,
  rows,
}: {
  title: string;
  rows: Array<{ label: string; matches: number; winrate: number; hint: string }>;
}) {
  const [sortMode, setSortMode] = useState<SortMode>('matches-desc');
  const sortedRows = useMemo(() => sortRelationships(rows, sortMode).slice(0, 10), [rows, sortMode]);

  return (
    <PanelCard className="player-chart-card">
      <div className="chart-card-head">
        <h2>{title}</h2>
        <Select onValueChange={value => setSortMode(value as SortMode)} value={sortMode}>
          <SelectTrigger className="w-40">
            <SelectValue>{sortModeLabels[sortMode]}</SelectValue>
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="matches-desc">{sortModeLabels['matches-desc']}</SelectItem>
            <SelectItem value="matches-asc">{sortModeLabels['matches-asc']}</SelectItem>
            <SelectItem value="winrate-desc">{sortModeLabels['winrate-desc']}</SelectItem>
            <SelectItem value="winrate-asc">{sortModeLabels['winrate-asc']}</SelectItem>
          </SelectContent>
        </Select>
      </div>
      <Bars items={sortedRows.map(row => ({ ...row, value: row.matches }))} />
    </PanelCard>
  );
}

function TopChampionsPanel({ champions }: { champions: Record<string, ChampionStatRecord> }) {
  const rows = Object.entries(champions)
    .map(([name, stat]) => ({
      name,
      ...stat,
    }))
    .sort((championA, championB) => championB.matches - championA.matches || championB.winrate - championA.winrate)
    .slice(0, 8);

  return (
    <PanelCard className="player-chart-card">
      <div className="chart-card-head">
        <h2>Top campeões</h2>
      </div>
      {rows.length ? (
        <div className="champion-list">
          {rows.map(champion => (
            <div className="champion-list-row" key={champion.name}>
              <ChampionPortrait champion={champion.name} iconUrl={champion.iconUrl} size="sm" />
              <strong>{champion.name}</strong>
              <span>{formatNumber(champion.matches)} partidas</span>
              <span>{formatPercent(champion.winrate)}</span>
            </div>
          ))}
        </div>
      ) : (
        <p className="muted">Nenhum campeão registrado nas partidas ainda.</p>
      )}
    </PanelCard>
  );
}

export function PlayerProfile({ player }: { player: Player }) {
  const historyRows = player.history.slice().reverse();
  const teammates = buildRelationshipRows(player.teammates, 'jogando com');
  const opponents = buildRelationshipRows(player.opponents, 'jogando contra');

  return (
    <>
      <div className="player-profile-layout">
        <div className="grid">
          <Card className="p-4">
            <CardContent>
              <div className="page-head">
                <div className="inline-flex items-center gap-4">
                  <PlayerAvatar name={player.name} size="lg" src={player.avatarUrl} />
                  <h1>{player.name}</h1>
                  <Badge variant="default">Rank #{player.rank}</Badge>
                  <Badge variant="secondary">MMR {formatNumber(player.finalMMR)}</Badge>
                </div>
              </div>
            </CardContent>
          </Card>

          <div className="grid two">
            <PanelCard title="MMR">
              <LineChart series={[{ name: player.name, values: player.mmrHistory }]} />
            </PanelCard>
            <PanelCard title="Winrate">
              <WinLossDonut losses={player.losses} winrate={player.winrate} wins={player.wins} />
            </PanelCard>
          </div>

          <div className="grid two player-stats-grid">
            <PanelCard className="player-chart-card">
              <div className="chart-card-head">
                <h2>Funções</h2>
              </div>
              <LaneRoleSummary roles={player.roles} />
            </PanelCard>
            <TopChampionsPanel champions={player.champions} />
          </div>

          <div className="grid two player-stats-grid">
            <RelationshipPanel rows={teammates} title="Parceiros" />
            <RelationshipPanel rows={opponents} title="Rivais" />
          </div>
        </div>

        <Card className="player-history-card p-4">
          <CardContent>
            <h2 className="mb-4">Histórico</h2>
            <DataTable
              columns={[
                { key: 'match', label: 'Partida', render: row => row.match },
                {
                  key: 'result',
                  label: 'Resultado',
                  render: row => <span className={row.result === 'W' ? 'win' : 'loss'}>{row.result}</span>,
                },
                {
                  key: 'champion',
                  label: 'Campeão',
                  render: row => row.champion ? (
                    <span className="history-champion">
                      <ChampionPortrait champion={row.champion} iconUrl={row.championIconUrl} size="sm" />
                      {row.champion}
                    </span>
                  ) : '-',
                },
                { key: 'role', label: 'Função', render: row => row.role },
                { key: 'delta', label: 'MMR', render: row => formatNumber(row.delta) },
                { key: 'mmr', label: 'MMR após', render: row => formatNumber(row.mmr) },
              ]}
              rows={historyRows}
            />
          </CardContent>
        </Card>
      </div>
    </>
  );
}
