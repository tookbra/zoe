{% extends '_layout.swig' %}
{% block title %}{{ __('title.category') }}: {{ page.category }} | {{ title }}{% endblock %}

{% block content %}
  {{ partial('_widget/category/category-cloud.swig', {}, {cache: theme.cache.enable}) }}

  {% if site.categories and site.categories.length > 0 %}
    {{ partial('_widget/tag/tag-wordcloud.swig', {}, {cache: theme.cache.enable}) }}

  {% endif %}
{% endblock %}
