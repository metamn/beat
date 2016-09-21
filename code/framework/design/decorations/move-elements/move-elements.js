// Move elements
//
// Move elements from bottom to top
//

var select = require('./../../../helpers/js/select.js');
var l = require('./../../../helpers/js/loop.js');
var getElementTransform = require('./../../../helpers/js/getElementTransform.js');
var transform = require('./../../../helpers/js/transform.js');

var moveElements = function(ID) {
  var items = select(ID);

  items.loop(function(item) {
    var y = getElementTransform(item, 'X');
    var x = getElementTransform(item, 'Y');
    var newY = y + (y / 10);

    var t = 'translateY(' + newY + 'px) translateX(' + x + 'px)';
    transform(item, t, t);
  });
}

module.exports = moveElements;
