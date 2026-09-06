import { formatNumber, formatPercent } from '@/domain/championship/formatters';
import type { Role, StatRecord } from '@/domain/championship/types';

type LaneRoleSummaryProps = {
  roles: Record<string, StatRecord>;
};

type LaneRoleItem = {
  role: Role;
  label: string;
  iconSrc: string;
  matches: number;
  winrate: number;
};

const laneLabels: Record<Role, string> = {
  TOP: 'Topo',
  JNG: 'Selva',
  MID: 'Meio',
  ADC: 'Atirador',
  SUP: 'Suporte',
  UNK: 'Outra',
};

const laneOrder: Role[] = ['TOP', 'JNG', 'MID', 'ADC', 'SUP'];

const laneIcons: Record<Role, string> = {
  TOP: '/assets/lanes/top.svg',
  JNG: '/assets/lanes/jungle.svg',
  MID: '/assets/lanes/middle.svg',
  ADC: '/assets/lanes/bottom.svg',
  SUP: '/assets/lanes/utility.svg',
  UNK: '/assets/lanes/utility.svg',
};

export function LaneRoleSummary({ roles }: LaneRoleSummaryProps) {
  const items = laneOrder.map<LaneRoleItem>(role => ({
    role,
    label: laneLabels[role],
    iconSrc: laneIcons[role],
    matches: roles[role]?.matches || 0,
    winrate: roles[role]?.winrate || 0,
  })).sort((a, b) => b.matches - a.matches);

  const totalMatches = items.reduce((sum, item) => sum + item.matches, 0);

  return (
    <div className="lane-role-grid">
      {items.map(item => (
        <article aria-label={`${item.label}: ${formatNumber(item.matches)} partidas`} className="lane-role-card flex-1 align-center items-center" key={item.role}>
          <img alt="" className="lane-role-icon" src={item.iconSrc} />
            <h3>{item.label}</h3>
          <strong>{formatNumber(item.matches)}</strong>
          <span>{totalMatches ? formatPercent((item.matches / totalMatches) * 100) : '0%'}</span>
        </article>
      ))}
    </div>
  );
}
