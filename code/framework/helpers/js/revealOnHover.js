var l = require('./../../helpers/js/loop.js');
var select = require('./../../helpers/js/select.js');
var klass = require('./../../helpers/js/klass.js');

// Reveal on Hover
//
// Reveal a new item when hovering an element
//
// $sourceID - a list of elements for hover
// $destinationID - a list of elements to be activated
// $klassName  - on hover the activated element will have added a new klass 'klassName--active'
//
var revealOnHover = function(sourceID, destinationID, klassName) {
  var source = select(sourceID);
  var destination = select(destinationID);

  // Attach event handler
  source.loop(function(item, index) {
    item.addEventListener("mouseover", function() {
      revealItem(destination, index, klassName);
    })
  });

  // Reveal new elements
  function revealItem(destination, index, klassName) {
    klass(destination, klassName + '--active', 'removeAll');
    klass(destination[index], klassName + '--active', 'add');
  }
}

module.exports = revealOnHover;
