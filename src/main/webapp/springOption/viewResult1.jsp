<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
$(function(){
	$("li #key").click(function(){
	$(this).attr(${i.value});
	});	
});
</script>
<title>Insert title here</title>
</head>
<body>
	acceptType:${acceptType};<br>
		Host:${Host};<br>
		user:${userAgent};<br>
		Map:${map};
	<c:forEach var="i" items="${map}">
	<ul>
	<li id="key">${i.key}</li>
	</ul>
	</c:forEach>
	
</body>
</html>