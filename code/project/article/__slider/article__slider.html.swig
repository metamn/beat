{% import '../../../framework/helpers/slider/slider.swig' as s %}

<section class="article__slider">
  <h3>Slider</h3>

  {{ s.slider('Article slider') }}
    {% for slide in slides %}
      <div class='slide'>
        {% set image = slide %}
        {% set image.link = '' %}
        {% include '../../../framework/structure/figure/figure.html.swig' %}
      </div>
    {% endfor %}
    </div>
  </section>

  {% set klass = "article__bullets" %}
  {% include '../../../framework/structure/slider/__bullets/slider__bullets.html.swig' %}
</section>
