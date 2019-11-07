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
  <div class="container-wrapper">
    {% block content %}{% endblock %}
    <footer class="footer">
    </footer>
  </div>
</body>