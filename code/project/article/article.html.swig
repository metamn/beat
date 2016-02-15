<article class="article {{ article.klass }}">
  {% set link = { title: article.title } %}

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

    {% if (article.display.indexOf('more') !== -1) %}
      {% include '__more/article__more.html.swig' %}
    {% endif %}
  </div>

  {% if (article.images[0]) and (article.display.indexOf('thumb') !== -1) %}
    {% include '__thumb/article__thumb.html.swig' %}
  {% endif %}

  {% if (article.excerpt) and (article.display.indexOf('excerpt') !== -1) %}
    {% include '__excerpt/article__excerpt.html.swig' %}
  {% endif %}

  {% if (article.slides) and (article.display.indexOf('slides') !== -1) %}
    {% include '__slider/article__slider.html.swig' %}
  {% endif %}

  {% if (article.authors) and (article.display.indexOf('authors') !== -1) %}
    {% include '__authors/article__authors.html.swig' %}
  {% endif %}
</article>
