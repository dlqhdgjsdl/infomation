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
 $("img").click(function(){
		 $("img").each(function(i,d)){
			 if(i==0){
				 this.attr({"width":300,"height":300,"border":1});
			 }else if(i==1){
				 this.attr({"width":300,"height":300,"border":1});
			 }else if(i==2){
				 this.attr({"width":300,"height":300,"border":1});
			 }
		 }
	 }) 
 $("button").eq(0).click(function(){
	$("button").each(function(){
		$(this).text(10>5)?"축구":"농구";
		
 });
	}) 
	$("button#b2").dblclick(function(){
		$("ul#uu li").each(function(index,dom){
			$(this).text('쉬즈아아아아아앙')
		});
	});
 });
 </script>
</head>
<body>
<img alt="1" src="/web/img/1.jpg" width="200" height="200">
<img alt="2" src="/web/img/2.jpg" width="200" height="200">
<img alt="3" src="/web/img/3.jpg" width="200" height="200">
<button>button1</button>
<button id="b2">button2</button>
<button>button3</button>
<ul id="uu">
	<li>다</li>
	<li>봉</li>
	<li>경</li>
	<li>찬</li>
</ul>

</body>
</html>