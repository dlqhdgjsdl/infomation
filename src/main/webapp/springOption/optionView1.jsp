<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<!-- SpringCoreMvcController사용 -->
<script type="text/javascript">
$(function(){
	
});
</script>
<title>Insert title here</title>
</head>
<body>
	<a href="/web/headerRead.do">HeaderRead</a><!-- header를 읽어 옴 -->
	<a href="/web/headerRead1.do">HeaderRead1</a>
	<a href="/web/headerRead2.do">HeaderRead2</a>
	<a href="/web/cookieTest1.do?color=orange">COOKIECOLOR</a><!-- 쿠키 생성 -->
	<a href="/web/cookieCheck.do">COOKIECHECK</a><!-- 60초동안 쿠키값을 넘어가서 바탕화면에 컬러에 지정된 색상이 뿌려진다. -->
	<a href="/web/loginCookieCheck.do">login</a>
</body>
</html>