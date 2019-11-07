{% extends '_layout.swig' %}

{% block title %}{{ title }}{%- if theme.index_with_subtitle and subtitle %} - {{ subtitle }}{%- endif %}{% endblock %}

{% block content %}

  <div class="bg-item bg-cover">
    <div class="container">
      <div style="margin: 0 auto; text-align: center" class="row">
        <div class="col">
          <h1>title</h1>
          <p>descprtion</p>
          <ul>
            <li>2</li>
            <li>3</li>
          </ul>
        </div>
      </div>
    </div>
  </div>

  <script>
    document.getElementsByClassName("bg-item")[0].style.backgroundImage = ""
  </script>

{% endblock %}


