{% include 'vendors.swig' %}

{{- next_js('utils.js') }}

{%- if is_post() %}
  {{- next_js('schemes/pisces.js') }}
{%- endif %}
{{- next_js('zoe-boot.js') }}
