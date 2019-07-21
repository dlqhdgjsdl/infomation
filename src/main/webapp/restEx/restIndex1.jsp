<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
	function ajaxProcess(url,data,dataType,type){
		$.ajax({
			url:url,
			data:data,
			dataType:dataType,
			type:type,
			success:function(v){
				if(url.substring(url.lastIndexOf("/")+1)=='ObjectParm.do'){
				$("span").html("<b>"+v.pk+" "+v.data+" "+v.count+"</b>")	
				}
				if(url.substring(url.lastIndexOf("/")+1)=='MapParm.do'){
					/*  for(var i in v){
						 //alert(v[i].pk+" "v[i].data+" "+v[i].count); 
					 } */
						$.each(v,function(index,dom){
							console.log(v[index].pk+" "+v[index].data+" "+v[index].count);
						});
					 
					}
				if(url.substring(url.lastIndexOf("/")+1)=='MapParm1.do'){
					$.each(v,function(index,dom){
						$.each(dom,function(index,dom2){
						console.log(dom2.no);
							
						});
					});
					/* $("span").html("<b>"+v[index].no+"</b>") */					
				}
			},error:function(e){
				alert('error'+e);
			}
			
		});
	}

$(function(){
	$("button").click(function(){
		if(this.id=='btn1'){
			alert('button');
			ajaxProcess('/web/StringParm.do','subject=java','text','post');
		}else if(this.id=='btn2'){
			ajaxProcess('/web/StringParm.do','subject=spring','text','post');
		}/* else if(this.id=='btn3'){
			ajaxProcess('/web/locationParm1.do','location=t1','text','post');
		}else if(this.id=='btn4'){
			ajaxProcess('/web/locationParm1.do','location=t2','text','post');
		}else if(this.id=='btn5'){
			ajaxProcess('/web/locationParm1.do','location=t3','text','post'); 
		}*/else if(this.id=='btn6'){
			ajaxProcess('/web/ObjectParm.do','','json','post');
		}else if(this.id=='btn7'){
			ajaxProcess('/web/MapParm.do','','json','post');
		}else if(this.id=='btn8'){
			ajaxProcess('/web/MapParm1.do','','json','post');
		}
	});
});
</script>
<title>Insert title here</title>
</head>
<body>
	<a href="/web/StringParm.do?subject=java">StringParam</a>
	<a href="/web/StringParm.do?subject=spring">StringParam</a>
	<a href="/web/ScriptParm.do?kind=h">ScriptParam1</a>
	<a href="/web/ScriptParm.do?kind=i">ScriptParam2</a>
	<a href="/web/ScriptParm.do?kind=s">ScriptParam3</a>
	<a href="/web/locationParm.do?job=list">location</a>
	<a href="/web/ObjectParm.do">ObjectParm</a>
	<a href="/web/listParm.do">ListParm</a>
	<a href="/web/Map1Parm.do">mapparm</a>
	
	
	<button id="btn1">StringParam1</button>
	<button id="btn2">StringParam2</button>
	<button id="btn3">Stringajax1</button>
	<button id="btn4">Stringajax2</button>
	<button id="btn5">Stringajax3</button>
	<button id="btn6">ajaxjson</button>
	<button id="btn7">MapParm</button>
	<button id="btn8">MapParm1</button>
	<br>
	
	<span></span>
	
	
</body>
</html>