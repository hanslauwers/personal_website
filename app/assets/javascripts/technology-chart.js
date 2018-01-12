function generateTechnologyChart(technologies){
    var items = [{title:"item1",value:3, color:"#717171"}, {title:"item2",value:2,color:"#252525"}, {title:"item3",value:3,color:"#f6f6f6"}];
    var itemdatapoints = [];
     items.forEach(function(obj){
        itemdatapoints.push({"technology": obj.title, "level": obj.value, "color": obj.color});
    });
     
    var chart = AmCharts.makeChart("chartdiv", {
        "theme": "light",
        "type": "serial",
      "startDuration": 2,
        "dataProvider": technologies,
        "valueAxes": [{
            "position": "left",
            "title": "Level",
        "minimum": 0,
        "maximum": 5
        }],
        "graphs": [{
            "balloonText": "[[category]]: <b>[[value]]</b>",
            "fillColorsField": "color",
            "fillAlphas": 1,
            "lineAlpha": 0.1,
            "type": "column",
            "valueField": "level"
        }],
        "depth3D": 20,
      "angle": 30,
        "chartCursor": {
            "categoryBalloonEnabled": false,
            "cursorAlpha": 0,
            "zoomable": false
        },
        "categoryField": "technology",
        "categoryAxis": {
            "gridPosition": "start",
            "labelRotation": 0
        },
        "export": {
          "enabled": false
         }
    });
}