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
		font-family:"�޸ո���ü";
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
	 //console.log($("h1").text("����"));
	//console.log($("h1").first());
	/* $(".container").css({"background-color":"gray"});
	$(".container > p").css({"background-color":"red"});
	$(".html+li").css({"background-color":"blue"});
	$(".html ~li").css({"background-color":"blue"}); */
	/* 
	$("li[class='html']").css({"background-color":"blue"});
	$("li[class^='css']").css({"background-color":"orange"});//^Ư�����ڿ��� ���� 
	$("li[class$='3']").css({"background-color":"cyan"});//$ 3���� ������ ���ڿ��� ������ ĥ���ش�.
	$("li[class*='ja']").css({"background-color":"green"});//��� �ڸ��� ������� ���ԵǾ� ������ ��ĥ���ش�. */
 	$("div[class='a']").hide(5000).show(1000).slideDown(1000).slideup(1000).fadeOut(1000).fadeIn(1000);
 	$("div[class='b']").css({"background-color":"red"});
 	
 
 });
 </script>
</head>
<body>
	<div class="parent">
		<div class="a">�ھ�</div>
		<div class="a">�达</div>
		<div class="a">�̾�</div>
		<div class="a">�ƾ�</div>
		<div class="a">����</div>
		<div class="b">�쾾</div>
		<div class="b">�Ӿ�</div>
		<div class="b">����</div>
		<div class="b">�پ�</div>
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