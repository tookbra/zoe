{% extends '_layout.swig' %}

{% block title %}{{ __('title.tag') }}: {{ page.tag }} | {{ title }}{% endblock %}

{% block content %}
  {{ partial('_widget/tag/tag-cloud.swig', {}, {cache: theme.cache.enable}) }}

  <article id="articles" class="container articles" style="padding-top: inherit;">
    <div class="row tags-posts">
      {%- for post in page.posts.toArray() %}
        <div class="article tag-post col s12 m6 l4" data-aos="fade-up">
          <div class="card">
            <a href="{{ url_for(post.path) }}">
              <div class="card-image tag-image">
                {%- if post.img %}
                  <img src="{{ post.img }}" class="responsive-img" alt="{{ post.title }}">
                {%- else %}
                  {%- set featureImg = '/images/featureimages/0.jpg' %}
                  {%- if theme.featureImages %}
                    {%- set featureImg = theme.featureImages | random %}
                  {%- endif %}
                  <img src="{{ featureImg }}" class="responsive-img" alt="{{ post.title }}">
                {%- endif %}
                <span class="card-title">{{ post.title }}</span>
              </div>
            </a>
            <div class="card-content article-content">
              <div class="publish-info">
                <span class="publish-date">
                    <i class="fa fa-clock-o icon-date"></i>{{ date(post.date, config.date_format) }}
                </span>
                <span class="publish-author">
                  {%- if post.categories and post.categories.length > 0 %}
                    <i class="fa fa-bookmark fa-fw icon-category"></i>
                    {%- for category in post.categories.toArray() %}
                        <a href="{{ url_for(category.path) }}" class="post-category">
                          {{ category.name }}
                        </a>
                    {%- endfor %}
                  {%- endif %}
                </span>
              </div>
            </div>
          </div>
        </div>
      {%- endfor %}
    </div>
  </article>
{% endblock %}
