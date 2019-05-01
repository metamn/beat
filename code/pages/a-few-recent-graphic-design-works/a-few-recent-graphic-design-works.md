{% markdown %}

I don't consider myself a graphic designer &mdash; I handle better interactive mediums like user interfaces.

However I like playing sometimes with my iPad with these results:

{% endmarkdown %}

{% for image in images %}
{% include '../../framework/structure/figure/figure.html.swig' %}
{% endfor %}
