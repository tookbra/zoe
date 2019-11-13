<article id="prenext-posts" class="prev-next articles">
  <div class="row article-row">
    {%- if page.prev %}
    <div class="article col s12 m6" data-aos="fade-up">
      <div class="article-badge left-badge text-color">
        <i class="fa fa-chevron-left"></i>&nbsp;{{ __('post.pre') }}</div>
      <div class="card">
        <a href="{{ url_for(page.prev.path) }}">
          <div class="card-image">
            {%- if page.prev.img %}
              <img src="{{ page.img }}" class="responsive-img" alt="{{ page.prev.title }}">
            {%- else %}
              {%- set featureImg = '/images/featureimages/0.jpg' %}
              {%- if theme.featureImages %}
                {%- set featureImg = theme.featureImages | random %}
              {%- endif %}
              <img src="{{ featureImg }}" class="responsive-img" alt="{{ page.prev.title }}">
            {%- endif %}
            <span class="card-title">{{ page.prev.title }}</span>
          </div>
        </a>
        <div class="card-content article-content">
          <div class="summary block-with-text">
            {%- if page.prev.summary and page.prev.summary.length > 0 %}
              {{ page.prev.summary }}
            {%- else %}
              {{ strip_html(page.prev.content).substring(0, 120) }}
            {%- endif %}
          </div>
          <div class="publish-info">
            <span class="publish-date">
              <i class="fa fa-clock-o icon-date"></i>{{ date(page.prev.date, config.date_format) }}
            </span>
            <span class="publish-author">
              {%- if page.prev.categories and page.prev.categories.length > 0 %}
                <i class="fa fa-bookmark fa-fw icon-category"></i>
                {%- for category in page.prev.categories.toArray() %}
                  <a href="{{ url_for(category.path) }}" class="post-category">
                      {{ category.name }}
                    </a>
                {%- endfor %}
              {%- endif %}
            </span>
          </div>
        </div>
        {%- if page.prev.tags and page.prev.tags.length > 0 %}
          <div class="card-action article-tags">
            {%- for tag in page.prev.tags.toArray() %}
              <a href="{{ url_for(tag.path) }}">
                <span class="chip bg-color">{{ tag.name }}</span>
              </a>
            {%- endfor %}
          </div>
        {%- endif %}
      </div>
    </div>
    {%- endif %}

    {%- if page.next %}
    <div class="article col s12 m6" data-aos="fade-up" style="position: relative;">
      <div class="article-badge right-badge text-color">
      {{ __('post.next') }}&nbsp;<i class="fa fa-chevron-right"></i>
      </div>
      <div class="card">
        <a href="{{ url_for(page.next.path) }}">
          <div class="card-image">
            {%- if page.next.img %}
              <img src="{{ page.img }}" class="responsive-img" alt="{{ page.next.title }}">
            {%- else %}
              {%- set featureImg = '/images/featureimages/0.jpg' %}
              {%- if theme.featureImages %}
                {%- set featureImg = theme.featureImages | random %}
              {%- endif %}
              <img src="{{ featureImg }}" class="responsive-img" alt="{{ page.next.title }}">
            {%- endif %}
            <span class="card-title">{{ page.title }}</span>
          </div>
        </a>
        <div class="card-content article-content">
          <div class="summary block-with-text">
            {%- if page.next.summary and page.next.summary.length > 0 %}
              {{ page.next.summary }}
            {%- else %}
              {{ strip_html(page.next.content).substring(0, 120) }}
            {%- endif %}
          </div>
          <div class="publish-info">
            <span class="publish-date">
              <i class="fa fa-clock-o icon-date"></i>{{ date(page.next.date, config.date_format) }}
            </span>
            <span class="publish-author">
              {%- if page.next.categories and page.next.categories.length > 0 %}
                <i class="fa fa-bookmark fa-fw icon-category"></i>
                {%- for category in page.next.categories.toArray() %}
                <a href="{{ url_for(category.path) }}" class="post-category">
                      {{ category.name }}
                    </a>
              {%- endfor %}
              {%- endif %}
            </span>
          </div>
        </div>
        {%- if page.next.tags and page.next.tags.length > 0 %}
          <div class="card-action article-tags">
            {%- for tag in page.next.tags.toArray() %}
              <a href="{{ url_for(tag.path) }}">
                <span class="chip bg-color">{{ tag.name }}</span>
              </a>
            {%- endfor %}
          </div>
        {%- endif %}
      </div>
    </div>
    {%- endif %}
  </div>
</article>
