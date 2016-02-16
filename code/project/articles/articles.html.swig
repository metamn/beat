<section class="articles">
  <h3 class="articles__title">Articles</h3>

  {% for article in articles %}
    {% if (article.title) %}
      {% if (article.status != 'draft') %}
        {% include '../article/article.html.swig' %}
      {% endif %}
    {% endif %}
  {% endfor %}
</section>
