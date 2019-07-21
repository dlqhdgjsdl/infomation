<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" href="/web/springApp/rss.css"/>
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script>

		
	

	
				
	
	$(function(){
		
		$("form#refrm").hide();
		$(document).on("click","a#mod",function(){
			//alert($("p#"+this.title).text());
			 $("form#refrm").show();
			 $("#hno").val(this.title);
			 $("#hcontents").val($("p#"+this.title).text());
			 $("#rere").html($("p#"+this.title).text());
		});
		
		//$("a#mod").click(function(){
			//console.log('tt');
			/* $("form#refrm").show(); */
		//});
		$(document).on("focus","textarea",function(){
			$(this).val('');
		});
		/* $("textarea").focus(function(){
			$(this).val('');
		}); */
		$("textarea").keyup(function(){
			if($(this).val().length>300){
			$(this).val('');
			}
			$(".txt_byte").html($(this).val().length);
		});
	
		
	
		$("input#send").click(function(){
		
		
	var form=$("form");
		
		form.submit(function(){
			$.ajax({
				type:'POST',
				url:"/web/re.do",
				data:form.serialize(),
				dataType:'json',
				success:function(v){
					var temp=''; 
					$(v).each(                         
		                        function(index, dom) {  
		                        	
		                           temp+="<div class=\"list_cmt\"><div class=\"cmt_head\"></div><div class=\"cmt_body\">";
		                           temp+="<span class=\"info_append\"><span class=\"txt_name\">"+dom.id+"</span>";
		                           temp+="<span class=\"txt_bar\">|</span> <span class=\"txt_time\">"+dom.regdate+"</span></span>";
		                           temp+="<p class=\"txt_desc\" id='"+dom.no+"'>"+dom.contents+"</p></div>";
		                           temp+="<div class=\"cmt_foot\"><a href=\"#none\">답글</a><span class=\"txt_bar\">|</span><a id=\"mod\" title=\""+dom.no+"\">수정</a>";
		                           temp+="<span class=\"txt_bar\">|</span><button onclick=\"replydelete('"+dom.no+"')\">삭제</button><span class=\"txt_bar\">|</span>";
		                           temp+="<a href=\"#none\">신고</a></div></div>"; 
		                        
		                        }); 
		                   $("span").html(temp);
		                   $("textarea#contents").val(''); 
					
				
				},
				
				error:function(e){
					alert('error'+e);
					
				}
			});
			return false;
			
		});
		
	}); 

	});
	
	function replydelete(no){
		alert(no);
		$.ajax({
			type:'POST',
			url:"/web/redelete.do",
			data:'no='+no,
			dataType:'json',
			success:function(v){
				var temp=''; 
				$(v).each(                         
	                        function(index, dom) {  
	                        	
	                           temp+="<div class=\"list_cmt\"><div class=\"cmt_head\"></div><div class=\"cmt_body\">";
	                           temp+="<span class=\"info_append\"><span class=\"txt_name\">"+dom.id+"</span>";
	                           temp+="<span class=\"txt_bar\">|</span> <span class=\"txt_time\">"+dom.regdate+"</span></span>";
	                           temp+="<p class=\"txt_desc\" id='"+dom.no+"'>"+dom.contents+"</p></div>";
	                           temp+="<div class=\"cmt_foot\"><a href=\"#none\">답글</a><span class=\"txt_bar\">|</span><a id=\"mod\" title=\""+dom.no+"\">수정</a>";
	                           temp+="<span class=\"txt_bar\">|</span><button onclick=\"replydelete('"+dom.no+"')\">삭제</button><span class=\"txt_bar\">|</span>";
	                           temp+="<a href=\"#none\">신고</a></div></div>"; 
	                        
	                        }); 
	                   $("span").html(temp);
	                   $("textarea#contents").val(''); 
				
			
			},
			
			error:function(e){
				alert('error'+e);
				
			}
		});
	}
	
