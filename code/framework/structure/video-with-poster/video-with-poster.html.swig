<aside class="video-with-poster">
  <h3>{{ video.title }}</h3>

  {% include "../video/video.html.swig" %}

  {% set image = video.image %}
  {% include "../figure/figure.html.swig" %}
</aside>
