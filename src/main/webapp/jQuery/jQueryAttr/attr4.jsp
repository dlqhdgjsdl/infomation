<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
$(function(){
	$("input[type='button']"),click(function(){
		$("input[type='checkbox']").each(function(){
			alert($(this).attr("checked"));
		})
	})
});
</script>
<title>Insert title here</title>
</head>
<body>
	<input type="checkbox" value="����">����
	<input type="checkbox" value="����">����
	<input type="checkbox" value="������">������
	<input type="checkbox" value="���">���
	<input type="checkbox" value="õ����">õ����
	<input type="button" value="Click">
</body>
</html>