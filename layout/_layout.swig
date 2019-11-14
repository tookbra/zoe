<!DOCTYPE html>
<html lang="{{ config.language }}">
<head>
    {{ partial('_partials/head/head.swig', {}, {cache: theme.cache.enable}) }}
    {% include '_partials/head/head-unique.swig' %}
    <title>{% block title %}{% endblock %}</title>
    {{ partial('_third-party/analytics/index.swig', {}, {cache: theme.cache.enable}) }}
    {{ partial('_scripts/noscript.swig', {}, {cache: theme.cache.enable}) }}
</head>

<body itemscope itemtype="http://schema.org/WebPage">
    {% if not is_home() %}
      {{ partial('_partials/header/index.swig', {}, {cache: theme.cache.enable}) }}
    {% endif %}
    <main class="main" {% if is_home() %} style="margin-top: inherit;" {% endif %}>
      {% block content %}{% endblock %}

      {% include '_partials/comments.swig' %}
    </main>

    {% if not is_home() %}
      {% block footer %}
        {% include '_partials/footer.swig' %}
      {% endblock %}
    {% endif %}

    {{ partial('_scripts/index.swig', {}, {cache: theme.cache.enable}) }}


    {{- next_inject('bodyEnd') }}
</body>
