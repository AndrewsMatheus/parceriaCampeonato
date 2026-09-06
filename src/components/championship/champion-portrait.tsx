import { getChampionIconUrl } from '@/domain/championship/champion-assets';

type ChampionPortraitProps = {
  champion?: string | null;
  className?: string;
  iconUrl?: string | null;
  size?: 'sm' | 'default' | 'lg';
};

function getInitials(name?: string | null) {
  if (!name) return '?';

  return name.slice(0, 2).toUpperCase();
}

export function ChampionPortrait({ champion, className = '', iconUrl, size = 'default' }: ChampionPortraitProps) {
  const resolvedIconUrl = getChampionIconUrl(champion) || iconUrl;

  return (
    <span className={`champion-portrait is-${size} ${className}`} title={champion || 'Campeão'}>
      {resolvedIconUrl ? <img alt={champion || 'Campeão'} src={resolvedIconUrl} /> : <span>{getInitials(champion)}</span>}
    </span>
  );
}
