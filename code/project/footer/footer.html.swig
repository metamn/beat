<footer class="footer">

  {% set link = { 'title': site.title, 'url': site.url, 'type': 'external', 'klass': 'flip beat' } %}
  {% include '../../framework/design/typography/elements/link-with-fliptext/link-with-fliptext.html.swig' %}

  {% if article %}
    {% include '../article/__date/article__date.html.swig' %}
    {% include '../article/__categories/article__categories.html.swig' %}
  {% else %}
    by
  {% endif %}

  {% set link = { 'title': 'METAMN', 'url': 'http://metamn.io', 'type': 'external', 'klass': 'flip metamn' } %}
  {% include '../../framework/design/typography/elements/link-with-fliptext/link-with-fliptext.html.swig' %}
</footer>
