<aside class="wts16a web-trends-september-2016-artwork__custom-cursors">
  <h3>Custom cursors</h3>

  {% set count = [1,2,3,4,5,6,7,8,9,10] %}
  {% for i in count %}
    <div class="cursor">
      <img class="img" src="{{ site.url }}{{ site.images }}arrow-right.png" alt="Arrow right" />
    </div>

    <div class="cursor">
      <img class="img" src="{{ site.url }}{{ site.images }}arrow-top-left.png" alt="Arrow top left" />
    </div>
  {% endfor %}
</aside>
