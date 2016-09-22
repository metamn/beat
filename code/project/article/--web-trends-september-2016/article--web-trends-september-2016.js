var listExpandable = require('./../../../framework/design/decorations/list-expandable/list-expandable.js');
var callbackForListExpandable = require('./../--web-trends/article--web-trends.js');

if (document.querySelector('.article--web-trends-september-2016 .list-expandable')) {
  listExpandable('.article--web-trends-september-2016 .list-expandable', callbackForListExpandable);
}
