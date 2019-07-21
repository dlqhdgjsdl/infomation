<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
$(function(){
	
});
</script>
<title>Insert title here</title>
</head>
<body>
	<a href="/web/first.do">first</a>
	<a href="first.do">first1</a>
	<a href="/web/second.do?no=6">second</a>
	<a href="/web/second.do?no=3">second1</a>
	<a href="/web/second.do">second2</a><br>
	
	<form action="/web/member.do">
		<input type="text" name="id">
		<input type="text" name="name">
		<input type="text" name="age">
		<input type="submit" value="Send">
	</form>
	
	<form action="member1.do">
		<input type="text" name="id">
		<input type="text" name="name">
		<input type="text" name="age">
		<input type="submit" value="Send">
	</form>
	
</body>
</html>