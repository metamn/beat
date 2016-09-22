<aside class="wts16a web-trends-september-2016-artwork__background-animation">
  <h3>Background animation</h3>

  {% set count = [1,2,3,4,5,6,7,8,9] %}
  {% for i in count %}
    <div class="arrow move-element">
      {% set direction = "top" %}
      {% include '../../../framework/design/decorations/arrow-with-triangle/arrow-with-triangle.html.swig' %}
    </div>
  {% endfor %}
  
</aside>
