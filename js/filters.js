export const filterByText=(items,text,fields=['name'])=>items.filter(i=>fields.some(f=>String(i[f]||'').toLowerCase().includes(text.toLowerCase())));
