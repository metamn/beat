{% if article.url == "what-some-people-apart-are-up-to-in-2016" %}
  {% include "../../../pages/what-some-people-apart-are-up-to-in-2016/__artwork/what-some-people-apart-are-up-to-in-2016__artwork.html.swig" %}
{% endif %}

{% if article.url == "contact" %}
  {% include '../../../pages/contact/__artwork/contact__artwork.html.swig' %}
{% endif %}

{% if article.url == "web-trends-september-2016-artwork" %}
  {% set images = article.images %}
  {% set slides = article.slides %}
  {% set spacers = article.spacers %}
  {% set rolling_text = article.rolling_text %}
  {% set marquees = article.marquees %}
  {% set videos = article.videos %}

  {% include '../../../pages/web-trends-september-2016-artwork/web-trends-september-2016-artwork.html.swig' %}
{% endif %}

{% if article.url == "web-trends-september-2017-artwork" %}
  {% set images = article.images %}
  {% set slides = article.slides %}
  {% set spacers = article.spacers %}
  {% set rolling_text = article.rolling_text %}
  {% set marquees = article.marquees %}
  {% set videos = article.videos %}

  {% include '../../../pages/web-trends-september-2017-artwork/web-trends-september-2017-artwork.html.swig' %}
{% endif %}

{% if article.url == "what-to-learn-next-december-2016-artwork" %}
  {% include '../../../pages/what-to-learn-next-december-2016-artwork/what-to-learn-next-december-2016-artwork.html.swig' %}
{% endif %}

{% if article.url == "what-to-learn-next-november-2017-artwork" %}
  {% include '../../../pages/what-to-learn-next-november-2017-artwork/what-to-learn-next-november-2017-artwork.html.swig' %}
{% endif %}


{% if article.url == 'unicorn-forever-artwork' %}
  {% include '../../../pages/unicorn-forever-artwork/unicorn-forever-artwork.html.swig' %}
{% endif %}

{% if article.url == '2018-artwork' %}
  {% include '../../../pages/2018-artwork/2018-artwork.html.swig' %}
{% endif %}
