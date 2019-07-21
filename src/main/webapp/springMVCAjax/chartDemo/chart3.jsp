<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- 하이차트 --> 


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style>
#container {
	min-width: 310px;
	max-width: 800px;
	height: 400px;
	margin: 0 auto
}
	
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>

<script type="text/javascript">
	function ajaxChart(data){
		
		Highcharts.chart('container', {

		    title: {
		        text: '27만원 효율적으로 사용하기 '
		    },

		    subtitle: {
		        text: '봉봉 장부'
		    },

		    yAxis: {
		        title: {
		            text: 'Number of Employees'
		        }
		    },
		    legend: {
		        layout: 'vertical',
		        align: 'right',
		        verticalAlign: 'middle'
		    },

		    plotOptions: {
		        series: {
		            label: {
		                connectorAllowed: false
		            },
		            pointStart: 2010
		        }
		    },

		    series: [{
		        name: '식비',
		        data:data
		    }, {
		        name: '생활비',
		        data: [24916, 24064, 29742, 29851, 32490, 30282, 38121, 40434]
		    }, {
		        name: '적금',
		        data: [11744, 17722, 16005, 19771, 20185, 24377, 32147, 39387]
		    }, {
		        name: '월세',
		        data: [null, null, 7988, 12169, 15112, 22452, 34400, 34227]
		    }, {
		        name: '기타잡비',
		        data: [12908, 5948, 8105, 11248, 8989, 11816, 18274, 18111]
		    }],

		    responsive: {
		        rules: [{
		            condition: {
		                maxWidth: 500
		            },
		            chartOptions: {
		                legend: {
		                    layout: 'horizontal',
		                    align: 'center',
		                    verticalAlign: 'bottom'
		                }
		            }
		        }]
		    }

		});
	}
$(function(){
	$("button").click(function(){
		$.ajax({
			url:'/web/dbprocess.do',
			dataType:'json',
			success:function(v){
				console.log(v);
				ajaxChart(v);
					
			},
			error:function(e){
				alert("error"+e)
			}
			
			
				
		});
		//ajaxChart();
	})
});
</script>
<title>Insert title here</title>
</head>
<body>
<button>chart1</button>
<div id="container"></div>
</body>
</html>