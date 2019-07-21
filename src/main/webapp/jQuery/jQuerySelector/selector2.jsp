<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">  
  $(function(){	  
	  //alert($(".title").text());
	  //alert($(".container").children("p").text());
	 /*  $(".container").children("p").each(function(index,dom){
		  $(this).text('Test');
	  }); */
	  
	  //alert($(".container ul").children("li").text());
	  //alert($(".container ul").children("li").eq(0).attr("class"));
	 /*  $(".container ul").children("li").get(0).attr("class",function(index){
		return 'li-'+index;  
	  }); */
	  //alert($('.container').find(".css3").html());
	  //$(".html").next().css({"background-color":'blue'});
	  //$(".html").nextAll().css({"background-color":'blue'});
	  //$(".html").parent().css({"background-color":'green'});
	  //$(".html").parent("body").css({"background-color":'black'});
	  //$(".css3").prev().css({"background-color":'yellow'});
	  //$(".css3").prevAll().css({"background-color":'red'});
	  
  });  
</script>
</head>
<body>
   <h1 class="title">JQuery Process</h1>
   <div class="container">
       <ul class="ulClass">
         <li class="html">HTML</li>
         <li class="css">CSS</li>
         <li class="css3">CSS3</li>
         <li class="javascript">JAVASCRIPT</li>
       </ul>
       <p id="pro1">Process1</p>
       <p id="pro2">Process2</p>
       <p id="pro3">Process3</p>
   </div>

</body>
</html>



