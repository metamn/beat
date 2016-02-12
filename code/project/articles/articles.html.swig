<section class="articles">
  <h3 class="articles__title">Articles</h3>

  {% for article in articles %}
    {% include '../article/article.html.swig' %}
  {% endfor %}
</section>
