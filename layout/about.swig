{% extends '_layout.swig' %}
{% block title %}{{ __('title.about') }}: {{ page.about }} | {{ title }}{% endblock %}

{% block content %}
  <div id="about" class="container about-container">
    <div class="card">
      <div class="card-content">
        <div class="row">
          <div class="post-statis col l4 hide-on-med-and-down" data-aos="zoom-in-right">
  {#          <%- partial('_partial/post-statis') %>#}
          </div>
          <div class="col s12 m12 l4">
            <div class="profile center-align">
              <div class="avatar">
                <img src="https://blinkfox.github.io/medias/avatar.jpg" alt="11"
                     class="circle responsive-img avatar-img">
              </div>
              <div class="author">
                <div class="post-statis hide-on-large-only" data-aos="zoom-in-right">
  {#                <%- partial('_partial/post-statis') %>#}
                </div>
                <div class="title">author</div>
                <div class="career">111</div>
                <div class="social-link hide-on-large-only" data-aos="zoom-in-left">
  {#                <%- partial('_partial/social-link') %>#}
                </div>
              </div>
            </div>
          </div>
          <div class="col l4 hide-on-med-and-down" data-aos="zoom-in-left">
            <div class="social-link">
  {#            <%- partial('_partial/social-link') %>#}
            </div>
          </div>
        </div>

        <div class="introduction center-align" data-aos="fade-up">222</div>
      </div>
    </div>
  </div>
{% endblock %}
