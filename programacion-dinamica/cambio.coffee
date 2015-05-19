###*
 * Cambio
 * @param {number[]} Denominaciones de monedas
 * @param {number} Monto a devolver
 * @return {number} Cantidad de monedas necesarias
###
cambio = (monedas, monto) ->
  monedas = monedas.slice() # clono las monedas
  if monto < 0
    return Infinity
  if monedas.length == 0
    return Infinity
  if monto == 0
    return 0
  return minimo(cambio(monedas[1..], monto), 1 + cambio(monedas, monto - monedas[0]))

minimo = (a, b) ->
  if a < b
    return a
  return b

module.exports = cambio
