import { card, kpi } from '../components/card.js';
import { table } from '../components/table.js';
import { lineChart, bars } from '../js/charts.js';
import { fmt, pct } from '../js/utils.js';

/**
 * Renders a complete player profile page.
 * @param {object} championship Processed championship state.
 * @param {string} name URL-encoded player name.
 * @returns {string}
 */
export function player(championship, name = '') {
  const decodedName = decodeURIComponent(name || '');
  const p = championship.players[decodedName] || championship.ranking[0];
  if (!p) return '<h1>Jogador não encontrado</h1>';

  const rows = p.history.slice().reverse();
  const roleBars = Object.entries(p.roles).map(([label, value]) => ({ label, value: value.matches }));
  const teammateBars = Object.entries(p.teammates)
    .sort((a, b) => b[1].matches - a[1].matches)
    .slice(0, 10)
    .map(([label, value]) => ({ label, value: value.matches }));
  const rivalBars = Object.entries(p.opponents)
    .sort((a, b) => b[1].matches - a[1].matches)
    .slice(0, 10)
    .map(([label, value]) => ({ label, value: value.matches }));

  return `
    <div class="page-head">
      <h1>${p.name}</h1>
      <span class="pill">Rank #${p.rank}</span>
    </div>
    <div class="grid cards">
      ${kpi('MMR', fmt(p.finalMMR))}
      ${kpi('Vitórias', p.wins)}
      ${kpi('Derrotas', p.losses)}
      ${kpi('Winrate', pct(p.winrate))}
    </div>
    <div class="grid two">
      <section class="card"><h3>MMR</h3>${lineChart([{ name: p.name, values: p.mmrHistory }])}</section>
      ${card('Funções', bars(roleBars))}
      ${card('Parceiros', bars(teammateBars))}
      ${card('Rivais', bars(rivalBars))}
    </div>
    <h2>Histórico</h2>
    ${table([
      { key: 'match', label: 'Partida' },
      { key: 'result', label: 'Resultado' },
      { key: 'role', label: 'Função' },
      { key: 'delta', label: 'MMR' },
      { key: 'mmr', label: 'MMR após' },
    ], rows)}
  `;
}
