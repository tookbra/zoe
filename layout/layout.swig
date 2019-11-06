<!DOCTYPE html>
<html lang="{{ config.language }}">
<head>
    {{ partial('_partials/head/head.swig', {}, {cache: theme.cache.enable}) }}
{#    {% include '_partials/head/head-unique.swig' %}#}
    {{- next_inject('head') }}
    <title>{% block title %}{% endblock %}</title>
    {{ partial('_third-party/analytics/index.swig', {}, {cache: theme.cache.enable}) }}
    {{ partial('_scripts/noscript.swig', {}, {cache: theme.cache.enable}) }}
</head>
