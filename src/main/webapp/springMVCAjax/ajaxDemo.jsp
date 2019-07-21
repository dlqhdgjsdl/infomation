<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
$(function(){
	/* alert($("body").html()); */
	$("div").click(function(){
		alert($("body").html());
		$.ajax({
			url:'/web/springMVCAjax/buttonCreate.jsp',
			dataType:'text',
			success:function(v){
				$("span").html(v);
				$("button").click(function(){
					alert('button');
				});
			},
			error:function(e){
				alert(e);
			}
		});
		alert($("body").html());
		/* $(this).html("<button>SPRING</button>");
	$("button").click(function(){//버튼은 클릭했을때 발생하는 이벤트라서 같은 제이쿼리 범위에 있어야 한다.
		alert('button');
	});*/
	});
});
</script>
<title>Insert title here</title>
</head>
<body>
	<div>Div</div>
	<span></span>
</body>
</html>