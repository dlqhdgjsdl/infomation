<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
	$(function() {
		/*  $("input#btn1").click(function(){
			 //document.getElementsByTagName("div")[0].innerHTML="hiDIV";
			 //$("div").html("<img src='/web/img/100.jpg' width=200 height=200>");
		  $("div").append("<img src='/web/img/100.jpg' width=200 height=200>");
		 });
		 $("input#btn2").click(function(){
			 //document.getElementsByTagName("div")[0].innerHTML="hiDIV";
			 $("div").append("<img src='/web/img/101.jpg' width=200 height=200>");
			  //$("div").html("<img src='/web/img/101.jpg' width=200 height=200>");
		 });
		 $("input#btn3").click(function(){
			 //document.getElementsByTagName("div")[0].innerHTML="hiDIV";
			 $("div").append("<img src='/web/img/102.jpg' width=200 height=200>");
			  //$("div").html("<img src='/web/img/101.jpg' width=200 height=200>");
		 }); */
		/*   jQuery(function(){
			 alert('진하짱'); 
		  });
		  $(document).ready(function(){
			 alert('지민짱&규환짱'); 
		  }); */

		/* $($("input")[0]).click(function(){
		  $("div").append("<img src='/web/img/102.jpg' width=200 height=200>");
		  $("img").click(function(){
			 $(this).hide(1000).show(1000); 
		  });
		}); */
		$("input").eq(1).click(function() {
			//alert(this.value+" "+$(this).val());
			var temp="";
			switch ($(this).val()) {
			case "봉헌이":
                 temp="음...할말없음";
				break;
			case "세희":
				temp="세희야 아프지마..";
				break;
			case "경제님":
				temp="경제 좀 살려줘...꼭 찍어 줄게";
				break;			
			}
			$(this).val(temp);

		});
		//document.getElementsByTagName("input")
	});
</script>


</head>
<body>
	<input type="button" value="봉헌이" id="btn1">
	<input type="button" value="세희" id="btn2">
	<input type="button" value="경제님" id="btn3">
	<br>
	<div></div>

</body>
</html>





