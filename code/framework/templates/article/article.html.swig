{% include '../head/head.html.swig' %}
{% include '../icons/icons.html.swig' %}

{% include '../../../project/header/header.html.swig' %}

<section class="article">
  {% set display = ['title_with_url'] %}
  {% set article = { title: title, url: url, date: date, categories: categories, excerpt: excerpt, display: display } %}

  {% include '../../../project/article/__title/article__title.html.swig' %}

  <div class='article__content'>
    {% autoescape true %}
    {% block content %}{% endblock %}
    {% endautoescape %}
  </div>

  <div class="article-meta">
    {% include '../../../project/article/__date/article__date.html.swig' %}
    {% include '../../../project/article/__categories/article__categories.html.swig' %}
    {% include '../../../project/article/__excerpt/article__excerpt.html.swig' %}
  </div>
</section>

{% include '../footer/footer.html.swig' %}
