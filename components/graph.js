import { escapeHtml } from '../js/utils.js';

export function lineChart(series) {
  const w = 900, h = 280, p = 24, vals = series.flatMap(s => s.values);
  const min = Math.min(...vals, 0), max = Math.max(...vals, 1);
  const sx = i => p + i * ((w - p * 2) / Math.max(1, Math.max(...series.map(s => s.values.length)) - 1));
  const sy = v => h - p - ((v - min) / (max - min || 1)) * (h - p * 2);
  return `<svg class="chart" viewBox="0 0 ${w} ${h}" role="img">${series.map((s, si) => `<polyline fill="none" stroke="${['#f0d084', '#45d483', '#1e90ff', '#e05252', '#b76eff'][si % 5]}" stroke-width="3" points="${s.values.map((v, i) => `${sx(i)},${sy(v)}`).join(' ')}"/><text x="${p}" y="${18 + si * 18}" fill="currentColor">${escapeHtml(s.name)}</text>`).join('')}</svg>`;
}

export function barTower(items) {
  const w = 900, h = 280, padding = 24, gap = 12;
  const max = Math.max(...items.map(i => i.value), 1);
  const barWidth = Math.max(1, (w - padding * 2 - gap * (items.length - 1)) / items.length);
  return `<svg class="chart" viewBox="0 0 ${w} ${h}" role="img">
    ${items.map((item, index) => {
      const barHeight = ((item.value || 0) / max) * (h - padding * 2);
      const x = padding + index * (barWidth + gap);
      const y = h - padding - barHeight;
      return `<g>
          <title>${escapeHtml(item.label)}\nPartidas: ${item.matches || 0}\nWinrate: ${item.winrate != null ? item.winrate.toFixed(1) + '%' : '0.0%'}</title>
          <rect x="${x}" y="${y}" width="${barWidth}" height="${barHeight}" rx="8" ry="8" fill="url(#towerGradient)"/>
          <text x="${x + barWidth / 2}" y="${h - padding + 20}" text-anchor="middle" font-size="10" fill="currentColor">${escapeHtml(item.label)}</text>
        </g>`;
    }).join('')}
    <defs>
      <linearGradient id="towerGradient" x1="0" y1="0" x2="0" y2="1">
        <stop offset="0%" stop-color="#f0d084"/>
        <stop offset="100%" stop-color="#c89b3c"/>
      </linearGradient>
    </defs>
  </svg>`;
}

export function bars(items) {
  const max = Math.max(...items.map(i => i.value), 1);
  return items.map(i => `<p><span>${escapeHtml(i.label)}</span> <b>${escapeHtml(i.value)}</b></p><div class="bar"><span style="width:${Number(i.value) / max * 100}%"></span></div>`).join('');
}
