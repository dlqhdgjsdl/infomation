<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
$(function(){
	$(document).mousedown(function(e){
		if(e.which==1){
			$("img").animate({width:"+5000px",height:"+5000px"},10000);
		}
		if(e.which==3){
			$("img").animate({width:"+50px",height:"+50px"},10000);
		}
		if(e.which==2){
			$("img").attr("src","/web/img/3.jpg");
		}
	});
});
</script>
<title>Insert title here</title>
</head>
<body>
	<img alt="" src="/web/img/2.jpg">
</body>
</html>