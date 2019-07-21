<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="copyright" content="Copyright 2009 @ high1 all rights reserved" />
<link href="../css/default.css" rel="stylesheet" type="text/css" />

<script src="../script/jquery-1.7.2.js"></script>
<script >
$(document).ready(function(){
	 $("#btnSubmit").click(function(){
		 $("form").submit();		 
	 });	
});

</script>
<!-- 관리자 페이지 로그인 페이지 로그인과 통합 -->
<!--  로그인페이지 member 폴더 >  login.jsp  -->

</head>
<body>
	<div id="wrap">
		<!-- header -->
		<jsp:include page="../include/topGnb.jsp"></jsp:include>
		<!--// header -->

		<div id="sub_container">
			<div id="contentsWrap" class="sub_con5">
				<div class="board_form">   
		            <div class="con_title">
		               <p>장바구니 리스트</p>   
		            </div>
			<form name="login" method="post" action="../cartStruts/adminCheckLogin.action">
			 <div id="loginWrapper">
			  <div class="loginForm">
			   <fieldset>
			    <legend>관리자 시스템 로그인</legend>
			    <dl>
			     <dt><img src="../img/common/th_id.gif" alt="아이디" /></dt>
			     <dd><input type="text" name="user_id" class="text" id="user_id" /></dd>
			
			     <dt><img src="../img/common/th_pw.gif" alt="비밀번호" /></dt>
			     <dd><input type="password" name="user_passwd" class="text" id="user_passwd" /></dd>
			    </dl>
			    <div class="btn">
			     <img id="btnSubmit" src="../img/button/btn_login.gif" alt="LOGIN" title="LOGIN"  />
			    </div>
			    
			    <div class="saveId"><input type="checkbox" id="checker" name="checker" /> 
			     <img src="../img/common/save_id.gif" alt="아이디 저장" />
			    </div>
			   </fieldset>
			  </div>
			 </div>
			</form>
			
			</div>
			</div>
			</div>
			
		</div>
</body>
</html>