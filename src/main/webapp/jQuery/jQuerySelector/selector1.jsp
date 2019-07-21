<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
$(function(){
	//$("div","span").html("ddd");//"div,span"을 따옴표 안에 콤마로 구분하실 같은 형제라고 느껴서 둘다 바뀐다.
	$("div").attr("id",function(i){
		
	}).each(function(index,dom){
		$("span",this).html("ok"+index);
	})
});
</script>
<title>Insert title here</title>
</head>
<body>
	<div>d1
	<span>s1</span>
	</div>
	<div>d2 
	<span>s2</span>
	</div>
	<div>d3
	<span>s3</span>
	</div>
</body>
</html>
