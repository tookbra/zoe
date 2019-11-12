{% extends '_layout.swig' %}

{% block title %}{{ title }}{%- if theme.index_with_subtitle and subtitle %} - {{ subtitle }}{%- endif %}{% endblock %}

{% block content %}
  <div class="home">
    <div class="bg-item bg-cover">
      <div class="container">
        <div style="margin: 0 auto; text-align: center">
          <div class="col">
            <h1>{{ title }}</h1>
            <p>{{ subtitle }}</p>
            {%- if theme.home.menu %}
              <nav class="index-nav">
                <ul>
                  {%- for name, path in theme.home.menu %}
                    {%- set menuIcon = path.split('||')[1] | trim  %}
                    {%- set url = path.split('||')[0] | trim  %}
                    <li>
                      <a href="{{ url }}" {%- if value.blank %} target="_blank" {%- endif %} title="{{ name }}">
                      <i class="fa fa-fw fa-{{ menuIcon }}"></i>
                      </a>
                    </li>
                  {%- endfor %}
                </ul>
              </nav>
            {%- endif %}
          </div>
        </div>
      </div>
    </div>
  </div>

  <script>
    document.getElementsByClassName("bg-item")[0].style.backgroundImage = "url('https://images6.alphacoders.com/731/731739.png')"
  </script>

{% endblock %}


