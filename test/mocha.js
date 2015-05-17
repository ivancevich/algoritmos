var Mocha = require('mocha');
var glob = require('glob');

var mocha = new Mocha({
  reporter: 'spec',
  ui: 'bdd',
  compilers: [require('coffee-script/register')]
});

glob
  .sync('**/*.spec.coffee')
  .forEach(function (file) {
    mocha.addFile(file);
  });

mocha.run(function (failures) {
  process.on('exit', function () {
    process.exit(failures);
  });
});
