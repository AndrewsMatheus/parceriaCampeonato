import { card, kpi } from '../components/card.js';
import { table } from '../components/table.js';
import { lineChart, bars } from '../js/charts.js';
import { escapeHtml, fmt, pct } from '../js/utils.js';

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
  const rawTeammates = Object.entries(p.teammates)
    .sort((a, b) => b[1].matches - a[1].matches)
    .slice(0, 10)
    .map(([label, value], idx) => ({ label, matches: value.matches, winrate: value.winrate, hint: `${pct(value.winrate)} de winrate jogando com ${label}`, id: `teammate-${idx}` }));
  const rawRivals = Object.entries(p.opponents)
    .sort((a, b) => b[1].matches - a[1].matches)
    .slice(0, 10)
    .map(([label, value], idx) => ({ label, matches: value.matches, winrate: value.winrate, hint: `${pct(value.winrate)} de winrate jogando contra ${label}`, id: `opponent-${idx}` }));

  const teammateBars = rawTeammates.map(i => ({ ...i, value: i.matches }));
  const rivalBars = rawRivals.map(i => ({ ...i, value: i.matches }));

  setTimeout(() => initCascadeFilters('teammates-filter', 'teammates-list', rawTeammates), 0);
  setTimeout(() => initCascadeFilters('opponents-filter', 'opponents-list', rawRivals), 0);

  return `
    <div class="page-head">
      <h1>${escapeHtml(p.name)}</h1>
      <span class="pill">Rank #${p.rank}</span>
    </div>
    <div class="grid cards">
      ${kpi('MMR', fmt(p.finalMMR))}
      ${kpi('Vitórias', p.wins)}
      ${kpi('Derrotas', p.losses)}
      ${kpi('Winrate', pct(p.winrate), 'Percentual de vitórias')}
    </div>
    <div class="grid two">
      <section class="card"><h3>MMR</h3>${lineChart([{ name: p.name, values: p.mmrHistory }])}</section>
      ${card('Funções', bars(roleBars))}
      <section class="card" id="teammates-section">
        <h3>Parceiros</h3>
        <div style="display:flex;align-items:center;justify-content:space-between;gap:12px;margin-bottom:12px;">
          <p class="muted" style="margin:0;">Número de partidas com cada parceiro</p>
          <select id="teammates-filter" style="width:200px;padding:6px;border:1px solid #444;border-radius:4px;background:#1a1a1a;color:#fff;cursor:pointer;font-size:12px;">
            <option value="matches-desc">Partidas (maior para menor)</option>
            <option value="matches-asc">Partidas (menor para maior)</option>
            <option value="winrate-desc">Winrate (maior para menor)</option>
            <option value="winrate-asc">Winrate (menor para maior)</option>
          </select>
        </div>
        <div id="teammates-list">${bars(teammateBars)}</div>
      </section>
      <section class="card" id="opponents-section">
        <h3>Rivais</h3>
        <div style="display:flex;align-items:center;justify-content:space-between;gap:12px;margin-bottom:12px;">
          <p class="muted" style="margin:0;">Número de partidas contra cada rival</p>
          <select id="opponents-filter" style="width:200px;padding:6px;border:1px solid #444;border-radius:4px;background:#1a1a1a;color:#fff;cursor:pointer;font-size:12px;">
            <option value="matches-desc">Partidas (maior para menor)</option>
            <option value="matches-asc">Partidas (menor para maior)</option>
            <option value="winrate-desc">Winrate (maior para menor)</option>
            <option value="winrate-asc">Winrate (menor para maior)</option>
          </select>
        </div>
        <div id="opponents-list">${bars(rivalBars)}</div>
      </section>
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

function initCascadeFilters(selectId, listId, data) {
  const select = document.getElementById(selectId);
  const list = document.getElementById(listId);
  if (!select || !list) return;

  function renderList(items) {
    list.innerHTML = bars(items.map(i => ({ ...i, value: i.matches })));
  }

  select.addEventListener('change', (e) => {
    const sortType = e.target.value;
    let sorted = [...data];

    if (sortType === 'matches-desc') {
      sorted.sort((a, b) => b.matches - a.matches);
    } else if (sortType === 'matches-asc') {
      sorted.sort((a, b) => a.matches - b.matches);
    } else if (sortType === 'winrate-desc') {
      sorted.sort((a, b) => b.winrate - a.winrate);
    } else if (sortType === 'winrate-asc') {
      sorted.sort((a, b) => a.winrate - b.winrate);
    }

    renderList(sorted);
  });
}
