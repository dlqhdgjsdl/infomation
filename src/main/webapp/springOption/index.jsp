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
	 $("input#btn1").click(function(){
		 document.location.href='/web/cardSession.do';
	 });
	 $("input#btn2").click(function(){
		 document.location.href='/web/cardSession2.do';
	 });
	 $("input#btn3").click(function(){
		 document.location.href='/web/requestMessage.do?msg=java&study=oracle';
	 });
  });  
</script>
</head>
<body>
     <input type="button"  value="Click1" id="btn1">
     <input type="button"  value="Click2" id="btn2">
     <input type="button" value="Click3" id="btn3">
     <a href="/web/empInject.do?empno=7788&job=manager">EmpInject</a>
</body>
</html>









