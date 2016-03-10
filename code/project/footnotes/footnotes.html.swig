{% if footnotes %}
  <nav class="article__footnotes">
    <h3>Footnotes</h3>

    <ol class="ol">
      {% for link in footnotes %}
        <li class="li" id="footnotes--{{ loop.index }}">
          {% include '__footnote/footnotes__footnote.html.swig' %}
        </li>
      {% endfor %}
    </ol>
  </nav>
{% endif %}
