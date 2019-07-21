<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
   #bigimg{
      position: absolute;
      padding: .5em;
      background: black;
      border: 1px solid black;
   }
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">  
  $(function(){	  
	  $("#small img").animate({"opacity":.1});
	      
	  $("a").hover(function(e){
		  //alert(e.pageX+' '+e.pageY);
		  var href=$(this).attr('href');
		  $("<img id='bigimg' src='"+href+"' width=150 height=150>").css('top',e.pageY+10).css('left',e.pageX+20).appendTo("body");
	  },function(){
		  $("#bigimg").remove();
	  });
	  $("#small img").hover(function(){		  		  
	      $(this).animate({"opacity":1});	      
		  
	  },function(){
		  
	      $(this).animate({"opacity":.1});		  
	  });
	 
  });  
</script>
</head>
<body>
    <div id="small">
       <c:forEach var="i" begin="1" end="20" step="1">
          <a href="/web/img/${i}d.PNG"><img alt="" src="/web/img/${i}d.PNG"></a>
       </c:forEach>       
    </div>
    

</body>
</html>






