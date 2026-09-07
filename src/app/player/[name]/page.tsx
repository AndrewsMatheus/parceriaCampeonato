import { notFound } from 'next/navigation';
import { PlayerProfile } from '@/components/championship/player-profile';
import { PanelCard } from '@/components/ui/panel-card';
import { getChampionship } from '@/repositories/championship-repository';

export const dynamic = 'force-dynamic';

const EMPTY_PLAYER_PARAM = 'sem-dados';

type PlayerPageProps = {
  params: Promise<{
    name: string;
  }>;
};

export default async function PlayerPage({ params }: PlayerPageProps) {
  const { name } = await params;
  const championship = await getChampionship();
  const player = championship.players[decodeURIComponent(name)];

  if (name === EMPTY_PLAYER_PARAM && !player) {
    return (
      <PanelCard title="Sem jogadores">
        <p className="muted">Nenhum jogador foi cadastrado para este campeonato ainda.</p>
      </PanelCard>
    );
  }

  if (!player) {
    notFound();
  }

  return <PlayerProfile player={player} />;
}