function showList(){
	$.ajax({
		type:'POST',
		url:"/web/ReSelect.do",
		dataType:'json',
		success:function(v){
			var temp=''; 
			$(v).each(                         
                        function(index, dom) {  
                        	
                           temp+="<div class=\"list_cmt\"><div class=\"cmt_head\"></div><div class=\"cmt_body\">";
                           temp+="<span class=\"info_append\"><span class=\"txt_name\">"+dom.id+"</span>";
                           temp+="<span class=\"txt_bar\">|</span> <span class=\"txt_time\">"+dom.regdate+"</span></span>";
                           temp+="<p class=\"txt_desc\" id='"+dom.no+"'>"+dom.contents+"</p></div>";
                           temp+="<div class=\"cmt_foot\"><a href=\"#none\">답글</a><span class=\"txt_bar\">|</span><a id=\"mod\" title=\""+dom.no+"\">수정</a>";
                           temp+="<span class=\"txt_bar\">|</span><button onclick=\"replydelete('"+dom.no+"')\">삭제</button><span class=\"txt_bar\">|</span>";
                           temp+="<a href=\"#none\">신고</a></div></div>"; 
                        
                        }); 
                   $("span").html(temp);
                   $("textarea#contents").val(''); 
			
		
		},
		
		error:function(e){
			alert('error'+e);
			$.ajax({
				type:'POST',
				url:"/web/redelete.do",
				data:'no='+no,
				dataType:'json',
				success:function(v){
					var temp=''; 
					$(v).each(                         
		                        function(index, dom) {  
		                        	
		                           temp+="<div class=\"list_cmt\"><div class=\"cmt_head\"></div><div class=\"cmt_body\">";
		                           temp+="<span class=\"info_append\"><span class=\"txt_name\">"+dom.id+"</span>";
		                           temp+="<span class=\"txt_bar\">|</span> <span class=\"txt_time\">"+dom.regdate+"</span></span>";
		                           temp+="<p class=\"txt_desc\" id='"+dom.no+"'>"+dom.contents+"</p></div>";
		                           temp+="<div class=\"cmt_foot\"><a href=\"#none\">답글</a><span class=\"txt_bar\">|</span><a id=\"mod\" title=\""+dom.no+"\">수정</a>";
		                           temp+="<span class=\"txt_bar\">|</span><button onclick=\"replydelete('"+dom.no+"')\">삭제</button><span class=\"txt_bar\">|</span>";
		                           temp+="<a href=\"#none\">신고</a></div></div>"; 
		                        
		                        }); 
		                   $("span").html(temp);
		                   $("textarea#contents").val(''); 
					
				
				},
				
				error:function(e){
					alert('error'+e);
					
				}
			});
		}
	});
	
}
function replymodify(){
	$.ajax({
		type:'POST',
		url:"/web/ReUdate.do",
		data:'no='+$("#hno").val()+'&contents='+$("#rere").val(),
		dataType:'json',
		success:function(v){
			var temp=''; 
			$(v).each(        
                        function(index, dom) {  
                        	
                           temp+="<div class=\"list_cmt\"><div class=\"cmt_head\"></div><div class=\"cmt_body\">";
                           temp+="<span class=\"info_append\"><span class=\"txt_name\">"+dom.id+"</span>";
                           temp+="<span class=\"txt_bar\">|</span> <span class=\"txt_time\">"+dom.regdate+"</span></span>";
                           temp+="<p class=\"txt_desc\" id='"+dom.no+"'>"+dom.contents+"</p></div>";
                           temp+="<div class=\"cmt_foot\"><a href=\"#none\">답글</a><span class=\"txt_bar\">|</span><a id=\"mod\" title=\""+dom.no+"\">수정</a>";
                           temp+="<span class=\"txt_bar\">|</span><button onclick=\"replydelete('"+dom.no+"')\">삭제</button><span class=\"txt_bar\">|</span>";
                           temp+="<a href=\"#none\">신고</a></div></div>"; 
                        
                        }); 
                   $("span").html(temp);
                   $("textarea#contents").val(''); 
		
		},
		
		error:function(e){
			alert('error'+e);
			
		}
	});
}
</script>
</head>
<body onload="showList()">

<div class="cmt_comm">
	<form method="post" id="frm">
		<fieldset class="fld_cmt">
			<legend class="screen_out">댓글 작성</legend>
			<input type="hidden" name="id" value="blue"/>
			<input type="hidden" name="image" value="100.png"/>
			<textarea name="contents" class="tf_cmt" cols="90" rows="5" title="한줄 토크를 달아주세요">한줄 토크를 달아주세요! (300자)</textarea>
			<input type="submit" value="등록" id="send"></input>
			
			<p class="info_append">
				<span class="screen_out">입력된 바이트 수 : </span>
				<span class="txt_byte">55</span> / 300자
				<span class="txt_bar">|</span>
				<a href="#none" >댓글 운영원칙</a>
			</p>
		</fieldset>
	</form>
	<strong class="screen_out">전체 댓글</strong>
	
	<form method="post" id="refrm">
		<fieldset class="fld_cmt">
			<legend class="screen_out">댓글 작성</legend>
			<input type="hidden" name="id" value="blue"/>
			<input type="hidden" name="image" value="100.png"/>
			<textarea name="contents" class="tf_cmt" cols="90" rows="5" title="한줄 토크를 달아주세요" id="rere"></textarea>
			<input type="button" value="수정" id="modify" onclick="replymodify()"></input>
		</fieldset>
	</form>
	<input type="hidden" id="hno">
	<input type="hidden" id="hcontents">
<span id="sp"></span>
</body>
</html>