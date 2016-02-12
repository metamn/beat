{% import "../../../framework/helpers/link/link.swig" as l  %}

<h3 class="article__title">
  {% if (article.display.indexOf('title_with_url') !== -1) %}
    {{ l.link(link) }}{{ link.title }}</a>
  {% else %}
    {{ article.title }}
  {% endif %}
</h3>
