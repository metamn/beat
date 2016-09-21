// Move elements
//
// Move elements from bottom to top
//

var select = require('./../../../helpers/js/select.js');
var l = require('./../../../helpers/js/loop.js');
var elementPosition = require('./../../../helpers/js/elementPosition.js');


// Set up
function MoveElements(ID) {
  this.items = select(ID);

  // save original positions
  var originalPosition = [];

  this.items.loop(function(item, index) {
    originalPosition[index] = elementPosition(item);
  });

  this.originalPosition = originalPosition;
}

// Do the move
MoveElements.prototype.moveUp = function() {
  _this = this;

  _this.items.loop(function(item, index) {
    var position = elementPosition(item);
    var y = position.y;
    var newY = y - 10;

    if (newY < 0) {
      newY = _this.originalPosition[index].y;
    }

    console.log('ny:' + newY);

    item.style.top = newY + 'px';
  });
}

// The main function
var moveElements = function(ID) {
  me = new MoveElements(ID);

  setInterval(function () {
    me.moveUp();
  }, 100);
}

module.exports = moveElements;
