<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
 function ajaxProcess(url,type,dataType,data){
	 $.ajax({
			url:url,
			type:type,				
			dataType:dataType,
			cache:false,
			data:data,
			success:function(v){
				console.log(v);
			},error:function(e){
				alert('error'+e);
			}
		}); 
 }
  $(function(){	  
	 $("button#btn1").click(function(){
		$.ajax({
			url:'/web/springMvc1.do',
			type:'POST',
			data:'msg=si',
			dataType:'text',
			cache:false,
			success:function(v){
				console.log(v);
			},error:function(e){
				alert('error'+e);
			}
		}); 
	 });
	 $("button#btn2").click(function(){
		 ajaxProcess('/web/springMvc2.do','POST','json');
	 });
	 $("button#btn3").click(function(){
		 ajaxProcess('/web/springMvc3.do','POST','json');
	 });
	 $("button#btn4").click(function(){
		 ajaxProcess('/web/springMvc3.do','POST','json');
	 })
  });  
</script>
</head>
<body>
  <a href="/web/springMvc1.do">SPRINGMVC1</a>
  <button id="btn1">CLICK1</button>
  <button id="btn2">CLICK2</button>
  <button id="btn3">CLICK3</button>
  <button id="btn4">CLICK4</button>
  <span></span>
</body>
</html>



