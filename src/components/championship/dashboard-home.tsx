import { Crown, Medal, Swords, Trophy } from 'lucide-react';
import { BarTower, Bars } from '@/components/ui/charts';
import { KpiCard } from '@/components/championship/kpi-card';
import { PanelCard } from '@/components/ui/panel-card';
import { ViewSummaryCard } from '@/components/championship/view-summary-card';
import { formatNumber, formatPercent } from '@/domain/championship/formatters';
import type { Championship } from '@/domain/championship/types';

export function DashboardHome({ championship }: { championship: Championship }) {
  const players = championship.ranking;
  const champion = players[0];
  const top10 = players.slice(0, 10).map(player => ({
    label: player.name,
    value: player.finalMMR,
    matches: player.matches.length,
    winrate: player.winrate,
  }));
  const roleVariety = players
    .map(player => ({
      label: player.name,
      value: Object.keys(player.roles || {}).length,
      winrate: player.winrate,
    }))
    .sort((playerA, playerB) => playerB.value - playerA.value)
    .slice(0, 20);
  const winrateLeader = players.slice().sort((playerA, playerB) => playerB.winrate - playerA.winrate)[0];
  const winsLeader = players.slice().sort((playerA, playerB) => playerB.wins - playerA.wins)[0];
  const lossesLeader = players.slice().sort((playerA, playerB) => playerB.losses - playerA.losses)[0];
  const streakLeader = players.slice().sort((playerA, playerB) => playerB.streaks.bestWin - playerA.streaks.bestWin)[0];
  const bestDuo = Object.values(championship.duos).sort((duoA, duoB) => duoB.winrate - duoA.winrate || duoB.matches - duoA.matches)[0];

  return (
    <>
      <PanelCard title="Melhores Jogadores">
        <BarTower items={top10} />
      </PanelCard>

      <div className="grid four mt-4">
        <ViewSummaryCard
          actionLabel="Abrir ranking"
          href="/ranking"
          icon={Trophy}
          title="Ranking"
        >
          <span>Jogadores: {formatNumber(championship.statistics.totalPlayers)}</span>
          <span>Líder: {champion?.name || '-'}</span>
        </ViewSummaryCard>
        <ViewSummaryCard
          actionLabel="Abrir partidas"
          href="/matches"
          icon={Swords}
          title="Partidas"
        >
          <span>Total: {formatNumber(championship.statistics.totalMatches)}</span>
          <span>Maior ganho: {formatNumber(championship.statistics.bestGain)} MMR</span>
        </ViewSummaryCard>
        <ViewSummaryCard
          actionLabel="Abrir confrontos"
          href="/head-to-head"
          icon={Medal}
          title="Confrontos"
        >
          <span>Duplas registradas: {formatNumber(Object.keys(championship.headToHead).length)}</span>
          <span>Melhor dupla: {bestDuo?.players.join(' + ') || '-'}</span>
        </ViewSummaryCard>
        <ViewSummaryCard
          actionLabel="Abrir hall"
          href="/hall-of-fame"
          icon={Crown}
          title="Hall da Fama"
        >
          <span>Maior MMR: {formatNumber(championship.statistics.maxMMR)}</span>
          <span>Maior sequência: {streakLeader?.name || '-'}</span>
        </ViewSummaryCard>
      </div>
    </>
  );
}
