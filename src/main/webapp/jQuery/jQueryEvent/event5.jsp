<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
$(function(){
	var id="";
	var id2="";
	$("meter").eq(0).click(function(){
		id=setInterval(setValue,100);
	})
	$("meter").eq(2).click(function(){
		  clearInterval(id);
	})
	function setValue(){
		$("meter").each(function(index,dom){
			/* alert($(this).attr("max")); */
			$(this).val($(this).val()+1);
		});
	}
	$("progress").eq(0).click(function(){
		id2=setInterval(setValue1,100);
	})
		$("progress").eq(2).click(function(){
		  clearInterval(id2);
	})	
	function setValue1(){
		$("progress").each(function(index,dom){
			/* alert($(this).attr("max")); */
			$(this).val($(this).val()+1);
		});
	}
	$("button").clikc(function(){
		
	})
});
</script>
<title>Insert title here</title>
</head>
<body>
	<meter value="1" max="100" min="0"></meter>
	<meter value="1" max="100" min="0"></meter>
	<meter value="1" max="100" min="0"></meter>
	
	<progress value="0" max="100"></progress>
	<progress value="0" max="100"></progress>
	<progress value="0" max="100"></progress>
	
	<button>미터값 올리기</button>
</body>
</html>