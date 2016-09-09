var select = require('./../../../framework/helpers/js/select.js');
var klass = require('./../../../framework/helpers/js/klass.js');

// When the list is expanded show "More"
// - useful on mobile; the user doesn't need to scroll up to access the article
var showMoreForListExpandable = function(listID) {
  var list = select(listID);
  var article = list[0].parentElement.parentElement;
  console.log(article.innerHTML);
  var more = article.getElementsByClassName("article__more");

  klass(more[0], 'article__more--inactive', 'remove');
  klass(more[0], 'article__more--active', 'add');
}

module.exports = showMoreForListExpandable;
