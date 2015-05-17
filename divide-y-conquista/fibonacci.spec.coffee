expect = require('chai').expect
fib = require('./fibonacci')

describe 'divide y conquista', ->
  describe 'fibonacci', ->

    it 'debe devolver 1 para 1 y 2', ->
      resultado = fib(1)
      expect(resultado).to.be.equal(1)
      resultado = fib(2)
      expect(resultado).to.be.equal(1)

    it 'debe devolver 2 para 3', ->
      resultado = fib(3)
      expect(resultado).to.be.equal(2)

    it 'debe devolver 8 para 6', ->
      resultado = fib(6)
      expect(resultado).to.be.equal(8)
