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
    $("input[type='button']").eq(2).click(function(){
    	$.ajax({
    		url:'json1.jsp',
    		dataType:'json',
    		success:function(v){
    			/* $("span").html(v.name);
    			console.log(v); */
    			//$("div#dv ul").append("<li>"+v.name+"</li><li>"+v.poition+"</li><li>"+v['age']+"</li>");
				for(var i in v){
					$("div#dv ul").append("<li>"+v[i].name+"</li><li>"+v[i]['poition']+"</li><li>"+v[i].age+"</li>");
					}    			
    		}
    	});
   	});
   
});  
$(function(){
		$("input[type='button']").eq(1).click(function(){
			$.ajax({
				url:'json.jsp',
				dataType:'json',
				success:function(t){
					for(var i in t){
					for(var j in t[i]){
					$("div#dv1 ul").append("<li>"+t[i][j]+"</li>");
					}	
					}
					}
			})
		})
});
$(function(){
	$("input[type='button']").eq(0).click(function(){
		$.ajax({
			url:'json2.jsp',
			dataType:'json',
			success:function(a){
				$(a).each(function(index,dom){
					switch (index) {
					case value:
						
						break;

					default:
						break;
					}
					$("div#dv2 ul").append(this.name+' '+this.poition+' '+ this.age);
					//console.log($(this));
				});
				
				
				}
		})
	})
});
 </script>
</head>
<body>
	<input type="checkbox"/>heon
	<input type="button" id="btn1" value="수정짱">
	<input type="button" id="btn2" value="정짱">
	<input type="button" id="btn3" value="수짱">
	
	<span>happy</span>
	<div id="dv">
		<ul>
			
		</ul>		
	</div>
	<div id="dv1">
		<ul>
			
		
		</ul>
	</div>
	<div id="dv2">
		<ul>
			
		
		</ul>
	</div>
</body>
</html>