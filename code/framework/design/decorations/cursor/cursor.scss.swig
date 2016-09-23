// Custom cursor
//
// - https://developer.mozilla.org/en-US/docs/Web/CSS/cursor
//
// $item - where to apply the new cursor
// $cursor-image-name - the (preferably) PNG image to replace the cursor
// $x, $y - adjust the top of the new cursor to match the top of the old cursor. Otherwise on cursor change it will flip
// $default - the fallback cursor type if the image is not supported. It can be any CSS cursor property
//
// Experimental - some .PNGs are breaking all browsers under OSX while working over all other platforms
//
// Styleguide cursor
@mixin cursor($item, $cursor-image-name, $x: 0, $y: 0, $default: auto) {
  #{$item} {
    &:hover {
      cursor: url({{ site.url }}{{ site.images }}#{$cursor-image-name}) #{$x} #{$y}, #{$default};
    }
  }
}
