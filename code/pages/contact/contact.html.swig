{% extends '../../framework/templates/contact/contact.html.swig' %}
{% block content %}

  <section class="contact">
    {% include '__send-email/contact__send-email.html.swig' %}
    {% include '__follow/contact__follow.html.swig' %}
  </section>

{% endblock %}
