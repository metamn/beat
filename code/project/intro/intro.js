var splitStringToChars = require('./../../framework/helpers/js/splitStringToChars.js');
var klass = require('./../../framework/helpers/js/klass.js');
var select = require('./../../framework/helpers/js/select.js');
var click = require('./../../framework/helpers/js/click.js');

var clickOnChars = function(charsID) {
  chars = select(charsID);
  click(chars, clickOnChar);

  function clickOnChar(event) {
    klass(document.body, 'show-intro', 'toggle');
  }
}


if (document.querySelector('.intro__text')) {
  splitStringToChars('.intro__text', '.intro__chars');
  clickOnChars('.intro__chars .char');
}
