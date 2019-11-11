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
            {%- if theme.menu %}
              <nav class="index-nav">
                <ul>
                  {%- for name, path in theme.menu %}
                    {%- set menuIcon = path.split('||')[1] | trim  %}
                    {%- set url = path.split('||')[0] | trim  %}
                    <li>
                      <a href="{{ url }}" {%- if value.blank %} target="_blank" {%- endif %}>
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
    document.getElementsByClassName("bg-item")[0].style.backgroundImage = "url('https://img-tookbra.oss-cn-hangzhou.aliyuncs.com/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20191107213618.jpg')"
  </script>

{% endblock %}


