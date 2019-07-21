<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="/web/jQuery/jQueryEvent/jQueryMenu1/style.css" rel="stylesheet">
<link href="/web/jQuery/jQueryEvent/jQueryMenu1/reset.css" rel="stylesheet">

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
  function ajaxProcess(url){
	  $.ajax({
			url:url,
			dataType:'HTML',
			success:function(v){
				$("div#show").html(v);
			}
		 });
  } 
  $(function(){	
	  $(".sub").hide();
	  $(".main").on("click",function(){
		 if($(this).hasClass("on")==false){
			 $(".main").removeClass("on");
			$(this).addClass("on");
			$(".sub").slideUp("fast");
			$(this).next().slideDown("fast");			
		 }else{
			 $(this).removeClass("on");
			 $(this).next().slideUp("fast");
		 } 
	  });
	  
	  $("li").click(function(){
		 if($(this).first().text().trim()=='HTML FORMS'){
			 ajaxProcess('/web/ajaxData/img1.jsp');
		 }
		 if($(this).first().text().trim()=='HTML 5'){
			 ajaxProcess('/web/ajaxData/img2.jsp');
		 }
		 if($(this).first().text().trim()=='HTML GRAPHICS'){
			 ajaxProcess('/web/ajaxData/img3.jsp');
		 }[]
	  });
	 
  });  
</script>
</head>
<body>
  <h1 class="title">AccordionMenu</h1>
  <div class="container">
   <nav>
     <ul>
       <li class="menu">
         <a class="main" href="#">HTML</a>
         <ul class="sub" id="u1">
             <li><a href="#"> HTML FORMS</a></li>
             <li><a href="#"> HTML 5</a></li>
             <li><a href="#"> HTML GRAPHICS</a></li>
             <li><a href="#"> HTML MEDIA</a></li>
             <li><a href="#"> HTML APIS</a></li>
         </ul>
       </li>
       <li class="menu">
         <a class="main" href="#">JAVA</a>
         <ul class="sub" id="u2">
             <li><a href="#"> OPERATOR</a></li>
             <li><a href="#"> ARRAY</a></li>
             <li><a href="#"> OBJECT</a></li>
             <li><a href="#"> STREAM</a></li>
             <li><a href="#"> NETWORK</a></li>
         </ul>
       </li>
       <li class="menu">
         <a class="main" href="#">JSP</a>
         <ul class="sub" id="u3">
             <li><a href="#"> PRIMITIVEOBJECT</a></li>
             <li><a href="#"> SERVLET</a></li>
             <li><a href="#"> COOKIE</a></li>
             <li><a href="#"> SESSION</a></li>
             <li><a href="#"> MVC</a></li>
         </ul>
       </li>
       <li class="menu">
         <a class="main" href="#">SPRING</a>
         <ul class="sub">
             <li><a href="#"> DI</a></li>
             <li><a href="#"> AOP</a></li>
             <li><a href="#"> MVC</a></li>
             <li><a href="#"> TRANSACTION</a></li>
             <li><a href="#"> ORM</a></li>
         </ul>
       </li>
       <li class="menu">
         <a class="main" href="#">ORACLE</a>
         <ul class="sub">
             <li><a href="#"> SELECT</a></li>
             <li><a href="#"> FUNCTION</a></li>
             <li><a href="#"> VIEW</a></li>
             <li><a href="#"> INDEX</a></li>
             <li><a href="#"> PLSQL</a></li>
         </ul>
       </li>
     </ul>
   </nav>
</div>
<div id="show" style="position: absolute; left: 200px;top: 10px; width:900px;height: 500px;  background-color: white;">
  
</div>
</body>
</html>



