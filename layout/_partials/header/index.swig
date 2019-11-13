<header class="navbar-fixed">
  <nav class="bg-color nav-transparent header-nav">
    <div class="nav-wrapper container">
      <div class="brand-logo">
        <a href="/" class="waves-effect waves-light">
          {%- if theme.logo %}
            <img src="{{ theme.logo }}" class="logo-img" alt="LOGO">
          {%- endif %}
          <span class="logo-span">{{ theme.title }}</span>
        </a>
      </div>
      {{ partial('_partials/header/navigation.swig', {}, {cache: theme.cache.enable}) }}
    </div>
  </nav>
</header>
<div class="bg-cover pd-header about-cover" style="background-image: url('https://w.wallhaven.cc/full/49/wallhaven-499pe1.jpg');">
  <div class="container">
    <div class="row">
      <div class="col s10 offset-s1 m8 offset-m2 l8 offset-l2">
        <div class="brand">
          <div class="title center-align">
            {{ title }}
          </div>

          <div class="description center-align">
            {{ subtitle }}
          </div>
        </div>
      </div>
    </div>
    <script>
    document.getElementsByClassName("bg-cover")[0].style.backgroundImage = "url('https://w.wallhaven.cc/full/49/wallhaven-499pe1.jpg')"
    </script>
  </div>
</div>
