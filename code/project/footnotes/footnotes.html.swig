{% if footnotes %}
  <nav class="article__footnotes">
    <h3>Footnotes</h3>

    <ol class="ol">
      {% for link in footnotes %}
        <li class="li footnote" id="footnotes--{{ loop.index }}">
          {% include '../../framework/design/typography/elements/link/link.html.swig' %}
          <a class="link go-back" title="Back to the article" href="#footnote--{{ loop.index }}">
            {% set direction = "left" %}
            {% include '../../framework/design/decorations/arrow-with-triangle/arrow-with-triangle.html.swig' %}
            <span class="text">Back to the article</span>
          </a>
        </li>
      {% endfor %}
    </ol>
  </nav>
{% endif %}
