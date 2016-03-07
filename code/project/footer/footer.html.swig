<footer class="footer">
  <h3>Footer</h3>

  <a class="link" title="{{ site.title }}" href="{{ site.url }}">
    {% include '../../framework/design/decorations/arrow-with-saquo/arrow-with-saquo.html.swig' %}
  </a>

  {% set link = { title: "Metamn", url: "http://metamn.io", "type": "external" } %}
  {% include '../../framework/design/typography/elements/link/link.html.swig' %}
</footer>
