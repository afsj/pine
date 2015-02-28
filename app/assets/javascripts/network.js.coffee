$ ->
  $('.chart-container').highcharts
    chart: type: 'bar'
    title: text: 'Degrees'
    yAxis: title: text: 'Fruit eaten'
    series: [
      {
        name: 'PhD / Doctorate'
        data: [
          1
        ]
      }
      {
        name: 'Masters'
        data: [
          5
        ]
      }
    ]
  return