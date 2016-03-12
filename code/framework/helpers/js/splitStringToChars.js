var l = require('./../../helpers/js/loop.js');
var select = require('./../../helpers/js/select.js');
var click = require('./../../helpers/js/click.js');

var splitStringToChars = function(sourceID, destinationID) {
  var text = select(sourceID);
  var chars = text[0].innerHTML.split('');

  var ret = '';

  chars.loop(function(char) {
    ret += '<span class="char">' + char + '</span>';
  });

  var dest = select(destinationID);
  dest[0].innerHTML = ret;
}

module.exports = splitStringToChars;
