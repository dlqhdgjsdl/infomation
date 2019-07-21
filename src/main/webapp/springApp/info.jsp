<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta http-equiv="imagetoolbar" content="no" />
<link href="/web/css/contents.css" rel="stylesheet" type="text/css" />
<link href="/web/css/rbasic.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="/web/springApp/rss.css"/>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script >
	$(function(){
		
		$("a#modoify").click(function(){
			$("form#mo").submit();
		});
	
	
	
		$("input[type=button]").click(function(){
			   if(this.id=='inject1'){
			 $("form[name='newFrm']").submit();
			   }
			   else{
				   $("form#"+this.id).submit();
			   }
			   
		   });
	
	
		  $("textarea").keyup(function(){
			   if($(this).val().length>300){
				   $(this).val('');
			   }
			  $(".txt_byte").html($(this).val().length);   
		   });
		  $("textarea").focus(function(){
			  $(this).val(''); 
			
		   });
			$("textarea").click(function(){
				  if(${id==null}){
					  document.location.href='/web/springApp/adminLogin.jsp';
				  }
			});
		  $("img").click(function(){
			   var temp=$(this).attr("src");
			  $("input#image").val(temp.substring(temp.lastIndexOf("/")+1)); 
		   });
		  $("img").mouseover(function(){		 
				 if(this.id=='first'|| this.id=='second'){
					 $("img#main").attr("src",this.src).slideUp(100).slideDown(100);
				 } 
			  }); 
			  $("img").mouseout(function(){	
				  $("img#main").prop({src:"/web/upload/${fn:split(info.face,'#')[0]}"});
			  }); 
			  
			   $("form[name='frm']").hide();
			   $("a").click(function(){
				   $("form#"+this.id).show(1000);
			   });
			   $("a").dblclick(function(){
				   $("form#"+this.id).hide(1000);
			   }); 
			  			  
	});
	
		

</script>
</head>
<body>

