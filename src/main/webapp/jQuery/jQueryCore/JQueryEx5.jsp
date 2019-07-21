<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">

 $(function(){
	 $(".container").hide().fadeIn(1000).fadeOut(1000);
 });
 </script>
</head>
<body>
<h1 class="title">JQueryStyle</h1>
<div class="container">
	<ul id="tul">
		<li class="html">html</li>
		<li class="css">css</li>
		<li class="css3">css3</li>
		<li class="javascript">javascript</li>
		<li class="jquery">jquery</li>
		<li class="blank">blank</li>
	</ul>
	<p id="pf">JQueryCss</p>
</div>
</body>
</html>