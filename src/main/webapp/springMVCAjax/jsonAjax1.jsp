<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<!-- springmvccontroller -->
<script type="text/javascript">
$(function(){
	$("button").click(function(){
		$.ajax({
			url:'ajaxEmpView.do',
			dataType:'json',
			success:function(v){
				$.each(v,function(index,dom){
					alert(dom.empno+" "+dom['job']+' '+dom.ename);
				});
			},error:function(e){
				alert('error'+e);
			}
		});
	});
	
});
</script>
<title>Insert title here</title>
</head>
<body>
	<button>EMP</button>
</body>
</html>