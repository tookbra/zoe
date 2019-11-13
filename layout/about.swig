{% extends '_layout.swig' %}
{% block title %}{{ __('title.about') }}: {{ page.about }} | {{ title }}{% endblock %}

{% block content %}
  <div id="about" class="about container about-container">
    <div class="card">
      <div class="card-content">
        <div class="row">
          <div class="post-statis col l4 hide-on-med-and-down" data-aos="zoom-in-right">
            {{ partial('_partials/post-statis.swig', {}, {cache: theme.cache.enable}) }}
          </div>
          <div class="col s12 m12 l4">
            <div class="profile center-align">
              <div class="avatar">
                <img src="https://avatars2.githubusercontent.com/u/16607624?s=460&v=4" alt="11"
                     class="circle responsive-img avatar-img">
              </div>
              <div class="author">
                <div class="post-statis hide-on-large-only" data-aos="zoom-in-right">
  {#                <%- partial('_partial/post-statis') %>#}
                </div>
                <div class="title">{{ author }}</div>
                <div class="career"></div>
                <div class="social-link hide-on-large-only" data-aos="zoom-in-left">
                  {{ partial('_partials/social-link.swig', {}, {cache: theme.cache.enable}) }}
                </div>
              </div>
            </div>
          </div>
          <div class="col l4 hide-on-med-and-down" data-aos="zoom-in-left">
            <div class="social-link">
              {{ partial('_partials/social-link.swig', {}, {cache: theme.cache.enable}) }}
            </div>
          </div>
        </div>

        <div class="introduction center-align" data-aos="fade-up"></div>


        <div class="github-chart">
          <div class="title center-align aos-init aos-animate" data-aos="zoom-in-up">
            <i class="fa fa-github"></i>&nbsp;&nbsp;GitHub
          </div>
          <img src="https://ghchart.rshah.org/tookbra" alt="GitHub Chart" data-action="zoom">
        </div>
      </div>
    </div>
  </div>
{% endblock %}
