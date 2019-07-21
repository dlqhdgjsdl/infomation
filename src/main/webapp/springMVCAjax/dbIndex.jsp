<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">  
    function dopostData(){
    	//alert($("form").attr("method"));
    
    	var form=$("form");
    	form.submit(function(){
    		
    	
    		$.ajax({
    			type:'POST',
    			url:"${pageContext.request.contextPath}/ajaxMvc.do",
    			data:form.serialize(),
    			dataType:'json',
    			success:function(v){
    				$(v).each(function(index,dom){
    					$("span").append("<ul><li>"+dom.no+"</li><li>"+dom.subject+"</li><li>"+dom.socre+"</li><li>"+dom.regdate+"</li></ul>");//html을 사용하실 최근의 데이터값만 나온다 (따라서 appand를 사용하면 저장되어있어던 데이터도 같이 데리고 올수 있따.)
    				});
    				
    			},
    			error:function(e){
    				alert('error'+e);
    			}
    			
    		});
    	return false;});
    }
</script>
</head>
<body>

   <form method="post" id="frm">
      <input type="text" name="subject" id="subject">
      <input type="text" name="socre" id="socre">
      <input type="submit" value="Send" onclick="dopostData()">      
   </form>
<span></span>
</body>
</html>

