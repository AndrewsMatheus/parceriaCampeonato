import {table} from '../components/table.js';
import {escapeHtml, pairKey, pct} from '../js/utils.js';

export function headToHead(c) {
  const players = Object.keys(c.players).sort((a, b) => a.localeCompare(b, 'pt-BR'));
  const [playerA, playerB] = players.length > 1 ? [players[0], players[1]] : [players[0], players[0]];
  const rows = Object.values(c.headToHead).map(h => ({
    players: h.players.join(' vs '),
    same: `${h.same.wins}/${h.same.losses} (${pct(h.same.winrate)})`,
    opposite: `${h.opposite.wins}/${h.opposite.losses} (${pct(h.opposite.winrate)})`,
  }));

  const playerOptions = players
    .map(name => `<option value="${escapeHtml(name)}">${escapeHtml(name)}</option>`)
    .join('');

  const initialPair = pairKey(playerA, playerB);
  const initialEntry = c.headToHead[initialPair];

  setTimeout(() => initHeadToHeadSelectors(c, players), 0);

  return `
    <div class="page-head"><h1>Confrontos</h1></div>
    <section class="card">
      <div style="display:flex;align-items:center;gap:12px;flex-wrap:wrap;">
        <label style="display:flex;align-items:center;gap:8px;">Jogador A
          <select id="h2h-player-a" style="min-width:200px;padding:8px;border:1px solid #444;border-radius:6px;background:#0f172a;color:#fff;">
            ${playerOptions}
          </select>
        </label>
        <span style="font-weight:700;">vs</span>
        <label style="display:flex;align-items:center;gap:8px;">Jogador B
          <select id="h2h-player-b" style="min-width:200px;padding:8px;border:1px solid #444;border-radius:6px;background:#0f172a;color:#fff;">
            ${playerOptions}
          </select>
        </label>
      </div>
      <div id="h2h-result" style="margin-top:22px;">
        ${renderH2HResult(initialEntry, playerA, playerB)}
      </div>
    </section>
    ${table(
      [
        { key: 'players', label: 'Jogadores' },
        { key: 'same', label: 'Mesmo time V/D' },
        { key: 'opposite', label: 'Adversários V/D' },
      ],
      rows,
    )}
  `;
}

function renderH2HResult(entry, playerA, playerB) {
  if (!entry) {
    return `<div class="muted">Nenhum confronto direto registrado entre <strong>${escapeHtml(playerA)}</strong> e <strong>${escapeHtml(playerB)}</strong>.</div>`;
  }

  return `
    <div style="display:grid;gap:12px;">
      <div style="font-weight:700;">Confronto direto: ${escapeHtml(playerA)} vs ${escapeHtml(playerB)}</div>
      <div style="display:grid;grid-template-columns:1fr 1fr;gap:12px;">
        <div style="padding:16px;border:1px solid #23354d;border-radius:12px;background:#08101d;">
          <div style="font-size:0.9rem;color:#94a3b8;margin-bottom:8px;">Mesmo time</div>
          <div style="font-size:1.3rem;">${entry.same.wins}/${entry.same.losses}</div>
          <div style="font-size:0.85rem;color:#94a3b8;margin-top:4px;">Vitórias / Derrotas</div>
          <div style="margin-top:10px;color:#fbcfe8;">${pct(entry.same.winrate)}</div>
          <div style="font-size:0.85rem;color:#94a3b8;margin-top:4px;">% de vitórias quando jogaram no mesmo time</div>
        </div>
        <div style="padding:16px;border:1px solid #23354d;border-radius:12px;background:#08101d;">
          <div style="font-size:0.9rem;color:#94a3b8;margin-bottom:8px;">Adversários</div>
          <div style="font-size:1.3rem;">${entry.opposite.wins}/${entry.opposite.losses}</div>
          <div style="font-size:0.85rem;color:#94a3b8;margin-top:4px;">Vitórias / Derrotas</div>
          <div style="margin-top:10px;color:#fbcfe8;">${pct(entry.opposite.winrate)}</div>
          <div style="font-size:0.85rem;color:#94a3b8;margin-top:4px;">% de vitórias para <strong>${escapeHtml(entry.players[0])}</strong> quando jogaram em times opostos</div>
        </div>
      </div>
    </div>
  `;
}

function initHeadToHeadSelectors(c, players) {
  const selectA = document.getElementById('h2h-player-a');
  const selectB = document.getElementById('h2h-player-b');
  const result = document.getElementById('h2h-result');
  if (!selectA || !selectB || !result) return;

  if (selectA.value === selectB.value && players.length > 1) {
    selectB.value = players.find(name => name !== selectA.value) || selectB.value;
  }

  function updateResult() {
    const playerA = selectA.value;
    const playerB = selectB.value;
    if (playerA === playerB) {
      result.innerHTML = `<div class="muted">Escolha dois jogadores diferentes para ver o confronto direto.</div>`;
      return;
    }
    const entry = c.headToHead[pairKey(playerA, playerB)];
    result.innerHTML = renderH2HResult(entry, playerA, playerB);
  }

  selectA.addEventListener('change', () => {
    if (selectA.value === selectB.value) {
      selectB.value = players.find(name => name !== selectA.value) || selectB.value;
    }
    updateResult();
  });

  selectB.addEventListener('change', () => {
    if (selectB.value === selectA.value) {
      selectA.value = players.find(name => name !== selectB.value) || selectA.value;
    }
    updateResult();
  });
}
