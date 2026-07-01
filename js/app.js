import { loadData, readImported, buildChampionship } from './engine.js';
import { renderRoute } from './router.js';
import { renderMenu, importScreen } from './ui.js';

let championship = null;

async function boot() {
  renderMenu();
  const data = await loadData();
  if (!data) {
    importScreen(async files => {
      if (!files.ranking || !files.matches) return alert('Selecione os dois arquivos JSON.');
      const imported = await readImported(files);
      championship = buildChampionship(imported.ranking, imported.matches);
      bind();
      renderRoute(championship);
    });
    return;
  }
  championship = buildChampionship(data.ranking, data.matches);
  bind();
  renderRoute(championship);
}

function bind() {
  window.addEventListener('hashchange', () => renderRoute(championship));
  window.championship = championship;
}

function showFatalError(error) {
  console.error(error);
  const app = document.getElementById('app');
  app.innerHTML = `
    <section class="card">
      <h1>Não foi possível abrir o dashboard</h1>
      <p class="muted">Atualize a página com Ctrl+F5. Se continuar, abra o console do navegador (F12) e confira a mensagem de erro.</p>
      <p class="muted">Se você acabou de resolver conflitos no GitHub, confirme que nenhum arquivo contém as marcações &lt;&lt;&lt;&lt;&lt;&lt;&lt;, ======= ou &gt;&gt;&gt;&gt;&gt;&gt;&gt;.</p>
    </section>
  `;
}

boot().catch(showFatalError);
