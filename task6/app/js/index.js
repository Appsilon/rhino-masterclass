export function message(text) {
  window.alert(text);
}

export function shortString(data, type, row, meta) {
return type === 'display' && data.length > 6 ?
'<span title=\"' + data + '\">' + data.substr(0, 6) + '...</span>' : data;
}
