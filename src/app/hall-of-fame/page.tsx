import { HallOfFame } from '@/components/championship/hall-of-fame';
import { getChampionship } from '@/repositories/championship-repository';

export default async function HallOfFamePage() {
  const championship = await getChampionship();

  return <HallOfFame championship={championship} />;
}
