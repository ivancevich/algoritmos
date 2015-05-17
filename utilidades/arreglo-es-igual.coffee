arreglo_es_igual = (a, b) ->
  a.length is b.length and a.every((elem, i) -> elem is b[i])

module.exports = arreglo_es_igual
