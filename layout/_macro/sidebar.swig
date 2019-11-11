<style>
  #articleContent h1::before,
  #articleContent h2::before,
  #articleContent h3::before,
  #articleContent h4::before,
  #articleContent h5::before,
  #articleContent h6::before {
    display: block;
    content: " ";
    height: 100px;
    margin-top: -100px;
    visibility: hidden;
  }
  #articleContent :focus {
    outline: none;
  }
  .toc-fixed {
    position: fixed;
    top: 64px;
  }
  .toc-widget {
    padding-left: 20px;
  }
  .toc-widget .toc-title {
    margin: 35px 0 15px 0;
    padding-left: 17px;
    font-size: 1.5rem;
    font-weight: bold;
    line-height: 1.5rem;
  }
  .toc-widget ol {
    padding: 0;
    list-style: none;
  }
  #toc-content ol {
    padding-left: 10px;
  }
  #toc-content ol li {
    padding-left: 10px;
  }
  #toc-content .toc-link:hover {
    color: #42b983;
    font-weight: 700;
    text-decoration: underline;
  }
  #toc-content .toc-link::before {
    background-color: transparent;
    max-height: 25px;
  }
  #toc-content .is-active-link {
    color: #42b983;
  }
  #toc-content .is-active-link::before {
    background-color: #42b983;
  }
  #floating-toc-btn {
    position: fixed;
    right: 15px;
    bottom: 76px;
    padding-top: 15px;
    margin-bottom: 0;
    z-index: 998;
  }
  #floating-toc-btn .btn-floating {
    width: 48px;
    height: 48px;
  }
  #floating-toc-btn .btn-floating i {
    line-height: 48px;
    font-size: 1.4rem;
  }
</style>
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
      <div id="post-toc-content">{{ toc }}</div>
    {%- endif %}
  </div>
{% endmacro %}
