{%- set js_vendors = {} %}
{%- set js_vendors = js_vendors | attr('anime', 'anime.min.js') %}

{%- for name, internal in js_vendors %}
  {%- set internal_script = next_vendors(internal) %}
  <script src="{{ theme.vendors[name] or internal_script }}"></script>
{%- endfor %}

<canvas class="fireworks" style="position: fixed;left: 0;top: 0;z-index: 1; pointer-events: none;" ></canvas>
<script type="text/javascript" src="//cdn.bootcss.com/animejs/2.2.0/anime.min.js"></script>
<script type="text/javascript" src="/lib/animation/fireworks.js"></script>
