import { notFound } from 'next/navigation';
import { PlayerProfile } from '@/components/championship/player-profile';
import { getChampionship } from '@/repositories/championship-file-repository';

export const dynamicParams = false;

type PlayerPageProps = {
  params: Promise<{
    name: string;
  }>;
};

export function generateStaticParams() {
  const championship = getChampionship();

  return championship.ranking.map(player => ({
    name: encodeURIComponent(player.name),
  }));
}

export default async function PlayerPage({ params }: PlayerPageProps) {
  const { name } = await params;
  const championship = getChampionship();
  const player = championship.players[decodeURIComponent(name)];

  if (!player) {
    notFound();
  }

  return <PlayerProfile player={player} />;
}
