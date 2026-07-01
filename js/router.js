import { home } from '../views/home.js';
import { ranking } from '../views/ranking.js';
import { player } from '../views/player.js';
import { matches } from '../views/matches.js';
import { headToHead } from '../views/headToHead.js';
import { hallOfFame } from '../views/hallOfFame.js';
import { updateActive } from './ui.js';

/**
 * Renders the current hash route into the SPA main element.
 * @param {object} championship Processed championship state.
 */
export function renderRoute(championship) {
  const app = document.getElementById('app');
  const [path = '', arg = ''] = location.hash.replace(/^#\/?/, '').split('/');
  const routes = {
    '': () => home(championship),
    ranking: () => ranking(championship),
    players: () => ranking(championship),
    player: () => player(championship, arg),
    matches: () => matches(championship),
    'head-to-head': () => headToHead(championship),
    'hall-of-fame': () => hallOfFame(championship),
  };

  app.innerHTML = (routes[path] || routes[''])();
  updateActive();
  app.focus();
}
