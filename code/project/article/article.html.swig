{% import "../../framework/helpers/classname/classname.swig" as c  %}
{% set classname = c.classname(article.title) %}

<article class="article article--{{ article.url }}">
  {% if (article.date) and (article.display.indexOf('date') !== -1) %}
    {% include '__date/article__date.html.swig' %}
  {% endif %}

  {% if (article.title) and (article.display.indexOf('title') !== -1) %}
    {% include '__title/article__title.html.swig' %}
  {% endif %}

  {% if (article.categories) and (article.display.indexOf('categories') !== -1) %}
    {% include '__categories/article__categories.html.swig' %}
  {% endif %}

  {% if (article.display.indexOf('more') !== -1) %}
    {% include '__more/article__more.html.swig' %}
  {% endif %}

  {% if (article.images[0]) and (article.display.indexOf('thumb') !== -1) %}
    {% include '__thumb/article__thumb.html.swig' %}
  {% endif %}

  {% if (article.excerpt) and (article.display.indexOf('excerpt') !== -1) %}
    {% include '__excerpt/article__excerpt.html.swig' %}
  {% endif %}

  {% if (article.slides) and (article.display.indexOf('slides') !== -1) %}
    {% set slides = article.slides %}
    {% include '__slider/article__slider.html.swig' %}
  {% endif %}

  {% if (article.authors) and (article.display.indexOf('authors') !== -1) %}
    {% set authors = article.authors %}
    {% include '__authors/article__authors.html.swig' %}
  {% endif %}

  {% if (article.display.indexOf('artwork') !== -1) %}
    {% include '__artwork/article__artwork.html.swig' %}
  {% endif %}

  {% if (article.list) and (article.display.indexOf('list') !== -1) %}
    {% include '__list/article__list.html.swig' %}
  {% endif %}
</article>
