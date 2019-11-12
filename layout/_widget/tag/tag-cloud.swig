<div id="tags" class="container chip-container">
  <div class="card">
    <div class="card-content">
      <div class="tag-title center-align">
        <i class="fa fa-tags">&nbsp;&nbsp;{{ __('menu.tags') }}</i>
      </div>
      <div class="tag-chips">
        {% if site.tags and site.tags.length %}
          {% for tags in site.tags.toArray() %}
            {{ zoe_tag(url_for(tags.path), tags.name, tags.length, is_tag() and tags.name == page.tag) }}
          {% endfor %}
        {% endif %}
      </div>
    </div>
  </div>
</div>
