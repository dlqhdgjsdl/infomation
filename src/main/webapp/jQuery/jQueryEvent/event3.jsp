<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
$(function(){
	$("textarea").keyup(function(){
		var tlen=$(this).val().length;
		var remain=15-tlen;
		$("h1").html(remain);
		if(remain>=0){
			$("h1").css('color','black');
		}else{
			$("h1").css('color','red');
		}
	});
});

</script>
</head>
<body>
	<div>
		<p>지금 이 순간 마법처럼 </p>
		<h1>15</h1>
		<textarea rows="10" cols="70"></textarea>
	</div>
</body>
</html>