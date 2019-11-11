<style type="text/css">
  #category-radar {
    width: 100%;
    height: 360px;
  }
</style>

<div class="container" data-aos="fade-up">
  <div class="card">
    <div id="category-radar" class="card-content"></div>
  </div>
</div>

{%- set echarts_uri = theme.vendors.echarts or next_vendors('echarts/echarts.min.js') %}
<script defer src="{{ echarts_uri }}"></script>
<script type="text/javascript">
let radarChart = echarts.init(document.getElementById('category-radar'));
</script>
