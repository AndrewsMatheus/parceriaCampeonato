export const INITIAL_MMR=833;
export const ROLES=['TOP','JNG','MID','ADC','SUP'];
export const fmt=n=>Number.isFinite(+n)?(+n).toLocaleString('pt-BR'):'-';
export const pct=n=>`${(Number(n)||0).toFixed(1)}%`;
export const by=(k,dir='desc')=>(a,b)=>((a[k]??0)>(b[k]??0)?1:-1)*(dir==='asc'?1:-1);
export const pairKey=(a,b)=>[a,b].sort((x,y)=>x.localeCompare(y)).join('::');
export const teamKey=t=>t.map(p=>p.name).sort((a,b)=>a.localeCompare(b)).join('::');
export function normalizeRole(r){return String(r||'UNK').toUpperCase().replace('JUNGLE','JNG').replace('BOTTOM','ADC').replace('UTILITY','SUP');}
export function escapeHtml(s=''){return String(s).replace(/[&<>'"]/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;',"'":'&#39;','"':'&quot;'}[c]));}
export function getSide(match,side){return match[side]||match[`${side}Team`]||match.teams?.[side]||[];}
export function winnerSide(match){const w=String(match.winner||match.vencedor||'').toLowerCase(); if(['blue','azul'].includes(w))return'blue'; if(['red','vermelho'].includes(w))return'red'; return w;}
