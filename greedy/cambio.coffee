###*
 * Cambio
 * @param {number[]} Denominaciones de monedas
 * @param {number} Monto a devolver
 * @return {number} Cantidad de monedas necesarias
###
cambio = (monedas, monto) ->
  cantidad_monedas = 0
  indice = 0
  while monedas.length > 0 and monto > 0
    if monedas[indice] <= monto
      monto -= monedas[indice]
      cantidad_monedas++
    else
      indice++
  if indice <= monedas.length
    return cantidad_monedas
  else
    return null

module.exports = cambio
