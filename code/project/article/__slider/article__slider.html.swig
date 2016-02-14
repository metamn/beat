{% import '../../../framework/helpers/slider/slider.swig' as s %}

{{ s.slider('Article slider', 'article__slider') }}
  {% for slide in article.slides %}
    {% set image = slide %}
    {% include '../../../framework/structure/figure/figure.html.swig' %}
  {% endfor %}
  </div>

  {% set klass = "article__bullets" %}
  {% set slides = article.slides %}
  {% include '../../../framework/structure/slider/__bullets/slider__bullets.html.swig' %}
</section>
