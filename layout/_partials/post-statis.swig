{%- if site.posts and site.posts.length > 0 %}
  <div class="statis">
    <span class="count"><a href="{{ url_for('/') }}">{{ site.posts.length }}</a></span>
    <span class="name">{{ __("title.post") }}</span>
  </div>
{%- endif %}

{%- if site.categories and site.categories.length > 0 %}
  <div class="statis">
    <span class="count"><a href="{{ url_for('/categories') }}">{{ site.categories.length }}</a></span>
    <span class="name">{{ __("title.category") }}</span>
  </div>
{%- endif %}

{%- if site.tags and site.tags.length > 0 %}
  <div class="statis">
    <span class="count"><a href="{{ url_for('/tags') }}">{{ site.tags.length }}</a></span>
    <span class="name">{{ __("title.tag") }}</span>
  </div>
{%- endif %}
