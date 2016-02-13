<article class="article">
  {% set link = { title: article.title } %}

  {% if (article.images[0]) and (article.display.indexOf('thumb') !== -1) %}
    {% include '__thumb/article__thumb.html.swig' %}
  {% endif %}

  {% if (article.excerpt) and (article.display.indexOf('excerpt') !== -1) %}
    {% include '__excerpt/article__excerpt.html.swig' %}
  {% endif %}

  <div class="meta">
    {% if (article.title) and (article.display.indexOf('title') !== -1) %}
      {% include '__title/article__title.html.swig' %}
    {% endif %}

    {% if (article.date) and (article.display.indexOf('date') !== -1) %}
      {% include '__date/article__date.html.swig' %}
    {% endif %}

    {% if (article.categories) and (article.display.indexOf('categories') !== -1) %}
      {% include '__categories/article__categories.html.swig' %}
    {% endif %}

    {% if (article.display.indexOf('content') === -1) %}
      {% include '__more/article__more.html.swig' %}
    {% endif %}
  </div>

  {% if (article.display.indexOf('content') === -1) %}
    {% include '__content/article__content.html.swig' %}
  {% endif %}
</article>
