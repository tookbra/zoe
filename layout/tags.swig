{% extends '_layout.swig' %}

{% block title %}{{ __('title.tag') }}: {{ page.tag }} | {{ title }}{% endblock %}

{% block content %}
  {{ partial('_widget/tag/tag-cloud.swig', {}, {cache: theme.cache.enable}) }}

  {% if site.tags and site.tags.length > 0 %}
    {{ partial('_widget/tag/tag-wordcloud.swig', {}, {cache: theme.cache.enable}) }}

  {% endif %}
{% endblock %}
