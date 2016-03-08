<footer class="footer">
  

  <a class="link home" title="{{ site.title }}" href="{{ site.url }}">
    {% include '../../framework/design/decorations/arrow-with-saquo/arrow-with-saquo.html.swig' %}
  </a>

  {% include '../article/__date/article__date.html.swig' %}
  {% include '../article/__categories/article__categories.html.swig' %}

  {% set link = { 'title': 'METAMN', 'url': 'http://metamn.io', 'type': 'external', 'klass': 'flip' } %}
  {% include '../../framework/design/typography/elements/link-with-fliptext/link-with-fliptext.html.swig' %}
</footer>
