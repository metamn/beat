{% if footnotes %}
  <nav class="article__footnotes">
    <h3>Footnotes</h3>

    <ol class="ol">
      {% for link in footnotes %}
        <li class="li footnote" id="footnotes--{{ loop.index }}">
          <span class="flex">
            {% include '../../framework/design/typography/elements/link/link.html.swig' %}

            <a class="link go-back" title="Back to the footnote" href="#footnote--{{ loop.index }}">
              {% set direction = "top" %}
              {% include '../../framework/design/decorations/arrow-with-triangle/arrow-with-triangle.html.swig' %}
              <span class="text">Back to the footnote</span>
            </a>
          </span>
        </li>
      {% endfor %}
    </ol>
  </nav>
{% endif %}
