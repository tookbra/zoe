{% extends '_layout.swig' %}
{% import '_macro/sidebar.swig' as sidebar_template with context %}
{% block title %}{{ page.title }} | {{ title }}{% endblock %}

{% block content %}
  <main class="post-container">
    <div class="row">
      <div class="col s12 m12 l9">
        {{ partial('_macro/post.swig', {post: post} ) }}
      </div>
      <div class="expanded col l3 hide-on-med-and-down">
        {{ sidebar_template.render(true) }}
      </div>
    </div>
  </main>
{% endblock %}
