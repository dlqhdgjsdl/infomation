<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
$(function(){
/* 	$("p").click(function(){
		alert($(this).text());
		$("span").trigger("tig");
	});
	$("div").click(function(){
		alert($(this).text());
		$("span").trigger("dv");
	});
	$("pre").click(function(){
		alert($(this).text());
		$("span").trigger("pret");
	});
	$("span").bind("tig",function(){
		$(this).html("<img src='/web/img/4.jpg' width=300 height=300>")
	})
	$("span").bind("dv",function(){
		$(this).html("<img src='/web/img/3.jpg' width=300 height=300>")
	})
	$("span").bind("pret",function(){
		$(this).html("<img src='/web/img/2.jpg' width=300 height=300>")
	}) */
	
$(document).keypress(function(e){
		if(e.keyCode==97){
			$("img").animate({"marginLeft":"-=50px"},0)
		}
		if(e.keyCode==98){
			$("img").animate({"marginLeft":"+=50px"},0)
		}
		if(e.keyCode==99){
			$("img").animate({"marginTop":"+=50px"},0)
		}
		if(e.keyCode==100){
			$("img").animate({"marginTop":"-=50px"},0)
		}
	$("div").append("<font color='blue'>keyPress["+e.keyCode+"]</font>"+String.fromCharCode(e.keyCode)+"<br>");
	 });
	
});
</script>
<title>Insert title here</title>
</head>
<body>
<!-- 	<p>bongbong pclick</p>
	<div>thanks dclick</div>
	<pre>enter key using prclick</pre>
	
	<span id="sp1"></span>
	<span id="sp2"></span>
	<span id="sp3"></span> -->
	
	<div></div>
</body>
</html>