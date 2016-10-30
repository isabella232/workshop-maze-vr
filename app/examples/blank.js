/* eslint no-unused-vars: "off" */

import Irrgarten from './../maze/irrgarten';

function start() {
  var irrgarten = new Irrgarten(10,10);

  irrgarten.neuerSpieler('Max Mustermann', 5,5);

  setInterval(function() {

    var x = Math.floor(Math.random() * 10);
    var y = Math.floor(Math.random() * 10);
    var richtung = Math.floor(Math.random() * 4)
    irrgarten.neueWand(x, y, richtung);
  }, 1000);

  irrgarten.start();
}

export default {start};
