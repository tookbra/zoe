{%- if theme.menu %}
<ul class="right nav-menu">
  {%- for name, path in theme.menu %}
    {%- set menuIcon = path.split('||')[1] | trim  %}
    {%- set url = path.split('||')[0] | trim  %}
    <li class="hide-on-med-and-down nav-item">
      <a href="{{ url }}" class="waves-effect waves-light">
        <i class="fa fa-fw fa-{{ menuIcon }}" style="zoom: 0.6;"></i>
        <span>{{ name }}</span>
      </a>
    </li>
  {%- endfor %}
  <li>
    <a class="modal-trigger waves-effect waves-light">
      <i id="searchIcon" class="fa fa-fw fa-search" title="search" style="zoom: 0.85;"></i>
    </a>
  </li>
</ul>
{%- endif %}
