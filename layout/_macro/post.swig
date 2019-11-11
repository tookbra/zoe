{%- if is_index %}
  <div class="row article-row">
    <div class="article col l12">
      <div class="card">
        {%- if post.header !== false %}
          <a href="{{ url_for(post.path) }}">
            <div class="card-image">
              {%- if post.img %}
                <img src="{{ post.img }}" class="responsive-img" alt="{{ post.title }}">
              {%- else %}
                {%- set featureImg = '/images/featureimages/0.jpg' %}
                {%- if theme.featureImages %}
                  {%- set featureImg = Math.abs(hashCode(post.title) % len) %}
                {%- endif %}
                <img src="{{ featureImg }}" class="responsive-img" alt="{{ post.title }}">
              {%- endif %}
              <span class="card-title">{{ post.title }}</span>
            </div>
          </a>
        {%- endif %}

        <div class="card-content article-content">
          <div class="summary block-with-text">
            {%- if post.summary and post.summary.length > 0 %}
              {{ post.summary }}
            {%- else %}
              {{ strip_html(post.content).substring(0, 120) }}
            {%- endif %}
          </div>
          <div class="publish-info">
          <span class="publish-date">
              <i class="fa fa-clock fa-fw icon-date"></i>{{ date(post.date, config.date_format) }}
          </span>
            <span class="publish-author">
            {%- if post.categories and post.categories.length > 0 %}
              <i class="fa fa-bookmark fa-fw icon-category"></i>
              {%- for category in page.categories %}
              <a href="{{ category.path  }}" class="post-category">
                    {{ category.name }}
                </a>
            {%- endfor %}
            {%- endif %}
          </span>
          </div>
        </div>

        {%- if post.tags and post.tags.length > 0 %}
          <div class="card-action article-tags">
            {%- for tag in page.tags %}
              <a href="{{ tag.path }}">
                <span class="chip bg-color"{{ tag.name }}</span>
              </a>
            {%- endfor %}
          </div>
        {%- endif %}
      </div>
    </div>
  </div>
{% else %}
  {%- set date_diff = date(post.date) != date(post.updated) %}
  {%- set time_diff = time(post.date) != time(post.updated) %}
  {%- set datetime_diff = date_diff or time_diff %}

  <div class="post-detail">
    <div class="card">
      <div class="card-content article-info">
        <div class="row tag-cate">
          <div class="col s7">
            {%- if post.tags and post.tags.length > 0 %}
              <div class="article-tag">
                {% for tag in post.tags %}
                  <a href="{{ url_for(tag.path) }}">
                    <span class="chip bg-color">{{ tag.name }}</span>
                  </a>
                {% endfor %}
              </div>
            {%- else  %}
              <div class="article-tag">
                <span class="chip bg-color">{{ __('counter.tag_cloud.zero') }}</span>
              </div>
            {%- endif %}
          </div>
          <div class="col s5 right-align">
            {%- if post.categories and post.categories.length > 0 %}
              <div class="post-cate">
                <i class="fa fa-bookmark fa-fw icon-category"></i>
                {% for categorie in post.categories %}
                  <a href="{{ url_for(categorie.path) }}"  class="post-category">
                    {{ categorie.name }}
                  </a>
                {% endfor %}
              </div>
            {%- endif %}
          </div>
        </div>

        <div class="post-info">
          {%- if theme.post_meta.created_at %}
            <div class="post-date info-break-policy">
              <i class="far fa-calendar-minus fa-fw"></i>{{ __('post.created') }}:&nbsp;&nbsp;
              {{ date(post.date, config.date_format) }}
            </div>
          {%- endif %}

          {%- if theme.post_meta.updated_at.enable and datetime_diff %}
            {%- set display_updated = not theme.post_meta.updated_at.another_day or theme.post_meta.updated_at.another_day and date_diff %}
            {%- if display_updated or not theme.post_meta.created_at %}
              <div class="post-date info-break-policy">
                <i class="far fa-calendar-check fa-fw"></i>{{ __('post.modified') }}:&nbsp;&nbsp;
                {{ date(post.updated, config.date_format) }}
              </div>
            {%- endif %}
          {%- endif %}

          {%- if config.symbols_count_time.symbols %}
            <div class="info-break-policy">
              <i class="far fa-file-word fa-fw"></i>{{ __('symbols_count_time.count') }}:&nbsp;&nbsp;
              {{ symbolsCount(post) }}
            </div>
          {%- endif %}

          {%- if config.symbols_count_time.time %}
            <div class="info-break-policy">
              <i class="fa fa-clock fa-fw"></i>{{ __('symbols_count_time.time') }}:&nbsp;&nbsp;
              {{ symbolsTime(post, theme.symbols_count_time.awl, theme.symbols_count_time.wpm, __('symbols_count_time.time_minutes')) }}
            </div>
          {%- endif %}
        </div>
      </div>
      <hr class="clearfix">
      <div class="card-content article-card-content">
        <div id="articleContent">
          {{ page.content  }}
        </div>
        <hr/>
      </div>
    </div>
  </div>
{%- endif %}
