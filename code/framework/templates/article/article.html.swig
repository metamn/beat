{% include '../head/head.html.swig' %}
{% include '../icons/icons.html.swig' %}

{% include '../../../project/intro/intro.html.swig' %}
{% include '../../../project/header/header.html.swig' %}

<article class="article">
  {% set display = ['title_with_url'] %}
  {% set article = { title: title, url: url, date: date, categories: categories, excerpt: excerpt, display: display, images: images } %}

  {% include '../../../project/article/__title/article__title.html.swig' %}

  <div class='article__content'>
    {% block content %}{% endblock %}
  </div>

  {% include '../../../project/footnotes/footnotes.html.swig' %}
  {% include '../../../project/article/__categories-and-date/article__categories-and-date.html.swig' %}
</article>

{% include '__seo/article__seo.html.swig' %}


{% include '../../../project/footer/footer.html.swig' %}
{% include '../footer/footer.html.swig' %}
