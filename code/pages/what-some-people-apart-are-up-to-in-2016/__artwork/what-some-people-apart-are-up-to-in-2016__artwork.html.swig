<section class="what-some-people-apart-are-up-to-in-2016__artwork">
  <h3>Artwork</h3>

  {% set authors = article.authors %}
  {% set links = [site.url, article.url] %}
  {% set author_link = links | join('') %}
  {% include '../../../project/article/__authors/article__authors.html.swig' %}
</section>
