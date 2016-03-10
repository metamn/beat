<footer class="footer">

  {% if article %}
    {% include '--article/footer--article.html.swig' %}
  {% endif %}

  {% set link = { 'title': 'METAMN', 'url': 'http://metamn.io', 'type': 'external', 'klass': 'flip' } %}
  {% include '../../framework/design/typography/elements/link-with-fliptext/link-with-fliptext.html.swig' %}
</footer>
