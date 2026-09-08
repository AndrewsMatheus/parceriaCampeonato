import { HeadToHeadPanel } from '@/components/championship/head-to-head-panel';
import { getChampionship } from '@/repositories/championship-repository';

export default async function HeadToHeadPage() {
  const championship = await getChampionship();

  return <HeadToHeadPanel championship={championship} />;
}
