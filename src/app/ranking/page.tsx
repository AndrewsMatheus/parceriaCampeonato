import { RankingTable } from '@/components/championship/ranking-table';
import { getChampionship } from '@/repositories/championship-repository';

export const dynamic = 'force-dynamic';

export default async function RankingPage() {
  const championship = await getChampionship();

  return <RankingTable players={championship.ranking} />;
}
