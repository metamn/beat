<section class="what-some-people-apart-are-up-to-in-2016__artwork">
  <h3>Artwork</h3>

  {% set authors = article.authors %}
  {% set author_link = { title: article.title, url: article.url } %}
  {% include '../../../project/article/__authors/article__authors.html.swig' %}
</section>
