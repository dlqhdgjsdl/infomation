<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="background:#fff">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<link type="text/css" rel="stylesheet" href="../css/default.css" />
<script src="/DosiAir/js/member.js" charset="UTF-8"></script>
<script src="/DosiAir/js/jquery-2.1.4.min.js" charset = "UTF-8"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<title>Insert title here</title>
<!-- interloginprocess( java model부분에 있음), db(interlogin) 사용,  interProcessDao 사용  interController 사용 intercepter 사용하기 위해 config 설정-->
</head>
<script>
	$(function(){
		$("input#btn1").click(function(){
			alert('tt');
			$("form").submit();
		});
	});
	
</script>

<body id="bg_white" onload="">
<form action="/web/interlogin.do" method="post" name="interlogin">
<div id="wrap">
	<!--Header-->
		<jsp:include page="../include/topGnb.jsp"></jsp:include>
	<!--END Header-->

	<div class="sub_con4">
		<div class="login_bg">
			<ul>
				<li class="login_font">로그인</li>
				<li class="text01">DOSIAIRLINE 로그인페이지 입니다.</li>
			</ul>

			<div class="id_left">
				<dl>
					<dt>아이디</dt>
					<dd><input type="text" name="id" id="id" value="" />
					<input type="hidden" id="" name="" value=""/></dd>
				</dl>
			</div>
			<div class="id_left02">
				<dl>
					<dt>비밀번호</dt>
					<dd><input type="password" name="pw" id="pw" value="" ></dd>
				</dl>
			</div>
			
			<div class="login_message">
			<span id="span1" style="display: none;">
				<font id="failMessage" color="red" size="2"></font>
			</span>
			</div>
			
			<div class="login_check">
				<ul>
					<li><input type="button" value="로그인" id="btn1"></li>
				</ul>				
			</div>

			<div class="search_login">
				<ul>
					<li>아이디/비밀번호 찾기</li><br/>			
					<li>회원으로 가입하지 않으신 분은<br/>지금 가입하세요. <a href="join.jsp">회원가입</a></li>			
				</ul>
			</div>
		</div>
	</div>
 </div>	
 </form>
</body>
</html>