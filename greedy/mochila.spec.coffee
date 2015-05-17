expect = require('chai').expect
mochila = require('./mochila')

elementos = [
  nombre: 'a'
  beneficio: 9
  peso: 18
  # relacion: 0.5
,
  nombre: 'b'
  beneficio: 7
  peso: 10
  # relacion: 0.7
,
  nombre: 'c'
  beneficio: 8
  peso: 2
  # relacion: 4
]

describe 'greedy', ->
  describe 'mochila', ->

    it 'debe meter el elemento \'c\' en la mochila', ->
      elems = elementos.slice() # clono los elementos
      capacidad = 5
      resultado = mochila(elems, capacidad)
      expect(resultado.length).to.be.equal(1)
      expect(resultado[0].nombre).to.be.equal('c')

    it 'debe meter los elementos \'c\' y \'b\' en la mochila', ->
      elems = elementos.slice() # clono los elementos
      capacidad = 12
      resultado = mochila(elems, capacidad)
      expect(resultado.length).to.be.equal(2)
      expect(resultado[0].nombre).to.be.equal('c')
      expect(resultado[1].nombre).to.be.equal('b')

    it 'debe meter todos los elementos en la mochila', ->
      elems = elementos.slice() # clono los elementos
      capacidad = 50
      resultado = mochila(elems, capacidad)
      expect(resultado.length).to.be.equal(3)
      expect(resultado[0].nombre).to.be.equal('c')
      expect(resultado[1].nombre).to.be.equal('b')
      expect(resultado[2].nombre).to.be.equal('a')
