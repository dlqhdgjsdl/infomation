<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	.reverse{
		background: black;
		color:white;
	}
	.hj{
		font-family: 휴먼고딕체;
		font-size: 50px;
		color:coral;	
	}

</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
 $(function(){
 	 var h=$("h1")//document.getElementByTagName("h1")
	 /*for(var i =0;i<h.length;i++){
		 alert($(h[i]).text('bong'));
	 } */
	 /* $("h1").each(function(){
		$(this).html('부르릉베리쥬스'); 
	 }); */
	 /* for(var i in h){
		 alert($(h[i]).text());
	 } */
	/*  $('h1').bind('dblclick',function(){
		$(this).text('hi');
		 $(this).html('<font size=5>데헤세헤세헷!</font>');
		 $(this).html(function(index,h){
			return h+'블루베리쥬수';
		}) 
	 }); */
/* 	 $("h1").bind({mouseover:function(){
	  $(this).addClass("reverse");
	 },mouseout:function(){
		 $(this).removeClass("reverse");
	 }});
	  */
/* 	 $("h1").hover(function(){
		$(this).addClass("hj"); 
	 },function(){
		 $(this).removeClass("hj");
	 }); */
	/* $("h1").mouseover(function(){
		$(this).html(function(index,dom){
			return  dom+'bongbong';
		})
	})	   */
	/* $($("h1")[0]).mouseover(function(){
		$("body").html("<img src='4.jpg'>");
	}) */
 	/* $("h1:first").click(function(){
 		$(this).html('one click');
 		alert('이벤트가 발생하였음 hohohohoho');
 		$(this).unbind();
 	});
	 $("h1:last").one('click',function(){
		 $(this).html('one click');
		 alert('tt');
	 }) */
		$("h1:first").bind('click',function(){
			$(this).html('이미지 발생'+"<img src='2.jpg'>");
		}) 
 	});
 </script>
</head>
<body>
	<h1>HEADER-0</h1>
	<h1>HEADER-1</h1>
	<h1>HEADER-2</h1>
</body>
</html>