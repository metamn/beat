<aside class="article__excerpt">
  <h3 class="title">Excerpt</h3>

  <div class="excerpt">
    {% if (article.display.indexOf('excerpt_quote') !== -1) %}
      <blockquote class="blockquote">
        {{ article.excerpt | safe }}
      </blockquote>
    {% else %}
      {{ article.excerpt | safe }}
    {% endif %}
  </div>
</aside>
