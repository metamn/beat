var l = require('./../../../framework/helpers/js/loop.js');
var select = require('./../../../framework/helpers/js/select.js');


var randomZindex = function(authorsID) {
  var authors = document.querySelectorAll(authorsID);
  var author = Math.floor((Math.random() * authors.length));

  console.log('a:' + authors);

  for (var i = 0; i < authors.length; i++) {
    authors[i].style.zIndex = 0;

    if (i == author) {
      authors[i].style.zIndex = 1;
    }
  }
}


if (document.querySelector('.what-some-people-apart-are-up-to-in-2016__artwork .author')) {
  window.setInterval(function(){
    randomZindex('.what-some-people-apart-are-up-to-in-2016__artwork .author');
  }, 1000);
}
