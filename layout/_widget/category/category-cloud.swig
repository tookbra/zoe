<div id="category-cloud" class="container chip-container">
  <div class="card">
    <div class="card-content">
      <div class="tag-title center-align">
        <i class="fa fa-bookmark"></i>&nbsp;&nbsp;{{ __('title.category') }}
      </div>
      <div class="tag-chips">
        {% if site.categories and site.categories.length %}
          {% for categories in site.categories %}
            <a href="{{ url_for(categories.path) }}" class="tag-could" data-toggle="tooltip" data-placement="top" title="{{categories.name}}">{{ categories.name }}</a>
            {{ zoe_tag(categories.name, 2, 3) }}
          {% endfor %}
        {% endif %}
      </div>
    </div>
  </div>
</div>
