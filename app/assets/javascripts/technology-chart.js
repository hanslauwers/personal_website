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
            "title": "",
            "minimum": 0,
            "maximum": 5,
            "labelFunction": formatValue
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

function generateColor(level){
    if(level <= 1)
        return "red";
    else if (level <= 2)
        return "#f7f707";
    else if (level <= 3)
        return "#173eed";
    else if (level <= 4)
        return "#17ed17";
}

function formatValue(value, formattedValue, valueAxis){
    if(value == 1){
        return "No practical experience";
    }
    else if(value == 2){
        return "Little practical experience";
    }
    else if (value == 3){
        return "Completely autonomous";
    }
    else if (value == 4){
        return "Expert";
    }
    else {
        return "";
    }
}