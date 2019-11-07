{% extends '_layout.swig' %}

{% block title %}{{ title }}{%- if theme.index_with_subtitle and subtitle %} - {{ subtitle }}{%- endif %}{% endblock %}

{% block content %}

  <div class="bg-item bg-cover">
    <div class="container">
      <div style="margin: 0 auto; text-align: center" class="row">
        <div class="col">
          <h1>Ok Boom</h1>
          <p>“勿忘初心，方得始终”</p>
          <nav>
            <ul>
              <li>
                <a href="fa fa-camera-retro">

                </a>
              </li>
              <li>
                <a href="fa fa-camera-retro">

                </a>
              </li>
            </ul>
          </nav>
        </div>
      </div>
    </div>
  </div>

  <script>
    document.getElementsByClassName("bg-item")[0].style.backgroundImage = "url('https://img-tookbra.oss-cn-hangzhou.aliyuncs.com/%E5%BE%AE%E4%BF%A1%E5%9B%BE%E7%89%87_20191107213618.jpg')"
  </script>

{% endblock %}


