###*
 * Merge sort
 * @param {number[]} Numeros a ordenar
 * @return {number[]} Numeros ordenados
###
merge_sort = (arreglo) ->
  if arreglo.length <= 1
    return arreglo
  mitad = parseInt(arreglo.length / 2) - 1
  izquierda = merge_sort(arreglo[0..mitad])
  derecha = merge_sort(arreglo[mitad + 1..])
  return merge(izquierda, derecha)

merge = (izquierda, derecha) ->
  resultado = []
  while izquierda.length > 0 and derecha.length > 0
    if izquierda[0] <= derecha[0]
      resultado.push(izquierda.shift())
    else
      resultado.push(derecha.shift())
  resultado.push(izquierda.shift()) while izquierda.length > 0
  resultado.push(derecha.shift()) while derecha.length > 0
  return resultado

module.exports = merge_sort
