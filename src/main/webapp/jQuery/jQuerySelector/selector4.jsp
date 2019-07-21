<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<style type="text/css">
div{
	width: 100px;
	height: 100px;
	border:2px pink solid;
	float:left;
	margin:5px;
	text-align:center;
	
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
$(function(){
	$("button#btn1").click(function(){
		$("div").each(function(index,dom){
			$(dom).css("background-color","green");
			if($(this).is("#stop")){
				$("span").text("Stop Color");
				return false;
			}
		});
	});//click
	$("#btn2").click(function(){
		$("div").each(function(index,dom){
			switch (index) {
			case 0:
				$(dom).css("background-color","green");
				break;
			case 1:
				$(dom).css("background-color","red");
				break;
			case 2:
				$(dom).css("background-color","pink");
				break;
			case 3:
				$(dom).css("background-color","yellow");
				break;
			case 4:
				$(dom).css("background-color","orange");
				break;
			case 5:
				$(dom).css("background-color","black");
				break;
			default:
				break;
			}
		}).click(function(){
		$("body").css("background-color",$(this).css("background-color"))
		});
	});//click2
	$("#btn3").click(function(){
		$("div").each(function(index,dom){
			$(dom).css("background-color","white");
			if($(this).is("#stop")){
				$("span").text("Stop Color");
				return false;
			}
		});
	});
});
</script>

<title>Insert title here</title>
</head>
<body>
	<button id="btn1">ChangeColor</button>
	<button id="btn2">MultiColor</button>
	<button id="btn3">ClearColor</button>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	<div></div>
	<div id="stop">stop here</div>
	<div></div>
	<div></div>
</body>
</html>