{% macro render(display_toc) %}
  {%- set display_toc = theme.toc.enable and display_toc %}
  {%- if display_toc %}
    {%- set next_toc_number = page.toc_number or theme.toc.number %}
    {%- set next_toc_max_depth = page.toc_max_depth or theme.toc.max_depth or 6 %}
    {%- set toc = toc(page.content, { "class": "nav", list_number: next_toc_number, max_depth: next_toc_max_depth }) %}
    {%- set display_toc = toc.length > 1 and display_toc %}
  {%- endif %}

  <div class="post-toc-widget">
    <div class="post-toc-title"><i class="fa fa-list-alt"></i>&nbsp;&nbsp;{{ __('sidebar.toc') }}</div>
    {%- if display_toc %}
      <div id="post-toc-content" class="post-toc-content">{{ toc }}</div>
    {%- endif %}
  </div>
{% endmacro %}
