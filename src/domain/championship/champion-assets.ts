import { DATA_DRAGON_VERSION, championOptions } from './champion-options';

function normalizeChampionName(name: string) {
  return name
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/&/g, 'e')
    .replace(/[^a-zA-Z0-9]/g, '')
    .toLowerCase();
}

export function getChampionIconUrl(championName?: string | null): string | undefined {
  if (!championName) return undefined;

  const normalizedName = normalizeChampionName(championName);
  const champion = championOptions.find(option => (
    normalizeChampionName(option.name) === normalizedName ||
    normalizeChampionName(option.id) === normalizedName
  ));
  const championId = champion?.id || championName
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[^a-zA-Z0-9]/g, '');

  if (!championId) return undefined;

  return `https://ddragon.leagueoflegends.com/cdn/${DATA_DRAGON_VERSION}/img/champion/${championId}.png`;
}
