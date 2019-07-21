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
  });  
</script>
</head>
<body>
<!-- - @ExceptionHandler(Exception.class) 를 컨트롤러 내부에 선언함으로서 해당 컨트롤러의 익셉션을 캐치하고 원하는대로 처리할 수 있다.
- @ResponseStatus 어노테이션을 사용하면 단순 처리뿐만 아니라, 사용자에게 원하는 response code와 원인을 리턴 해줄수 있다.
 -->  
  <a href="/web/nullException.do">NULLPOINTEXCEPTION</a>
  <a href="/web/castException.do">NULLPOINTEXCEPTION</a>
  <a href="/web/userException.do?port=5000">NULLPOINTEXCEPTION</a>
</body>
</html>


