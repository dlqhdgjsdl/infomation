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
			 alert('����¯'); 
		  });
		  $(document).ready(function(){
			 alert('����¯&��ȯ¯'); 
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
			case "������":
                 temp="��...�Ҹ�����";
				break;
			case "����":
				temp="����� ��������..";
				break;
			case "������":
				temp="���� �� �����...�� ��� �ٰ�";
				break;			
			}
			$(this).val(temp);

		});
		//document.getElementsByTagName("input")
	});
</script>


</head>
<body>
	<input type="button" value="������" id="btn1">
	<input type="button" value="����" id="btn2">
	<input type="button" value="������" id="btn3">
	<br>
	<div></div>

</body>
</html>





