<aside class="wts16a web-trends-september-2016-artwork__marquee">
  <h3>Marquee</h3>

  {% for marquee in marquees %}
    <div class="marquee marquee--{{ loop.index }}">{{ marquee | safe }}</div>
  {% endfor %}
</aside>
