{% extends '../../framework/templates/article/article.html.swig' %}
{% block content %}

  {% include 'is-it-web-or-photoshop.md' %}

  {% for image in slides %}
    {% include '../../framework/structure/figure/figure.html.swig' %}
  {% endfor %}

{% endblock %}
