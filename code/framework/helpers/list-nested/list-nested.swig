{% macro makeLI(elem) %}
  <li>

  {% if elem.items %}
    <div>{{ elem.title }}</div>
    {{ makeUL(elem.items) }}
  {% else %}
    {{ elem.title }}
  {% endif %}

  </li>
{% endmacro %}


{% macro makeUL(list) %}
  <ul>

  {% for item in list %}
    {% if item.items %}
      {{ makeLI(item) }}
    {% else %}
      <li>{{ item.title }}</li>
    {% endif %}
  {% endfor %}

  </ul>
{% endmacro %}
