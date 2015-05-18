expect = require('chai').expect
kruskal = require('./kruskal')

vertices = [
  'a', 'b', 'c', 'd', 'e', 'z'
]

aristas = [
  origen: 'a'
  destino: 'b'
  peso: 3
,
  origen: 'a'
  destino: 'c'
  peso: 7
,
  origen: 'b'
  destino: 'c'
  peso: 2
,
  origen: 'b'
  destino: 'd'
  peso: 8
,
  origen: 'b'
  destino: 'e'
  peso: 5
,
  origen: 'c'
  destino: 'd'
  peso: 1
,
  origen: 'c'
  destino: 'e'
  peso: 4
,
  origen: 'd'
  destino: 'e'
  peso: 9
,
  origen: 'd'
  destino: 'z'
  peso: 7
,
  origen: 'e'
  destino: 'z'
  peso: 10
]

grafo =
  vertices: vertices
  aristas: aristas

describe 'greedy', ->
  describe 'kruskal', ->

    it 'debe encontrar el camino minimo', ->
      arbol_esperado = [
        origen: 'c'
        destino: 'd'
        peso: 1
      ,
        origen: 'b'
        destino: 'c'
        peso: 2
      ,
        origen: 'a'
        destino: 'b'
        peso: 3
      ,
        origen: 'c',
        destino: 'e',
        peso: 4
      ,
        origen: 'd'
        destino: 'z'
        peso: 7
      ]
      resultado = kruskal(grafo)
      expect(resultado.length).to.be.equal(arbol_esperado.length)
      expect(resultado).to.deep.equal(arbol_esperado)
