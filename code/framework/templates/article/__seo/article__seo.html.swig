{# http://jsonld.com/article/ #}
<script type="application/ld+json">
{
  "@context": "http://schema.org",
  "@type": "Article",
  "headline": "{{ article.title }}",
  "alternativeHeadline": "{{ article.excerpt }}",
  {% if article.images[0] %}
    {% set image = article.images[0] %}
    {% set image_url = site.url + site.images + image.name + '_mobile.png' %}
    "image": "{{ image_url }}",
  {% endif %}
  "author": "Csongor Bartus",
  "genre": "web design and development",
  "keywords": "{{ article.categories | join(' ') }}",
  "url": "{{ site.url }}{{ article.url }}",
  "datePublished": "{{ article.date }}",
  "description": "{{ article.excerpt }}"
}
</script>
