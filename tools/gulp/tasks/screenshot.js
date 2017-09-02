// Create sceenshots

// Plugins
var gulp = require('gulp'),
    plumber = require('gulp-plumber'),
    onError = require('../utils/onError'),
    getJSONData = require('../utils/getJSONData'),

    rename = require('gulp-rename'),
    data = require('gulp-data'),
    fs = require('fs'),
    imageResize = require('gulp-image-resize'),
    gulpif = require('gulp-if'),

    webshot = require('webshot'),
    path = require('path'),

    imagemin = require('gulp-imagemin'),
    pngquant = require('imagemin-pngquant');

// Configuration
var paths = require('./../config');



// URL to filename
// - http://showroom.littleworkshop.fr/ => showroom.littleworkshop
var urlToFilename = function(url) {
  var ret = url.replace('http://', '');
  ret = ret.replace('https://', '');
  ret = ret.replace('www.', '');
  ret = ret.replace('/', '');
  ret = ret.replace(/\./g, '-');
  return ret;
}



// Create single screenshot
var screenshot = function(url, options, suffix, folder) {
  var fileName = urlToFilename(url);
  var dest = folder + fileName + '-' + suffix + '.png';
  webshot(url, dest, options, function(err) {
    console.log('Creating ' + dest);
  });
}


// Create multiple screenshots
var screenshots = function(url, sizes, folder) {
  for (var i = 0; i < sizes.length; i++) {
    var options = {
      screenSize: {
        width: sizes[i].width,
        height: sizes[i].height
      }
    }
    screenshot(url, options, sizes[i].suffix, folder);
  }
}


// The main task
gulp.task('screenshot', function() {
  var fileName = process.argv[4];

  if (fileName === undefined ) {
    console.log('Usage: gulp screenshot --file <complete-path-to-imagelist-file.json>');
  } else {
    return gulp.src(fileName)
      .pipe(plumber({errorHandler: onError}))
      .pipe(data(function(fileName) {
        var data = getJSONData(fileName);
        var folder = path.dirname(fileName.path) + '/@assets/images/';
        if (data) {
          var urls = data.urls;
          var sizes = data.sizes;
          for (var i = 0; i < urls.length; i++) {
            screenshots(urls[i], sizes, folder);
          }
        }
      }))
  }
});
