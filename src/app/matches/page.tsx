import { MatchesTable } from '@/components/championship/matches-table';
import { getChampionship } from '@/repositories/championship-repository';

export default async function MatchesPage() {
  const championship = await getChampionship();

  return <MatchesTable championship={championship} matches={championship.matches} />;
}
