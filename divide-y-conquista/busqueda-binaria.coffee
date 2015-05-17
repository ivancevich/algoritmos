###*
 * Busqueda binaria
 * @param {number[]} Numeros ordenados de menor a mayor
 * @param {number} Numero a encontrar
 * @return {boolean} Si el numero fue encontrado o no
###
busqueda_binaria = (arreglo, numero) ->
  if arreglo.length == 0
    return false
  if arreglo.length == 1
    return arreglo[0] == numero
  mitad = parseInt (arreglo.length / 2) - 1
  if arreglo[mitad] >= numero
    return busqueda_binaria(arreglo[0..mitad], numero)
  return busqueda_binaria(arreglo[mitad + 1..], numero)

module.exports = busqueda_binaria