<div id="wrapper">
		<div id="header">
			<div class="topInfoWrap">
				<div class="topInfoArea clfix">
					<div class="loginWrap">
						<span class="fir">2012.05.17</span> <span>13:30:22</span> <span><em>OOO님</em>
							좋은 하루 되세요</span> <a href="" class="btnLogout"><img
							src="/web/img/common/btn_logout.gif" alt="로그아웃" /></a>
					</div>
				</div>
			</div>
			<div class="gnbSubWrap"></div>
		</div>
		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<h1 class="title">게시판 상세보기</h1>
					<div class="btnSet clfix mgb15">
						<span class="fr"> <span class="button"> <a href="#">답글</a></span>
							<span class="button"> <a id="modoify">수정</a></span> <span
							class="button"><a href="/web/deletedata.do?no=${info.no}">삭제</a></span> <span class="button"><a
								href="#">목록</a></span>
						</span>
					</div>
					<form action="modify.do?no=${info.no}" id="mo"> 
					<table class="bbsList">
						<colgroup>
						
							<col width="400" />
							<col width="100" />
							<col width="" />
						</colgroup>
						<tr>
							<th scope="col" class="fir">이미지</th>
							<th scope="col">글번호</th>
							<td>${info.no}</td>
							<td><input type="hidden" id="no" name="no" value="${info.no}"></input></td>
						</tr>
						<tr>
                           <c:set var="v"  value="${fn:split(info.face,'#')}"></c:set>
                           
							<td class="fir" rowspan="7"><img src="/web/upload/${v[0]}"
								width="400" height="300" />
								<img src="/web/upload/${v[0]}" width="40" height="40" />
								<img src="/web/upload/${v[1]}" width="40" height="40" />
								</td>
							<th scope="col">NAME</th>
							<td>${info.name}</td>
						</tr>
						<tr>
							<th scope="col">COMPANY</th>
							<td>${info.companyName}</td>
						</tr>
						<tr>
							<th scope="col">Message</th>
							<td height="200">${info.message}</td>
						</tr>
						<tr>
							<th scope="col">등록일</th>
							<td>${info.regdate }</td>
						</tr>
						<tr>
							<th scope="col">조회수</th>
							<td>${info.hit}</td>
						</tr>
						<tr>
							<th scope="col">다운로드1</th>
						<td>

						<a href="/web/download.do?fileName=${fn:split(info.face,'#')[0]}">
						${fn:split(info.face,'#')[0]}
						</a>
						</td>
						</tr>
					</table>
					</form>

				</div>

			</div>
	<div class="cmt_comm" style="position: absolute;left: 170px;">
	<fieldset>
	   <legend>ImageState</legend>
	   <img src="/web/reImg/1.png" width="50">
	   <img src="/web/reImg/2.png" width="50">
	   <img src="/web/reImg/3.png" width="50">
	   <img src="/web/reImg/4.png" width="50">	   
	</fieldset>
	<form action="/web/replyInsert.do" name="newFrm"method="post" id="frm"><!-- /*insertReply.do replyController 일때 필요*/ -->
		<fieldset class="fld_cmt">
		
			<legend class="screen_out">댓글 작성</legend>
			<input type="hidden" name="id" value="${id}"/>
			<input type="hidden" name="image" value="3.jpg" id="image"/>
			<input type="hidden" name="infopk" value="${info.no}"/>
			<input type="hidden" name="job" value="new"></input>
			<textarea name="contents"class="tf_cmt" cols="90" rows="5" title="한줄 토크를 달아주세요">한줄 토크를 달아주세요! (300자)</textarea>
			<!-- <button type="submit" class="img_sample btn_cmt">등록</button> -->
			<input id="btn" type="button" value="등록" style="position: absolute;top: 695x; width: 100px; height: 54px;"/>
			<p class="info_append">
				<span class="screen_out">입력된 바이트 수 : </span>
				<span class="txt_byte">55</span> / 300자
				<span class="txt_bar">|</span>
				<a href="#none">댓글 운영원칙</a>
			</p>
		</fieldset>
	</form>
	<strong class="screen_out">전체 댓글</strong>
	<c:forEach var="i" items="${rList}" varStatus="cnt">
	<div class="list_cmt">
		<div class="cmt_head">
		  <c:if test="${i.no ne i.pnum }">
		      &nbsp;&nbsp;&nbsp;
		  </c:if>
		<img src="/web/reImg/${i.image}" width="40" height="40"></img></div>
		<div class="cmt_body">
			<span class="info_append">
				<span class="txt_name">${i.id}</span>
				<span class="txt_bar">|</span>
				<span class="txt_time">${i.regdate}</span>
			</span>
			<p class="txt_desc">
				${i.contents}
			</p>
		</div>
		<div class="cmt_foot">
			<a href="#none" id="frm${cnt.count}">답글</a><span class="txt_bar">|</span><a href="#none">수정</a><span class="txt_bar">|</span><a href="#none">삭제</a><span class="txt_bar">|</span><a href="#none">신고</a>
		</div>
	</div>
	<form action="/web/replyInsert.do" method="post" id="frm${cnt.count}" name="frm"><!-- /*insertReply.do replyController 일때 필요*/ -->
		<fieldset class="fld_cmt">
		
			<legend class="screen_out">댓글 작성</legend>
			<input type="hidden" name="id" value="${id}"/>
			<input type="hidden" name="image" value="3.jpg" id="image"/>
			<input type="hidden" name="infopk" value="${info.no}"/>
			<input type="hidden" name="job" value="reply">
			<input type="text" name="pnum" value="${i.no}">
			<input type="text" name="ref" value="${i.ref}">
			
			<textarea name="contents"class="tf_cmt" cols="90" rows="5" title="한줄 토크를 달아주세요">한줄 토크를 달아주세요! (300자)</textarea>
			<!-- <button type="submit" class="img_sample btn_cmt">등록</button> -->
			<input id="btn" type="button" name="${cnt.count}"value="등록" style="position: absolute;top: 695x; width: 100px; height: 54px;"/>
			<p class="info_append">
				<span class="screen_out">입력된 바이트 수 : </span>
				<span class="txt_byte">55</span> / 300자
				<span class="txt_bar">|</span>
				<a href="#none">댓글 운영원칙</a>
			</p>
		</fieldset>
	</form>
	</c:forEach>
</div>

</body>

</html>






