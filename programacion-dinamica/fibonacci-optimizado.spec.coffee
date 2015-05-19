expect = require('chai').expect
fibopt = require('./fibonacci-optimizado')

describe 'programación dinámica', ->
  describe 'fibonacci optimizado', ->

    it 'debe devolver 1 para 1 y 2', ->
      resultado = fibopt(1, [])
      expect(resultado).to.be.equal(1)
      resultado = fibopt(2, [])
      expect(resultado).to.be.equal(1)

    it 'debe devolver 2 para 3', ->
      resultado = fibopt(3, [])
      expect(resultado).to.be.equal(2)

    it 'debe devolver 8 para 6', ->
      resultado = fibopt(6, [])
      expect(resultado).to.be.equal(8)
