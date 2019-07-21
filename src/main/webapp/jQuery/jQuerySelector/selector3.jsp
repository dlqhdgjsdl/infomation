<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
$(function(){
	$("img").click(function(){
		//if($(this).attr("id")!="end"){
		$(this).next().hide(1000);	
		//}
	});
});
</script>
</head>
<body>
	<img  src="/web/img/2.jpg" width="400" height="400" id="begin">
	<img  src="/web/img/3.jpg" width="400" height="400" id="center">
	<img  src="/web/img/4.jpg" width="400" height="400" id="end">
</body>
</html>