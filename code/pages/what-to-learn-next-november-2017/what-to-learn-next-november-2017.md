{% markdown %}

Another year<sup id="footnote--1">[1](#footnotes--1)</sup> another retrospective.

It's good to have the time to review as a whole what are the new tricks and techniques on the web scene, and to see if the last year's tricks were learned or skipped.

This year was lucky; the goals set up a year ago were touched at least.
{% endmarkdown %}

{% set list = list2 %}
{% include "../../framework/design/decorations/list-expandable/list-expandable.html.swig" %}

{% markdown %}

Card based user interfaces and Page transitions can be marked done.

I've managed to come up with an elegant UI for an online marketplace web app displaying hundreds of categories and tens of different product types using cards as seen in Google's Material Design.

The result is not Yet Another Material Design Clone but its principles applied to a specific use case.

{% endmarkdown %}

{% set image = images[0] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% set image = images[1] %}
{% include '../../framework/structure/figure/figure.html.swig' %}

{% markdown %}
On Page transitions I didn't went with barba.js but with Vue. While barba.js is just a trick Vue is a complete ecosystem. A story coming about Vue soon.

## So what to learn next?

{% endmarkdown %}
