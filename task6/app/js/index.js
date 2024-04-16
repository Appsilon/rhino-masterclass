export function sayHello(name) {
  window.alert(`Hello ${name}!`);
}

export function shortColumn(data, type, row, meta) {
return type === 'display' && data.length > 6 ?
'<span title=\"' + data + '\">' + data.substr(0, 6) + '...</span>' : data;
}

Shiny.addCustomMessageHandler('sayHello', sayHello);
