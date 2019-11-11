{%- set jqcloud_css_uri = theme.vendors.jqcloud or next_vendors('jqcloud/jqcloud.css') %}
<link rel="stylesheet" href="{{ jqcloud_css_uri }}">
<style type="text/css">
  #tag-wordcloud {
    width: 100%;
    height: 300px;
  }
</style>

<div class="container" data-aos="fade-up">
  <div class="card">
    <div id="tag-wordcloud" class="card-content"></div>
  </div>
</div>

{#{%- set jqcloud_js_uri = theme.vendors.jqcloud or next_vendors('jqcloud/jqcloud-1.0.4.min.js') %}#}
{#<script type="text/javascript" src="{{ jqcloud_js_uri }}"></script>#}
{#<script type="text/javascript">#}

{#</script>#}
