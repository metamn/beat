{% macro makeLI(elem) %}
  <li class="list-nested__sublist">

  {% if elem.items %}
    <div>{{ elem.title }}</div>
    {{ makeUL(elem.items) }}
  {% endif %}

  </li>
{% endmacro %}


{% macro makeUL(list) %}
  <ul class="list-nested">

  {% for item in list %}
    {% if item.items %}
      {{ makeLI(item) }}
    {% else %}
      {% include '../../structure/list-nested/__item/list-nested__item.html.swig' %}
    {% endif %}
  {% endfor %}

  </ul>
{% endmacro %}
