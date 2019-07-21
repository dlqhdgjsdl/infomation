<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Work',     11],
          ['Eat',      20],
          ['Commute',  40],
          ['Watch TV', 30],
          ['Sleep',    50]
        ]);
        var data1 = google.visualization.arrayToDataTable([
          ['여행가즈아', 'travel'],
          ['한국',   45],
          ['아이슬란드', 55],
          ['볼리비아',  60],
          ['캐나다',  70],
        
        ]);
        var data2 = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Work',     11],
          ['Eat',      2],
          ['Commute',  2],
          ['Commute',  6],
          ['Commute',  80],
        
        ]);

        var options = {
          title: 'AdminCartData hoho'
        };
        var options1 = {
               title:'여행 가고싶은 지역'
        }
        

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));
        var chart1 = new google.visualization.PieChart(document.getElementById('piechart1'));
        var chart2 = new google.visualization.PieChart(document.getElementById('piechart2'));
			
        chart.draw(data, options);
        chart1.draw(data1, options1);
        chart2.draw(data2, options);
        
      }
    </script>
  </head>
  <body>
  <button id="tt">chart1</button>
    <div id="piechart" style="width: 900px; height: 500px;"></div>
    <div id="piechart1" style="width: 900px; height: 500px;"></div>
    <div id="piechart2" style="width: 900px; height: 500px;"></div>
  </body>
</html>
</html>