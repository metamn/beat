// Loads what-some-people-apart-are-up-to-in-2016.json and extends each profile with the Twitter avatar


// Plugins
var gulp = require('gulp'),
    plumber = require('gulp-plumber'),
    onError = require('../utils/onError'),

    data = require('gulp-data'),
    twitterAPI = require('twitter');



// Twitter setup
var Twitter = require('twitter');

var t = new Twitter({
  consumer_key: '7DDlJdQFjOdZH2idGTifxL68A',
  consumer_secret: 'AJzFukL6ss4jlQfkJTONdpI3kasAbK0jSSZkb8PqwngwBwWYwp',
  access_token_key: '15352486-XpqGNG89qiRBFeD0qXY8Ldd0QSWm8tb3m8MZoO4WS',
  access_token_secret: 'XMMvAzKazKUSp0QeNGB4ubh9C2iPKtjAUyNQ99P8qvT4N'
});



// Sccript setup
var src = require('../../../code/pages/what-some-people-apart-are-up-to-in-2016/what-some-people-apart-are-up-to-in-2016.json');


gulp.task('addTwitterAvatar', function() {
  var content = src.content;

  for (var i = 0; i < content.length; i++) {
    var id = content[i].property1.twitter;
    if (id) {
      t.get('users/show', {screen_name: id}, function(error, response){
        if (!error) {
          console.log(response.profile_image_url);
        }
      });
    }

  }
});
