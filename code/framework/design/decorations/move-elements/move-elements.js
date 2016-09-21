// Move elements
//
// Move elements from bottom to top using requestAnimationFrame
// - http://creativejs.com/resources/requestanimationframe/
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
    var newY = y - Math.floor((Math.random() * 20) + 1);

    if (newY < 0) {
      newY = _this.originalPosition[index].y;
    }

    item.style.top = newY + 'px';
  });

  requestAnimationFrame(_this.moveUp.bind(_this));
}

// The main function
var moveElements = function(ID) {
  me = new MoveElements(ID);
  me.moveUp();
}

module.exports = moveElements;
