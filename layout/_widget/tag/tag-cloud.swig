<div id="tags" class="container chip-container">
  <div class="card">
    <div class="card-content">
      <div class="tag-title center-align">
        <i class="fa fa-tags">&nbsp;&nbsp;{{ __('menu.tags') }}</i>
      </div>
      <div class="tag-chips">
        {% if site.tags and site.tags.length %}
          {% for tags in site.tags %}
            <a href="{{ url_for(tags.path) }}" class="tag-could" data-toggle="tooltip" data-placement="top" title="{{tags.name}}">{{ tags.name }}</a>
            {{ zoe_tag(tags.name, 2, 3) }}
          {% endfor %}
        {% endif %}
      </div>
    </div>
  </div>
</div>
