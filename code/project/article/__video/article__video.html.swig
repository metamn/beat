<aside class="article__video">
  <h3>Video</h3>

  {% include "../../../framework/structure/video/video.html.swig" %}

  <div class="video-link">
    {% set link = video.link %}
    {% include "../../../framework/design/typography/elements/link/link.html.swig" %}
  </div>
</aside>
