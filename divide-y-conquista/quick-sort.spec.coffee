expect = require('chai').expect
arreglo_es_igual = require('../utilidades/arreglo-es-igual')
quick_sort = require('./quick-sort')

arreglo_ordenado    = [ 1 , 2 , 3 , 4 , 5 , 6 ]
arreglo_desordenado = [ 4 , 1 , 5 , 6 , 3 , 2 ]

describe 'divide y conquista', ->
  describe 'quick sort', ->

    it 'no debe desordenar el arreglo ordenado', ->
      resultado = quick_sort(arreglo_ordenado, 0, arreglo_ordenado.length - 1)
      es_igual = arreglo_es_igual(resultado, arreglo_ordenado)
      expect(es_igual).to.be.true

    it 'debe ordenar el arreglo desordenado', ->
      resultado = quick_sort(arreglo_desordenado, 0, arreglo_desordenado.length - 1)
      es_igual = arreglo_es_igual(resultado, arreglo_desordenado.sort())
      expect(es_igual).to.be.true
