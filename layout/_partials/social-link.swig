{%- if theme.social %}
  {%- for name, link in theme.social %}
    <a href="{{ link }}" class="tooltipped" target="_blank" data-tooltip="{{ name }}" data-position="top" data-delay="50">
      <i class="fa fa-fw fa-{{ link.split('||')[1] | trim }}"></i>
    </a>
  {%- endfor %}
{%- endif %}
