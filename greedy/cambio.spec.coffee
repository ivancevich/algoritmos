expect = require('chai').expect
cambio = require('./cambio')

describe 'greedy', ->
  describe 'cambio', ->

    it 'debe utilizar 4 monedas para devolver $66', ->
      monedas = [100, 50, 25, 10, 5, 1]
      monto = 66
      resultado = cambio(monedas, monto)
      expect(resultado).to.be.equal(4)

    it 'debe utilizar 3 monedas para devolver $8 (con greedy no es optimo, debería devolver 2)', ->
      monedas = [6, 4, 1]
      monto = 8
      resultado = cambio(monedas, monto)
      expect(resultado).to.be.equal(3)
