###*
 * Quick sort
 * @param {number[]} Numeros a ordenar
 * @param {number} Indice inicial
 * @param {number} Indice final
 * @return {number[]} Numeros ordenados
###
quick_sort = (arreglo, inicio, final) ->
  if inicio < final
    pivot = particion(arreglo, inicio, final)
    quick_sort(arreglo, inicio, pivot - 1)
    quick_sort(arreglo, pivot + 1, final)
  return arreglo

particion = (arreglo, izquierda, derecha) ->
  pivot_indice = izquierda # primer elemento, puede ser cualquiera
  pivot_valor = arreglo[pivot_indice]
  swap(arreglo, pivot_indice, derecha)
  indice = izquierda
  for i in [izquierda..derecha - 1]
    if arreglo[i] < pivot_valor
      swap(arreglo, i, indice)
      indice = indice + 1
   swap(arreglo, indice, derecha) # se mueve el pivot al ultimo lugar
   return indice

swap = (arreglo, indice_1, indice_2) ->
  temp = arreglo[indice_1]
  arreglo[indice_1] = arreglo[indice_2]
  arreglo[indice_2] = temp

module.exports = quick_sort
