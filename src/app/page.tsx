import { DashboardHome } from '@/components/championship/dashboard-home';
import { getChampionship } from '@/repositories/championship-repository';

export const dynamic = 'force-dynamic';

export default async function HomePage() {
  const championship = await getChampionship();

  return <DashboardHome championship={championship} />;
}
