export function formatNumber(value: number | string | undefined): string {
  const number = Number(value);

  return Number.isFinite(number) ? number.toLocaleString('pt-BR') : '-';
}

export function formatPercent(value: number | string | undefined): string {
  const number = Number(value) || 0;

  return `${Number.isInteger(number) ? number.toFixed(0) : number.toFixed(1)}%`;
}
