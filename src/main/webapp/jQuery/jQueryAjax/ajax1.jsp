<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link href="photo.css" rel="stylesheet">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
  function ajaxProcess(url,data,dataType){
	  var temp="";	  
	  $.ajax({
		  url:url,
		  cache:false,
		  data:data,
		  type:'POST',
		  dataType:dataType,
		  success:function(v){
			  $(".gallery").show(1000).slideUp(1000).slideDown(1000);
			   $(v).each(function(index,dom){
				   temp+="<div class=\"gallery\">";
				   temp+="<a target=\"_blank\" href=\"img_5terre.jpg\">";
				   temp+=" <img src='"+dom.img+"' alt=\"Cinque Terre\" width=\"600\" height=\"400\"></a>";
				   temp+="<div class=\"desc\">"+dom.title+"</div>";
				   temp+="</div>";
			   });
			   $("div#g").html(temp);
			 
			  /* //alert(v);
			   if(dataType=='script'){
				  //clockFunction();
				  show();
			  }else{
			 $("div").html(v);
			  } */
		  },
		  error:function(){
			  alert('error');
		  }
		  
	  });
  }
  $(function(){	  
	  $(".gallery").hide();
	  $("input").click(function(){
		  if($(this).attr("id")=='b1-1'){	
			  ajaxProcess('cnn.do','msg=hi','text');
		  }
		  if($(this).attr("id")=='b1-2'){			
			  ajaxProcess('cnn.do','msg=hello','text');
		  }
		  if($(this).attr("id")=='b2'){			
			  ajaxProcess('cnn.do','msg=img','text');
		  }
		  if($(this).attr("id")=='b3'){			
			  ajaxProcess('script.do','msg=img','script');
		  }
		  if($(this).attr("id")=='b3-1'){			
			  ajaxProcess('script.do','msg=alert','script');
		  }
		  if( $(this).attr("id")=="b4" ){
			  ajaxProcess('jsonView.do','msg=member','json');
		  }
		  
	  });	 
  });  
</script>
</head>
<body>
    <input type="button" value="Text1" id="b1-1">
    <input type="button" value="Text2" id="b1-2">
    <input type="button" value="HTML" id="b2">
    <input type="button" value="SCRIPT" id="b3">
    <input type="button" value="SCRIPT" id="b3-1">
    <input type="button" value="JSON" id="b4"><br>
  <!--   <div></div>
    <span id="sp"></span> -->
    <div id="g"></div>

    
</body>
</html>



