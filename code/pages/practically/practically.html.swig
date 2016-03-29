{% extends '../../framework/templates/article/article.html.swig' %}

{% block content %}
  {% include 'practically.md' %}
{% endblock %}

{% block more %}
  {% include '__checklist/practically__checklist.html.swig' %}
{% endblock %}
