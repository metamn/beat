<nav class="list-expandable">
  <h3>Expandable list</h3>

  <ul class="ul">
    {% set display = 3 %}
    {% set more = 4 %}

    {% for item in list %}
      {% if (loop.index == more) %}
        {% include "__more/list-expandable__more.html.swig" %}
      {% else %}
        {% if (loop.index <= display) or loop.last %}
          {% set index = loop.index %}
          {% set klass = "active" %}
        {% else %}
          {% set index = loop.index - 1 %}
          {% set klass = "inactive" %}
        {% endif %}

        {% if loop.last %}
          {% set index = loop.index - 1 %}
        {% endif %}

        {% include "__item/list-expandable__item.html.swig" %}
      {% endif %}
    {% endfor %}
  </ul>
</nav>
