expect = require('chai').expect
busqueda_binaria = require('./busqueda-binaria')

arreglo = [ 1 , 2 , 3 , 4 , 5 , 6 ]

describe 'divide y conquista', ->
  describe 'búsqueda binaria', ->

    it 'debe encontrar el número 4', ->
      numero = 4
      resultado = busqueda_binaria(arreglo, numero)
      expect(resultado).to.be.true

    it 'no debe encontrar el número 9', ->
      numero = 9
      resultado = busqueda_binaria(arreglo, numero)
      expect(resultado).to.be.false
