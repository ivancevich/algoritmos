ConjuntoDisjunto = require('../estructuras-de-datos/conjunto-disjunto')

###*
 * Kruskal
 * @param {object} Grafo
 * @return {object[]} Árbol de recubrimiento mínimo (arreglo de aristas)
###
kruskal = (grafo) ->
  vertices = grafo.vertices.slice() # clono los vertices
  aristas = grafo.aristas.slice() # clono las aristas
  aristas = ordenar_aristas_por_peso(aristas)
  arbol = []
  conjunto = new ConjuntoDisjunto(vertices)
  for arista in aristas
    if conjunto.buscar(arista.origen) != conjunto.buscar(arista.destino)
      arbol.push(arista)
      conjunto.union(arista.origen, arista.destino)
  return arbol

ordenar_aristas_por_peso = (aristas) ->
  return aristas.sort((a, b) -> a.peso - b.peso)

module.exports = kruskal
