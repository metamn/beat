# HTML5 Video

## Bugs, Tweaks

1. IE11 and Edge 13 gives an "Error: unsuported video type or invalid file path" because Github Pages is not able to serve videos for these browsers: http://stackoverflow.com/questions/15951012/can-mime-types-of-github-pages-files-be-configured

## Poster images

- IE 11, Edge 13, 14, Safari 10 ... needs them
- The video player in the browser resizes the poster image so we don't have to create @2x and fully responsive versions, we can go with a single poster image
