{% import '../../../framework/helpers/slider/slider.swig' as s %}

<section class="article__slider">
  <h3>Slider</h3>

  {{ s.slider('Article slider') }}
    {% for slide in article.slides %}
      <div class='slide'>
        {% set image = slide %}
        {% include '../../../framework/structure/figure/figure.html.swig' %}
      </div>
    {% endfor %}
    </div>
  </section>

  {% set klass = "article__bullets" %}
  {% set slides = article.slides %}
  {% include '../../../framework/structure/slider/__bullets/slider__bullets.html.swig' %}
</section>
