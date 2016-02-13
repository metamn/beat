{% import '../../../framework/helpers/slider/slider.swig' as s %}

{{ s.slider('Article slider', 'article__slider') }}
  {% for slide in article.slides %}
    {% set image = slide %}
    {% include '../../../framework/structure/figure/figure.html.swig' %}
  {% endfor %}
  </div>
</section>

{% set klass = "article__bullets" %}
{% include '../../../framework/structure/slider/__bullets/slider__bullets.html.swig' %}
