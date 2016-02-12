{% import "../../../framework/helpers/link/link.swig" as l  %}

<div class="article__more">
  {% set direction = "right" %}
  {{ l.link(link) }}
    {% include '../../../framework/design/decorations/arrow-with-saquo/arrow-with-saquo.html.swig' %}
  </a>
</div>
