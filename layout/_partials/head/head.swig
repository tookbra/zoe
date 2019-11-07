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

<link rel="stylesheet" href="{{ url_for(theme.css) }}/zoe.css">

<script id="hexo-configurations">
  var CONFIG = {
    root: '{{ config.root }}',
    scheme: '{{ theme.scheme }}',
    version: '{{ next_version }}',
  }
</script>
