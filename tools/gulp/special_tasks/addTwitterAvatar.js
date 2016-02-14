// Loads what-some-people-apart-are-up-to-in-2016.json and extends each profile with the Twitter avatar


// Plugins
var gulp = require('gulp'),
    plumber = require('gulp-plumber'),
    onError = require('../utils/onError'),

    data = require('gulp-data'),
    fs = require('fs'),
    twitterAPI = require('twitter');



// Twitter setup
var Twitter = require('twitter');

var t = new Twitter({
  consumer_key: '7DDlJdQFjOdZH2idGTifxL68A',
  consumer_secret: 'AJzFukL6ss4jlQfkJTONdpI3kasAbK0jSSZkb8PqwngwBwWYwp',
  access_token_key: '15352486-XpqGNG89qiRBFeD0qXY8Ldd0QSWm8tb3m8MZoO4WS',
  access_token_secret: 'XMMvAzKazKUSp0QeNGB4ubh9C2iPKtjAUyNQ99P8qvT4N'
});



// Script setup
var jsonFileName = '/code/pages/what-some-people-apart-are-up-to-in-2016/what-some-people-apart-are-up-to-in-2016.json';



var ata_addAvatar = function() {
  var json = require('../../..' + jsonFileName);

  for (var i = 0; i < json.content.length; i++) {
    var avatar = '';
    var property1 = json.content[i].property1;
    var id = property1.twitter;

    if (id != '') {
      t.get('users/show', {screen_name: id}, function(error, response, property1){
        if (!error) {
          property1.avatar = response.profile_image_url;
          console.log(property1.avatar);
        } else {
          console.log("Twitter error: " + JSON.stringify(error));
        }
      });

      json.content[i].property1 = property1;
    }
  }



  return json;
}



gulp.task('addTwitterAvatar', function() {
  var json = ata_addAvatar();
  console.log(JSON.stringify(json, null, 2));

  fs.openSync(process.cwd() + jsonFileName, 'w');
  fs.appendFileSync(process.cwd() + jsonFileName, JSON.stringify(json, null, 2));
});
