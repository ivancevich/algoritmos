###*
 * Mochila
 * @param {object[]} Elementos a guardar en la mochila
 * @param {number} Capacidad de la mochila
 * @return {object[]} Elementos que entraron en la mochila
###
mochila = (elementos, capacidad) ->
  solucion = []
  elementos = elementos.slice() # clono los elementos
  elementos = ordenar_por_beneficio(elementos)
  while elementos.length > 0 and capacidad > 0
    if elementos[0].peso <= capacidad
      capacidad -= elementos[0].peso
      solucion.push(elementos.shift()) # agrego el elemento a la mochila y lo quito de la lista
    else
      elementos.shift() # quito el elemento descartado de la lista
  return solucion

ordenar_por_beneficio = (elementos) ->
  return elementos.sort((a, b) ->
    relacion_a = a.beneficio / a.peso
    relacion_b = b.beneficio / b.peso
    if relacion_a > relacion_b
      return -1
    if relacion_a < relacion_b
      return 1
    return 0
  )

module.exports = mochila
