<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script	src="//maxcdn.bootstrapcdn.com/bootstrap/latest/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Insert title here</title>
<style type="text/css">
.inputLog {
	height: 60%;
}

.inner {
	width: 95;
	text-align: center;
	vertical-align: middle;
	margin: 0 auto;
}

#datepicker {
	margin: 0 auto;
}

@font-face {
	font-family: "BM";
	src: url("BMDOHYEON_ttf.ttf") format("truetype");
}

body {
	background-image: url();
	background-size:;
	font-family: BM;
	color: gray;
	font-size:;
}



</style>
<script>
$(function(){
	$("input#ownerpass").focusout(function(){
		if($(this).val()!=$("input#ownerpass1").val()){
			$("label#passcheck").text("PASSCHECK");
			$(this).val('');
			$("input#ownerpass1").val('');
		}
	});
	$("input#ownerphone1").focusout(function(){
		$("input#ownerphone").val($(this).val().replace(/-/g,''));
	});
	$("a#modify").click(function(){
		if($("input#ownerpass").val()==''){
			$("label#passcheck").text("PASSCHECK");
			return false;
		}
		$("#frm").submit();
	});
});
</script>

</head>

<body style="background-color: white;">


	<jsp:include page="header.jsp"></jsp:include>



	<div class="container" align="center" >
		<div class="row">
			<div class="col-sm-12" style="height: 100px;"></div>
			<!-- <div class="col-sm-1" ></div> -->
			<!-- 첫칸 -->
			<form action="/web/infomodify.do" class="form-horizontal" method="post" id="frm">
				<div class="col-sm-5" style="background-color: white; border-radius: 30px; border: 1px solid #ccc;left:30%;" >
					<h1 align="center">리추로 프로필</h1>
					<br> 
					<br> 
					<img src="/web/TeamProject/img/profile.jpg"	class="img-circle" alt="Cinque Terre"> <br> <br>
					<br>
					<div class="inputLog">
						<div class="inner">
							<div class="form-group">
								<input type="hidden" name="ownerno" value="${owner.ownerno}">
								<label for="inputName" class="col-sm-2 control-label" style="">이름</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="ownername" name="ownername" placeholder="이름" readonly="readonly" value="${owner.ownername}">
								</div>
							</div>

							<div class="form-group">
								<label for="inputId" class="col-sm-2 control-label">아이디</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="ownerid" name="ownerid" placeholder="아이디" readonly="readonly" value="${owner.ownerid}">
								</div>
							</div>
							<div class="form-group">
								<label for="inputPw" class="col-sm-2">비밀번호</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="ownerpass1" name="ownerpass1" placeholder="비밀번호" >
									
								</div>
							</div>
							<div class="form-group">
								<label for="inputPw" class="col-sm-2 ">비밀번호 확인</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="ownerpass" name="ownerpass" placeholder="비밀번호 확인">
									<label id="passcheck" style="color: red"></label>
								</div>
							</div>
							<div class="form-group">
								<label for="inputEmail" class="col-sm-2 control-label">이메일</label>
								<div class="col-sm-10">
									<input type="text" class="form-control " id="owneremail" name="owneremail" placeholder="이메일"  value="${owner.owneremail}">
								</div>
							</div>
							
							
							<div class="form-group">
								<label for="inputAddress" class="col-sm-2 control-label">주소</label>
								<div class="col-sm-10">
									<button type="button" class="btn btn-default"
										style="width: 100%" id="owneraddr1" name="owneraddr1">
										<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
									</button>
									<input type="text" class="form-control" id="owneraddr2" name="owneraddr2" readonly="readonly" value="">
									<input type="text" class="form-control" id="owneraddr3" name="owneraddr3" placeholder="상세주소" value="${owner.owneraddr}">
									<input type="text" id="owneraddr" name="owneraddr">
								</div>
							</div>
							
							
							
							<div class="form-group">
								<label for="inputTel" class="col-sm-2 control-label">전화번호</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="ownerphone1" name="ownerphone1" placeholder="전화번호" value="${owner.ownerphone}">
									<input type="hidden" class="form-control" id="ownerphone" name="ownerphone" placeholder="전화번호" value="">
									</div>
								</div>
							</div>
							<div class="form-group">
							 <a href="#" class="btn btn-lg btn-warning" id="modify"><span class="glyphicon glyphicon-ok"></span> 수정</a>
								<a href="#" class="btn btn-lg btn-danger" id="exit"><span class="glyphicon glyphicon-ban-circle"></span>탈퇴</a>
							</div>
						</div>
					</div>
			</form>
				</div>
				
		</div>
		
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>