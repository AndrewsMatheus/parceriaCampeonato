import {loadData,readImported,buildChampionship} from './engine.js';import {renderRoute} from './router.js';import {renderMenu,importScreen} from './ui.js';
let championship=null;
async function boot(){renderMenu();const data=await loadData();if(!data){importScreen(async files=>{if(!files.ranking||!files.matches)return alert('Selecione os dois arquivos JSON.');const imported=await readImported(files);championship=buildChampionship(imported.ranking,imported.matches);bind();renderRoute(championship)});return}championship=buildChampionship(data.ranking,data.matches);bind();renderRoute(championship)}
function bind(){window.addEventListener('hashchange',()=>renderRoute(championship));window.championship=championship}
boot();
