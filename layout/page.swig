{% extends '_layout.swig' %}

{% block content %}
  <article id="articles" class="container articles">
    <div>{{ page.posts.length }}</div>
{#    {%- for post in page.posts.toArray() %}#}
{#      {{ partial('_macro/post.swig', {post: post, is_index: true}) }}#}
{#    {%- endfor %}#}
  </article>
{% endblock %}
