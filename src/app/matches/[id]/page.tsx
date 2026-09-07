import { notFound } from 'next/navigation';
import { MatchDetail } from '@/components/championship/match-detail';
import { PanelCard } from '@/components/ui/panel-card';
import { getChampionship } from '@/repositories/championship-repository';

export const dynamic = 'force-dynamic';

const EMPTY_MATCH_PARAM = 'sem-dados';

type MatchPageProps = {
  params: Promise<{
    id: string;
  }>;
};

export default async function MatchPage({ params }: MatchPageProps) {
  const { id } = await params;
  const championship = await getChampionship();
  const match = championship.matches.find(item => String(item.id) === id);

  if (id === EMPTY_MATCH_PARAM && !match) {
    return (
      <PanelCard title="Sem partidas">
        <p className="muted">Nenhuma partida foi cadastrada para este campeonato ainda.</p>
      </PanelCard>
    );
  }

  if (!match) {
    notFound();
  }

  return <MatchDetail championship={championship} match={match} />;
}
