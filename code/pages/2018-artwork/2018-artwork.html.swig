{% import "../../framework/helpers/link/link.swig" as l  %}

{% set link = {title: "More Themes baby", url: "https://morethemes.baby", type: "external"} %}

{% set image = images[0] %}
{% set image = {title: "More Themes Baby", name: "more", extension: ".png", link: link} %}

{{ l.link(image.link) }}
{% include "../../framework/structure/figure/figure.html.swig" %}
</a>