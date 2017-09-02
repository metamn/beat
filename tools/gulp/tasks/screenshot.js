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



// Do the screenshot
var screenshot = function(url) {
  fileName = urlToFilename(url);
  console.log(fileName);
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
        data = getJSONData(fileName);
        if (data) {
          urls = data.urls;
          for (var i = 0; i < urls.length; i++) {
            screenshot(urls[i]);
          }
        }
      }))
  }
});
