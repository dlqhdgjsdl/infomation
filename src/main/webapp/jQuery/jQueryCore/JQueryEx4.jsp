<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

 $(function(){
	  //$(".container li:eq(0)").css({"background-color":"blue"});
	 //$(".container li:gt(2)").css({"background-color":"blue"});//2이상
	 //$(".container li:lt(2)").css({"background-color":"blue"});//2이하
	  //$(".container li:first").css({"background-color":"blue"});//첫번째
	  //$(":header").css({"background-color":"blue"});
	  //$(".container li:odd").css({"background-color":"blue"});//홀수만 색깔 칠해쥼
	  //$(".container li:even	").css({"background-color":"blue"});//짝수만 색깔 칠해쥼
	  //$(".container li:not(eq(2))").css({"background-color":"blue"});
	/* $(".container:has(p)").css{"background-color":'blue) */
	/*$(".html").css({display:"none"});
	   $(".container li:hidden").css({display:"block","background-color":"red"}); */
	   
/* 	   $("li").css({"background-color":"red"}) */
		//$("li:first-child").css({"background-color":"pink"});li에 첫번째 아이가 색깔이 칠해진다.  
		//$("li:last-child").css({"background-color":"pink"});
	//$("li:nth-child(2)").css({"background-color":"pink"})//li에 두번째의 색깔이 칠해진다.	
	  
	  /* $("ul li").click(function(){
		//alert($(this).text());
		$(this).fadeOut(1000).fadeIn(1000).slideUp(1000).slideDown(1000);//대문자 중요 잘 보고 쓰시길!
	 }); */
	 
 });
 </script>
</head>
<body>
<h1 class="title">JQueryStyle</h1>
<div class="container">
	<ul id="tul">
		<li class="html">html</li>
		<li class="css">css</li>
		<li class="css3">css3</li>
		<li class="javascript">javascript</li>
		<li class="jquery">jquery</li>
		<li class="blank">blank</li>
		<li style="background-image: url(1.jpg);width:500px; height: 500px;"/>
	</ul>
	<p id="pf">JQueryCss</p>
	<
</div>
</body>
</html>