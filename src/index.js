const { Elm } = require('../dist/elm.js');

const app = Elm.Main.init();

app.ports.start.send(10);

app.ports.return.subscribe(function(number) {
  console.log(number);
});
