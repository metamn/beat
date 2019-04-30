{% extends '../../framework/templates/article/article.html.swig' %}
{% block content %}

  {% include 'lost-and-found-works.md' %}

  {% for image in images %}
    {% include '../../framework/structure/figure/figure.html.swig' %}
  {% endfor %}

{% endblock %}
