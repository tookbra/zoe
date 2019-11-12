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
<script src="{{ echarts_uri }}"></script>
<script type="text/javascript">
let radarChart = echarts.init(document.getElementById('category-radar'));
var radarValueArr = [];

var max = Math.max.apply(null, radarValueArr) + Math.min.apply(null, radarValueArr);

var indicatorArr = [];

{% for category in site.categories.toArray() %}
indicatorArr.push({'name': '{{ category.name }}', 'max': 10});
{% endfor %}


let option = {
    title: {
      left: 'center',
      text: '{{ __("title.categoryRadar") }}',
      textStyle: {
        fontWeight: 500,
        fontSize: 22
      }
    },
    tooltip: {},
    radar: {
      name: {
        textStyle: {
          color: '#3C4858'
        }
      },
      indicator: indicatorArr,
    nameGap: 5,
    center: ['50%','55%'],
    radius: '66%'
  },
  series: [{
    type: 'radar',
    color: ['#3ecf8e'],
    itemStyle: {normal: {areaStyle: {type: 'default'}}},
    data : [
      {
        value : indicatorArr,
        name : '{{ __("title.categoryNumber") }}',
      }
    ]
  }]
};
radarChart.setOption(option);
</script>
