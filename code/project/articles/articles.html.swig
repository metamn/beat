<section class="articles">
  <h3 class="articles__title">Articles</h3>

  {% for article in articles %}
    {% if (article.title) and (article.title != "Home") %}
      {% include '../article/article.html.swig' %}
    {% endif %}
  {% endfor %}
</section>
