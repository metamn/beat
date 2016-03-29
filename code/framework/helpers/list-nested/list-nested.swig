{% macro makeLI(elem, level) %}
  <li class="list-nested__sublist">

  {% if elem.items %}
    <div>{{ elem.title }}</div>
    {% set level = level + 1 %}
    {{ makeUL(elem.items, level) }}
  {% endif %}

  </li>
{% endmacro %}


{% macro makeUL(list, level) %}
  <ul class="list-nested list-nested--level-{{ level }}">

  {% for item in list %}
    {% if item.items %}
      {{ makeLI(item, level) }}
      {% set level = level - 1 %}
    {% else %}
      {% include '../../structure/list-nested/__item/list-nested__item.html.swig' %}
    {% endif %}
  {% endfor %}

  </ul>
{% endmacro %}
