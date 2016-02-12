<article class="article">
  <h3 class="article__title">{{ article.title }}</h3>

  <div class="article__content">
    {% set content = '../../pages/' %}
    {% set content += article.url %}
    {% set content += '/' %}
    {% set content += article.url %}
    {% set content += '.html.swig' %}
    {% include content %}
  </div>
</article>
