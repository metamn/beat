<footer class="footer">
  <h3>Footer</h3>

  {% set link = { 'title': site.title, 'url': site.url, 'type': 'external', 'klass': 'flip beat' } %}
  {% include '../../framework/design/typography/elements/link-with-fliptext/link-with-fliptext.html.swig' %}

  by

  {% set link = { 'title': 'METAMN', 'url': 'http://metamn.io', 'type': 'external', 'klass': 'flip metamn' } %}
  {% include '../../framework/design/typography/elements/link-with-fliptext/link-with-fliptext.html.swig' %}
</footer>
