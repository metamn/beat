<div class="author__avatar">
  {% if author.avatar %}
    <img class="img" src="{{ author.avatar }}" alt="{{ author.name }}">
  {% else %}
    <span class="initiale">{{ author.name | first }}</span>
  {% endif %}
</div>
