<nav class="article__authors">
  <h3>Authors</h3>

  {% for author in authors %}
    {% set author = author.property1 %}
    {% include '../../../framework/structure/author/author.html.swig' %}
  {% endfor %}
</nav>
