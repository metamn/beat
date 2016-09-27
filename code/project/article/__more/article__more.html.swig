{% import "../../../framework/helpers/link/link.swig" as l  %}

<div class="article__more">
  {% set direction = "right" %}
  {% set link = { title: article.title, url: article.url } %}

  {{ l.link(link) }}
    {% include '../../../framework/design/decorations/arrow-with-triangle/arrow-with-triangle.html.swig' %}
  </a>

  {{ l.link(link) }}
    {% include '../../../framework/design/decorations/arrow-with-triangle/arrow-with-triangle.html.swig' %}
  </a>

  {{ l.link(link) }}
    {% include '../../../framework/design/decorations/arrow-with-triangle/arrow-with-triangle.html.swig' %}
  </a>
</div>
