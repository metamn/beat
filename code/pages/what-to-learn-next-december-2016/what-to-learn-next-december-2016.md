{% set list = list %}
{% include "../../framework/design/decorations/list-expandable/list-expandable.html.swig" %}

{% markdown %}

## Designing for thumbs

Responsive design is not just about fitting content to various screen sizes but also about designing for thumb interactions.

Mobile, phablets, tablets and now touch sensitive laptops are hold differently. We should put interactive elements near to the user's thumb to make their effort to interact with the app / site comfortable.
{% endmarkdown %}

{% set image = images[3] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% set image = images[4] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% set image = images[5] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% set image = images[6] %}
{% include '../../framework/structure/figure/figure.html.swig' %}
{% markdown %}


## Card Based User Interfaces

[Cards](https://www.smashingmagazine.com/2016/10/designing-card-based-user-interfaces/)
organize information into chunks of content, and users appreciate chunked content because it aids for *scannability*: it helps avoid walls of text, which can appear intimidating or time-consuming and allows users to dive deep into their interests quicker.
{% endmarkdown %}

{% set image = images[0] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% markdown %}

Cards *divide content into meaningful sections*, similar to the way text paragraphs group sentences into distinct sections. They can gather various pieces of information to form one coherent piece of content.
{% endmarkdown %}

{% set image = images[1] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% markdown %}

Cards are responsive. They can restructure themselves to fit any breakpoint or screen size. They can reveal the minimum necessary content on any screen size then expand it when necessary.

{% endmarkdown %}

{% set image = images[2] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% markdown %}


## Page transitions

[barba.js](http://barbajs.org/how-it-works.html) is a small (4.4kb minified and gzipped), flexible and dependency free library that helps you creating fluid and smooth transitions between your website's pages.

It helps reducing the delay between your pages, minimizing browser HTTP requests and enhancing your user's web experience.

barba.js uses PJAX (aka push state ajax) to enhance the user's experience.

This technique consist of preventing the normal link behavior, changing the browser url manually, and manually injecting the new content in the page. In this way there will be no browser "hard refresh".

{% endmarkdown %}

<figure class="figure">
  <picture class="picture">
    <img class="img" src="{{ site.url }}{{ site.images }}barba-js-grid.gif" alt="Barba.js demo">
  </picture>
  <figcaption class="figcaption">
    Barba.js demo
  </figcaption>
</figure>

{% markdown %}

## Goodies

A list of lists, small tricks and hacks worth to keep in the mind:

- https://codepen.io/jonneal/pen/PzGYEE?editors=0100
- https://github.com/you-dont-need/You-Dont-Need-Javascript
- https://sarcadass.github.io/granim.js/examples.html
- http://tawian.io/text-spinners/
- http://bennettfeely.com/image-effects/
- https://css-tricks.com/things-ive-learned-css-grid-layout/
- https://24ways.org/2016/what-next-for-css-grid-layout/
- https://www.smashingmagazine.com/2016/11/css-grids-flexbox-and-box-alignment-our-new-system-for-web-layout/
- https://www.smashingmagazine.com/2016/09/boosting-conversion-rates-with-psychologically-validated-principles/
- https://www.smashingmagazine.com/2016/07/how-to-make-wordpress-hard-for-clients-to-mess-up/
- https://www.smashingmagazine.com/2016/05/smart-responsive-design-patterns-or-when-off-canvas-isnt-good-enough/
- https://codyhouse.co/demo/advanced-search-form/index.html
- https://codyhouse.co/demo/schedule-template/index.html
- https://24ways.org/2016/responsive-display-text
- https://24ways.org/2016/css-writing-modes/
- https://thenewcode.com/1096/Wrapping-Animated-3D-Marquee-Text-with-Pure-CSS
- https://thenewcode.com/699/Web-Developer-Reading-List-SVG-Imagemaps
- https://tympanus.net/Development/BlockRevealers/form.html
- https://tympanus.net/Development/TiltHoverEffects/
- https://tympanus.net/Development/MediaPopUpEffect/
- https://tympanus.net/Development/LineMaker/index4.html
- https://tympanus.net/Development/AboveBeneath/index2.html
- https://tympanus.net/Development/InteractivePoints/
{% endmarkdown %}
