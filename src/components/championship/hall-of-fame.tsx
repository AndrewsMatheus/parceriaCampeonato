import { PanelCard } from '@/components/ui/panel-card';
import { formatNumber, formatPercent } from '@/domain/championship/formatters';
import type { Championship, Player, PlayerMatchEntry } from '@/domain/championship/types';

type FameRecord = {
  detail?: string;
  title: string;
  value: string;
};

type MatchAward = {
  matchId: number;
  player: PlayerMatchEntry;
  score: number;
};

function FameItem({ detail, title, value }: FameRecord) {
  return (
    <PanelCard title={title}>
      <p className="value gold">{value}</p>
      {detail ? <p className="muted">{detail}</p> : null}
    </PanelCard>
  );
}

function playerName(player?: Player): string {
  return player?.name || '-';
}

function bestByMatch(championship: Championship, scorePlayer: (player: PlayerMatchEntry) => number | undefined): MatchAward | undefined {
  return championship.matches
    .flatMap(match => [...match.blue, ...match.red].map(player => ({
      matchId: match.id,
      player,
      score: scorePlayer(player),
    })))
    .filter((award): award is MatchAward => award.score !== undefined && Number.isFinite(award.score))
    .sort((awardA, awardB) => awardB.score - awardA.score)[0];
}

function kdaScore(player: PlayerMatchEntry): number | undefined {
  if (player.kills === undefined && player.deaths === undefined && player.assists === undefined) return undefined;

  return ((player.kills ?? 0) + (player.assists ?? 0)) / Math.max(player.deaths ?? 0, 1);
}

function matchAwardRecord(title: string, award: MatchAward | undefined, suffix = ''): FameRecord | undefined {
  if (!award) return undefined;

  return {
    detail: `Partida ${formatNumber(award.matchId)}${award.player.champion ? ` · ${award.player.champion}` : ''}`,
    title,
    value: `${award.player.name} · ${formatNumber(award.score)}${suffix}`,
  };
}

function basicRecords(championship: Championship): FameRecord[] {
  const players = championship.ranking;
  const winrateLeader = players.slice().sort((playerA, playerB) => playerB.winrate - playerA.winrate)[0];
  const bestDuo = Object.values(championship.duos).sort((duoA, duoB) => duoB.winrate - duoA.winrate || duoB.matches - duoA.matches)[0];
  const bestTeam = Object.values(championship.teams).sort((teamA, teamB) => teamB.winrate - teamA.winrate || teamB.matches - teamA.matches)[0];
  const firstPlayerWithMmr = (mmr: number) => playerName(players.find(player => player.mmrHistory.some(value => value >= mmr)));
  const bestGainPlayer = playerName(players.find(player => player.records.bestGain === championship.statistics.bestGain));
  const worstLossPlayer = playerName(players.find(player => player.records.worstLoss === championship.statistics.worstLoss));

  return [
    { title: 'Maior MMR', value: `${playerName(players[0])} · ${formatNumber(players[0]?.finalMMR)}` },
    { title: 'Maior ganho de MMR', value: `${bestGainPlayer} · ${formatNumber(championship.statistics.bestGain)}` },
    { title: 'Maior perda de MMR', value: `${worstLossPlayer} · ${formatNumber(championship.statistics.worstLoss)}` },
    { title: 'Melhor taxa de vitória', value: winrateLeader ? `${winrateLeader.name} · ${formatPercent(winrateLeader.winrate)}` : '-' },
    { title: 'Mais vitórias', value: playerName(players.slice().sort((playerA, playerB) => playerB.wins - playerA.wins)[0]) },
    { title: 'Mais derrotas', value: playerName(players.slice().sort((playerA, playerB) => playerB.losses - playerA.losses)[0]) },
    { title: 'Melhor dupla', value: bestDuo ? `${bestDuo.players.join(' + ')} · ${formatPercent(bestDuo.winrate)}` : '-' },
    { title: 'Melhor quinteto', value: bestTeam ? `${bestTeam.players.join(', ')} · ${formatPercent(bestTeam.winrate)}` : '-' },
    { title: 'Maior sequência de vitórias', value: playerName(players.slice().sort((playerA, playerB) => playerB.streaks.bestWin - playerA.streaks.bestWin)[0]) },
    { title: 'Maior sequência de derrotas', value: playerName(players.slice().sort((playerA, playerB) => playerB.streaks.bestLoss - playerA.streaks.bestLoss)[0]) },
    { title: 'Mais versátil', value: playerName(players.slice().sort((playerA, playerB) => Object.keys(playerB.roles).length - Object.keys(playerA.roles).length)[0]) },
    ...[1000, 1500, 2000, 2500, 3000].map(mmr => ({
      title: `Primeiro ${formatNumber(mmr)} MMR`,
      value: firstPlayerWithMmr(mmr),
    })),
    { title: 'Maior evolução', value: playerName(players.slice().sort((playerA, playerB) => playerB.finalMMR - playerB.initialMMR - (playerA.finalMMR - playerA.initialMMR))[0]) },
    { title: 'Maior queda', value: playerName(players.slice().sort((playerA, playerB) => playerA.finalMMR - playerA.initialMMR - (playerB.finalMMR - playerB.initialMMR))[0]) },
  ];
}

function matchRecords(championship: Championship): FameRecord[] {
  return [
    matchAwardRecord('Maior KDA em partida', bestByMatch(championship, kdaScore), ' KDA'),
    matchAwardRecord('Mais abates', bestByMatch(championship, player => player.kills)),
    matchAwardRecord('Mais assistências', bestByMatch(championship, player => player.assists)),
    matchAwardRecord('Maior dano em campeões', bestByMatch(championship, player => player.damageDealtChampions)),
    matchAwardRecord('Mais ouro', bestByMatch(championship, player => player.goldEarned)),
    matchAwardRecord('Mais farm', bestByMatch(championship, player => player.creepScore)),
    matchAwardRecord('Maior visão', bestByMatch(championship, player => player.visionScore)),
    matchAwardRecord('Maior dano em torres', bestByMatch(championship, player => player.turretDamage)),
  ].filter((record): record is FameRecord => Boolean(record));
}

export function HallOfFame({ championship }: { championship: Championship }) {
  const records = [...basicRecords(championship), ...matchRecords(championship)];

  return (
    <>
      <div className="page-head">
        <h1>Hall da Fama</h1>
      </div>
      <div className="grid three">
        {records.map(record => (
          <FameItem detail={record.detail} key={`${record.title}-${record.value}`} title={record.title} value={record.value} />
        ))}
      </div>
    </>
  );
}
