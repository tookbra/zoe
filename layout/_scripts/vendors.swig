{%- set js_vendors = {} %}
{%- set js_vendors = js_vendors | attr('anime', 'anime.min.js') %}

{%- for name, internal in js_vendors %}
  {%- set internal_script = next_vendors(internal) %}
  <script src="{{ theme.vendors[name] or internal_script }}"></script>
{%- endfor %}
