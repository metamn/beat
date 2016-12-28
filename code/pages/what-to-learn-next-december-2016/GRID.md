# CSS Grid Layout

## Flexbox vs Grid

### Flick on page load

https://jakearchibald.com/2014/dont-use-flexbox-for-page-layout/

- Flexbox: Content dictates the layout
- Grid: Container dictates the layout

This means when loading the page, if the layout is set with flexbox, it can flick, since the content defines the size of the flexbox container.
When using grid the size of the container is predefined and it won't flick, ie after loading the content into the container the size of the container won't change.
