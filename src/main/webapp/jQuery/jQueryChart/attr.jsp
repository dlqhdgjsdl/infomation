<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
#container {
	min-width: 310px;
	max-width: 800px;
	height: 400px;
	margin: 0 auto
}
#container1 {
	min-width: 320px;
	max-width: 1500px;
		
	}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function sizeFun(obj){
	/* $(obj).find("img").attr({"width=":500,"height":500,"border":1}); */
	//$(obj).attr("href","https://www.naver.com");
}
	var ajax=function(url){
		$.ajax({
			url:url,
			dataType:'script',
			success:function(v){
				alert(v);
			}
		});
	}
	$(function(){
		$("a").click(function(){
			if(this.id=='a1'){
				//alert('tttttt');
				ajax('chart.jsp');
			}
			if(this.id=='a2'){
				ajax('chart2.jsp');
			}
		});//click
		
	});
</script>

</head>
<body>
	<a href="#" id="a1"><img alt="" src="4.jpg" width="400" height="400"></a>
	<a href="#" id="a2"><img alt="" src="2.jpg" width="400" height="400"></a>
	
	<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/series-label.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>

<div id="container"></div>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-more.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>

<div id="container1"></div>
	
</body>
</html>