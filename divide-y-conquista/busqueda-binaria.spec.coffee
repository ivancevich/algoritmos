expect = require('chai').expect
busqueda_binaria = require('./busqueda-binaria')

arreglo = [ 1 , 2 , 3 , 4 , 5 , 6 ]

describe 'divide y conquista', ->
  describe 'busqueda binaria', ->

    it 'debe encontrar el numero 4', ->
      numero = 4
      resultado = busqueda_binaria(arreglo, numero)
      expect(resultado).to.be.true

    it 'no debe encontrar el numero 9', ->
      numero = 9
      resultado = busqueda_binaria(arreglo, numero)
      expect(resultado).to.be.false
