<aside class="contact-artwork">
  <h3>Contact Artwork</h3>

  {% set article = articles | last %}
  {% set image = article.images[0] %}
  {% set link = image.link %}
  {% set text = image.link.title %}

  {% include '../../framework/design/decorations/figure-with-text-around-circle/figure-with-text-around-circle.html.swig' %}
</aside>
