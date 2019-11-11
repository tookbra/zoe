{% extends '_layout.swig' %}

{% block title %}{{ __('title.archive') }} | {{ title }}{% endblock %}

{% block content %}
  {{ partial('_partials/header/index.swig', {}, {cache: theme.cache.enable}) }}
{% endblock %}
