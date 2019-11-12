<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=2">
<meta name="theme-color" content="{{ theme.android_chrome_color }}">
<meta name="generator" content="Hexo {{ hexo_version }}">
{%- if theme.favicon %}
    <link rel="icon" href="<%- theme.favicon %>">
{%- endif %}

{%- if rss %}
    <link rel="alternate" href="{{ url_for(rss) }}" title="{{ title }}" type="application/atom+xml">
{%- endif %}

<!-- 百度禁止转码 页面不缓存 -->
{%- if theme.disable_baidu_transformation %}
    <meta http-equiv="Cache-Control" content="no-transform">
    <meta http-equiv="Cache-Control" content="no-siteapp">
{%- endif %}
<!-- google 网站所有者验证 -->
{%- if theme.google_site_verification %}
    <meta name="google-site-verification" content="{{ theme.google_site_verification }}">
{%- endif %}
<!-- baidu 网站所有者验证 -->
{%- if theme.baidu_site_verification %}
    <meta name="baidu-site-verification" content="{{ theme.baidu_site_verification }}">
{%- endif %}

{%- set font_awesome_uri = theme.vendors.fontawesome or next_vendors('font-awesome/css/font-awesome.min.css') %}
<link rel="stylesheet" href="{{ font_awesome_uri }}">

{%- set materialize_uri = theme.vendors.materialize or next_vendors('materialize/materialize.min.css') %}
<link rel="stylesheet" href="{{ materialize_uri }}">

<link rel="stylesheet" href="{{ url_for(theme.css) }}/zoe.css">

{%- set jquery_uri = theme.vendors.jquery or next_vendors('jquery/jquery.min.js') %}
<script src="{{ jquery_uri }}"></script>

<script id="hexo-configurations">
  var Zoe = window.Zoe || {};
  var CONFIG = {
      root: '{{ config.root }}',
      scheme: '{{ theme.scheme }}',
      version: '{{ next_version }}',
      exturl: {{ theme.exturl }},
      sidebar: {{ theme.sidebar | json }},
      copycode: {{ theme.codeblock.copy_button | json }},
      back2top: {{ theme.back2top | json }},
      bookmark: {{ theme.bookmark | json }},
      algolia: {
          appID: '{{ config.algolia.applicationID }}',
          apiKey: '{{ config.algolia.apiKey }}',
          indexName: '{{ config.algolia.indexName }}',
          hits: {{ theme.algolia_search.hits | json }},
          labels: {{ theme.algolia_search.labels | json }}
      },
      localsearch: {{ theme.local_search | json }},
      path: '{{ config.search.path }}',
      motion: {{ theme.motion | json }},
      translation: {
          copy_button: '{{ __("post.copy_button") }}',
          copy_success: '{{ __("post.copy_success") }}',
          copy_failure: '{{ __("post.copy_failure") }}'
      },
      sidebarPadding: 40
  };
</script>
