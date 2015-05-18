###*
 * Fibonacci Optimizado
 * @param {number, array}
 * @return {number}
###
fibopt = (n, a) ->
  if a[n]
  	console.log ' memorizado el ' + n
  	return a[n]
  if n == 1 or n == 2
    return a[n] = 1
  return a[n] = fibopt(n - 1, a) + fibopt(n - 2, a)

module.exports = fibopt
