<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<!-- javaScript file,github,JQueryAjax -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
 $(function(){
	 	$("input").click(function(){
	 		$.ajax({url:'bong.jsp',dataType:"text",success:function(data){
	 			$("span").html(data);
	 		}});
	 	});
 });
 </script>
</head>
<body>
	<input type="button" value="bong."><br>
	<span></span>
</body>
</html>