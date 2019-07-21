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
	  $("div").click(function(){
		 var h=$("h1",this).text();
		 var p=$("p",this).text();
		 //alert(h.substring(0,2));
		 alert(p.substring(0,2));
	  });
	  $("h1").click(function(){
		 $(this).html(function(index,data){
			 return data+'★';
	   });//thisHtml
		 
	  });//clcik
	  setInterval(function(){
		 $("h1").first().trigger('click'); 
	  },1000);
	 
  });  
</script>
</head>
<body>
    <!--  <div>
        <h1>현중이 최고</h1>
        <p>지민이최고</p>
     </div>
     <div>
        <h1>진하 최고</h1>
        <p>규환이최고</p>
     </div> -->
     <h1>Start:</h1>
     <h1>Start:</h1>
     
</body>
</html>






