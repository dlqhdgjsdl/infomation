<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
$(function(){
	$("div").attr("id",function(index){
		return "div-id-"+index;
	}).each(function(ii,dom){
		//alert("ii"+ii+" "+dom.id+" "+this.id+" "+$(this).text());
		$("span",this).html("<b>(ID="+this.id+")</b>")//span�� ����Ҷ��� ������ ���� ������ ("span",this)�� ����ϸ� �ش� ���ҿ� ���������� ���� ������ ������� ���ü� �ִ�.
	})
});
</script>
<title>Insert title here</title>
</head>
<body>
	<div id="d1">ZERO-TH<span></span></div>
	<div id="d2">FIRST<span></span></div>
	<div id="d3">SECOND<span></span></div>
	
</body>
</html>