{% extends '../../framework/templates/article/article.html.swig' %}
{% block content %}

  <blockquote class="blockquote">
    {{ excerpt | safe }}
  </blockquote>

{% endblock %}
