<div id="category-cloud" class="container chip-container">
  <div class="card">
    <div class="card-content">
      <div class="tag-title center-align">
        <i class="fa fa-bookmark"></i>&nbsp;&nbsp;{{ __('title.category') }}
      </div>
      <div class="tag-chips">
        {% if site.categories and site.categories.length %}
          {% for categories in site.categories.toArray() %}
            {{ zoe_tag(url_for(categories.path), categories.name, categories.length) }}
          {% endfor %}
        {% endif %}
      </div>
    </div>
  </div>
</div>
