expect = require('chai').expect
arreglo_es_igual = require('../utilidades/arreglo-es-igual')
merge_sort = require('./merge-sort')

arreglo_ordenado    = [ 1 , 2 , 3 , 4 , 5 , 6 ]
arreglo_desordenado = [ 4 , 1 , 5 , 6 , 3 , 2 ]

describe 'divide y conquista', ->
  describe 'merge sort', ->

    it 'no debe desordenar el arreglo ordenado', ->
      resultado = merge_sort(arreglo_ordenado)
      es_igual = arreglo_es_igual(resultado, arreglo_ordenado)
      expect(es_igual).to.be.true

    it 'debe ordenar el arreglo desordenado', ->
      resultado = merge_sort(arreglo_desordenado)
      es_igual = arreglo_es_igual(resultado, arreglo_desordenado.sort())
      expect(es_igual).to.be.true
