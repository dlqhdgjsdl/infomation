<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style type="text/css">
	body{
		margin: 20px;
		padding: 20px;
		line-height:1;
		font-family:"휴먼매직체";
		font-size: 2em;
		background-color: black;
		color: yellow;
	}
	.title{
	margin: 0;
	padding: 0;
	font-size: 6em;
	font-weight: bold;
	
	}
	ul,li{
	margin: 0;
	padding:0;
	list-style: none;
	
	}
	li{
		margin-top: 20px;
		
	}
	.container{
		margin-top: 35px;
		
	}
	
</style>
<script type="text/javascript">

 $(function(){
	 //console.log($("h1").text("벚꽃"));
	//console.log($("h1").first());
	/* $(".container").css({"background-color":"gray"});
	$(".container > p").css({"background-color":"red"});
	$(".html+li").css({"background-color":"blue"});
	$(".html ~li").css({"background-color":"blue"}); */
	/* 
	$("li[class='html']").css({"background-color":"blue"});
	$("li[class^='css']").css({"background-color":"orange"});//^특정문자열로 시작 
	$("li[class$='3']").css({"background-color":"cyan"});//$ 3으로 끝나는 문자열에 색깔을 칠해준다.
	$("li[class*='ja']").css({"background-color":"green"});//어느 자리에 상관없이 포함되어 있으면 색칠해준다. */
 	$("div[class='a']").hide(5000).show(1000).slideDown(1000).slideup(1000).fadeOut(1000).fadeIn(1000);
 	$("div[class='b']").css({"background-color":"red"});
 	
 
 });
 </script>
</head>
<body>
	<div class="parent">
		<div class="a">박씨</div>
		<div class="a">김씨</div>
		<div class="a">이씨</div>
		<div class="a">아씨</div>
		<div class="a">오씨</div>
		<div class="b">우씨</div>
		<div class="b">앙씨</div>
		<div class="b">세씨</div>
		<div class="b">다씨</div>
		<div class="c"><img src="1.jpg"/></div>
	
	</div>


<!-- <h1 class="title">JQueryStyle</h1>
<div class="container">
	<ul id="tul">
		<li class="html">html</li>
		<li class="css">css</li>
		<li class="css3">css3</li>
		<li class="javascript">javascript</li>
		<li class="jquery">jquery</li>
		<li class="blank">blank</li>
	</ul>
	<p id="pf">JQueryCss</p>
</div> -->
</body>
</html>