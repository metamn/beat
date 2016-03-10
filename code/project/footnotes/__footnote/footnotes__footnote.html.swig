<span class="footnotes__footnote">
  {% include '../../../framework/design/typography/elements/link/link.html.swig' %}

  <a class="link go-back" title="Back to the footnote" href="#footnote--{{ loop.index }}">
    {% set direction = "top" %}
    {% include '../../../framework/design/decorations/arrow-with-triangle/arrow-with-triangle.html.swig' %}
    <span class="text">Back to the footnote</span>
  </a>
</span>
