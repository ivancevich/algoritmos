###*
 * ConjuntoDisjunto (DisjointSet)
 * @class
###
class ConjuntoDisjunto
  constructor: (llaves = []) ->
    @padres = {}
    @ranks = {}
    for llave in llaves
      @padres[llave] = llave
      @ranks[llave] = 0

  ###*
   * Busca el subconjunto al que pertenece el elemento
   * @param {number|string} Llave del elemento a buscar
   * @return {number|string|array} Subconjunto al que pertenece el elemento
  ###
  buscar: (llave) ->
    if @padres[llave] != llave
      @padres[llave] = @buscar(@padres[llave])
    return @padres[llave]

  ###*
   * Une los elementos de dos subconjuntos en uno solo.
   * @param {number|string} Llave de un elemento de un subconjunto
   * @param {number|string} Llave de otro elemento de un subconjunto
  ###
  union: (x, y) ->
    x_raiz = @buscar(x)
    y_raiz = @buscar(y)

    if x_raiz != y_raiz
      if @ranks[x_raiz] < @ranks[y_raiz]
        @padres[x_raiz] = y_raiz
      else if @ranks[x_raiz] > @ranks[y_raiz]
        @padres[y_raiz] = x_raiz
      else
        @padres[y_raiz] = x_raiz
        @ranks[x_raiz] += 1

module.exports = ConjuntoDisjunto
