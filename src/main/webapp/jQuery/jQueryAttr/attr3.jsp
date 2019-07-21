<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
$(function(){
	var a=$("a");
	alert(a.attr({href:'attr2.jsp'}));
	
	/* $("img").click(function(){
		$("input").each(function(index,dom){
			alert(index+" "+$(this).attr("maxlength")+" "+$(this).prop("min"));
		}); 
		alert($("a").attr("href"));//html
		alert($("a").prop("href"));//javascript 
	}); */
	$("input[type='button']").click(function(){
		//alert($(this).attr('type'));
		$("input[type='text']").each(function(index,dom){
			if($(this).val().length==0){
				alert($(this).attr("name")+"을 입력");
				$("form").attr("action","");
				return false;
			}
		});
		$("form").submit();
		
	});
});
</script>
<title>Insert title here</title>
</head>
<body>
	<!-- <a href="say.jsp">say</a>
	<form action="">
	<input type="text" name="irum" maxlength="5" min="0" max="10">
	<input type="button" name="btn" maxlength="10" title="buttonPro" value="Click"><br>
	<img alt="" src="/web/img/4.jpg" width="400" height="400">
	</form> -->
	<form action="attr3-1.jsp">
		<input type="text" name="irum">
		<input type="text" name="email">
		<input type="text" name="addr">
		<input type="button" value="Send">
		
	</form>
</body>
</html>