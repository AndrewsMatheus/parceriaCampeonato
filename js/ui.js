export const routes=[['#/','Home'],['#/ranking','Ranking'],['#/players','Jogadores'],['#/matches','Partidas'],['#/head-to-head','Confrontos'],['#/hall-of-fame','Hall da Fama']];
export function renderMenu(){const menu=document.getElementById('menu');menu.innerHTML=routes.map(([href,label])=>`<a href="${href}">${label}</a>`).join('');updateActive()}
export function updateActive(){document.querySelectorAll('.menu a').forEach(a=>a.classList.toggle('active',a.getAttribute('href')===location.hash||(!location.hash&&a.getAttribute('href')==='#/')))}
export function importScreen(onImport){
  const app=document.getElementById('app');
  app.innerHTML=`<section class="card"><h1>Importar dados do campeonato</h1><p class="muted">Não encontramos /data/ranking.json e /data/matches.json. Selecione os dois arquivos para processar tudo no navegador.</p><div class="grid two"><label>ranking.json<input class="input" id="rankingFile" type="file" accept="application/json"></label><label>matches.json<input class="input" id="matchesFile" type="file" accept="application/json"></label></div><br><button class="btn" id="importBtn">Importar</button></section>`;
  const rankingFile = document.getElementById('rankingFile');
  const matchesFile = document.getElementById('matchesFile');
  document.getElementById('importBtn').onclick = () => onImport({ ranking: rankingFile.files[0], matches: matchesFile.files[0] });
}
