<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
$(function(){
	/* for(var k =0;k<$("img").length;i++){
	var id=$($("img")[k]).attr("id");
	alert(id);
	} */
	/* $.each($("img"),function(index,dom){
		alert($(dom).src);
		alert($(dom).attr("src"));
		alert(this.src);
		this.src=$(this).attr("src");
		this.src-obj
		;
	}); */
	/* var id = $("img# id")
	$("img").click(function(){
		if($("img# id")=="i2"){
			alert('tt');
		});
	}); */
	
	$("img").click("id",function(i){
		//this.src="/web/img/4.jpg";
		$("img").attr("src",function(i){
			return this.alt;
		});
	});
});
</script>
<title>Insert title here</title>
</head>
<body>
	<div>
	<img id="i1" alt="/web/img/1.jpg" src="/web/img/4.jpg">
	<img id="i2" src="/web/img/3.jpg">
	<img id="i3" src="/web/img/2.jpg">
	</div>
	<button>이미지숨기기</button>
	
</body>
</html>