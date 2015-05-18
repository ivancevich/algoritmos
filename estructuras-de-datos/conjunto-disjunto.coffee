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

  buscar: (llave) ->
    if @padres[llave] != llave
      @padres[llave] = @buscar(@padres[llave])
    return @padres[llave]

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
