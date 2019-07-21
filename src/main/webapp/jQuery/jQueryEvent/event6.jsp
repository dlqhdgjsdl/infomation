<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
$(function(){
	$("input[type='button']").click(function(){
		/* alert($("input:checkbox[id='java']").is(":checked")); */
		/* alert($("input:checkbox[name='ck']").is(":checked")); */
		 /* alert($("input:checkbox[name='ck']").length);체크박스의 전채 개수 */ 
		 /* alert($("input:checkbox[name='ck']:checked").length); 체크박스에 선택한 박스의 개수 */
		/* $("input:checkbox[name='ck']").each(function(){
			 this.checked=false; 버튼을 누르면 체크가 다 풀리게 해준다. 
			 if(this.checked) 선택된 버튼의 value값을 alert로 보여준다.
			alert(this.value+' '+$(this).val()); 
		}); */
		 $("input:checkbox[name='ck']").attr("checked",true); //체크박스를 모두 선택해준다. 
	});
});
</script>
<title>Insert title here</title>
</head>
<body>
	<input type="checkbox" name="ck" value="java" id="java">java
	<input type="checkbox" name="ck" value="oracle" id="oracle">oracle
	<input type="checkbox" name="ck" value="jsp" id="jsp">jsp
	<input type="checkbox" name="ck" value="spring" id="spring">spring
	<input type="checkbox" name="ck" value="ajax" id="ajax">ajax
	<input type="button" value="click">
</body>
</html>