var select = require('./../../../helpers/js/select.js');

var marquee3D = function(ID) {
  function setText(event){
    event.preventDefault();
    leftText.innerText = textsource.value.toUpperCase();
    rightText.innerText = textsource.value.toUpperCase();
  }

  var leftText = select(ID + " .div--1 .text")[0];
  var rightText = select(ID + " .div--2 .text")[0];
  var textsource = leftText.innerHTML;
  setText();
}

module.exports = marquee3D;
