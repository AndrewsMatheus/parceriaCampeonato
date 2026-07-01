import {escapeHtml} from '../js/utils.js';
export const card=(title,body,cls='')=>`<section class="card ${cls}"><h3>${escapeHtml(title)}</h3>${body}</section>`;
export const kpi=(label,value,hint='')=>`<article class="card kpi"><div class="label">${escapeHtml(label)}</div><div class="value">${value}</div><div class="muted">${escapeHtml(hint)}</div></article>`;
