<address class="author">
  {#
    - By default the author links to a predefined url in it's JSON
    - However this can be overwritten anytime
  #}
  {% if author_link %}
    {% set link = author_link %}
  {% else %}
    {% set link = { title: author.name, url: author.url, type: "external" } %}
  {% endif %}

  {% include '__avatar/author__avatar.html.swig' %}
  {% include '__name/author__name.html.swig' %}
  {% include '__title/author__title.html.swig' %}
  {% include '__description/author__description.html.swig' %}
</address>
