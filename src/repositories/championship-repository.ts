import { getChampionshipFromSupabase } from '@/repositories/supabase/championship-supabase-repository';
import type { Championship } from '@/domain/championship/types';

export async function getChampionship(): Promise<Championship> {
  return getChampionshipFromSupabase();
}
