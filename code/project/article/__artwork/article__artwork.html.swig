{% if article.url == "what-some-people-apart-are-up-to-in-2016" %}
  {% include "../../../pages/what-some-people-apart-are-up-to-in-2016/__artwork/what-some-people-apart-are-up-to-in-2016__artwork.html.swig" %}
{% endif %}

{% if article.url == "contact" %}
  {% include '../../../pages/contact/__artwork/contact__artwork.html.swig' %}
{% endif %}

{% if article.url == "web-trends-september-2016-artwork" %}
  {% set images = article.images %}
  {% set slides = article.slides %}
  {% set spacer = article.spacer %}
  {% set rolling_text = article.rolling_text %}

  {% include '../../../pages/web-trends-september-2016-artwork/web-trends-september-2016-artwork.html.swig' %}
{% endif %}
