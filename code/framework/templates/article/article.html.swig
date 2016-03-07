{% include '../head/head.html.swig' %}
{% include '../icons/icons.html.swig' %}

{% include '../../../project/header/header.html.swig' %}

<article class="article">
  {% set display = ['title_with_url'] %}
  {% set article = { title: title, url: url, date: date, categories: categories, excerpt: excerpt, display: display } %}

  {% include '../../../project/article/__title/article__title.html.swig' %}

  <div class='article__content'>
    {% block content %}{% endblock %}
  </div>

  {% if footnotes %}
    <nav class="article__footnotes">
      <h3>Footnotes</h3>

      <ol class="ol">
        {% for link in footnotes %}
          <li class="li footnote" id="footnotes--{{ loop.index }}">
            {% include '../../design/typography/elements/link/link.html.swig' %}
            <a class="link go-back" title="Back to the article" href="#footnote--{{ loop.index }}">
              {% set direction = "left" %}
              {% include '../../design/decorations/arrow-with-triangle/arrow-with-triangle.html.swig' %}
              <span class="text">Back to the article</span>
            </a>
          </li>
        {% endfor %}
      </ol>
    </nav>
  {% endif %}
</article>

{% include '../../../project/footer/footer.html.swig' %}

{% include '../footer/footer.html.swig' %}
