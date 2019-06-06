<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<title>배달의민족 사장님 사이트</title>

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<style type="text/css">
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
div#password{
	font-family: monospace;
	font: bold;
}
input#passcheck{
font-family: monospace;
	font: bold;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(function() {
		/*카테고리변경하면 히든에 값*/
		$("#catemain").change(function(){
			$("#ownermenucategory").val($(this).val());
		});
	        /*passfocusout*/   	
		$("#passcheck").focusout(function(){
			if($("#passcheck").val()!=$("#pass").val()){
				$("label#passlaber").text("passcheck");
			}else{
				console.log($(this).val());
				$("input#onwerpass").val($(this).val());
				$("label#passlaber").text("");
			}
			
		});
		
		/*submit*/
		$("a#join").click(function(){
			
			$("#frm").submit();
		});
		
            /*주소창   */
		$("button#addr").click(function(){
		    new daum.Postcode({
		        oncomplete: function(data) {
		        	$("#postN").val(data.postcode);
		        	$("input#addr").val(data.jibunAddress);
		        }
		    }).open();
		});
		$("input#addr2").focusout(function(){
            //alert($("#postN").val());
            $("input#owneraddr").val($("#postN").val()+" "+$("input#addr").val()+" "+$(this).val());
			//$("input#owneraddr").value($("#postN").text());
		});/* +"#"+$("input#addr").val()+"#"+$(this).val() */
		
	});
</script>
</head>

<body class="">

	<div class="container">

		<div class="card o-hidden border-0 shadow-lg my-5">
			<form class="user" id="frm" action="/web/ownerRegister.do" method="post">
				<div class="card-body p-0">
					<!-- Nested Row within Card Body -->
					<div class="row">
						<div class="col-lg-5 d-none d-lg-block ">
							<img alt="" src="/web/TeamProject/img/bm_login_image.jpg"><img
								alt="" src="/web/TeamProject/img/bm_login_image.jpg"><img
								alt="" src="/web/TeamProject/img/bm_login_image1.jpg">
						</div>
						<div class="col-lg-7">
							<div class="p-5">
								<div class="text-center">
									<a href="/web/TeamProject/Main.jsp"><img alt="" src="/web/TeamProject/img/bm.png"></a>

									<p class="h4 text-gray-900 mb-4">
									<p>
								</div>
								<p style="color: black;">필수 정보를 입력해주세요.
								<p>
								<div class="form-row">
									<input type="text" class="form-control " id="ownerid" name="ownerid"
										placeholder="아이디*(4~20자)">
								</div>
								<br>
								<div class="form-row" id="password">
									<input type="password" class="form-control " id="pass" name="pass"
										placeholder="비밀번호*(영문+숫자,8~20자)">
								</div>
								<br>

								<div class="form-row">
									<input type="password" class="form-control " id="passcheck" name="passcheck"
										placeholder="비민번호 재확인*">
										<label id="passlaber" style="color: red" ></label>
										<input type="hidden" name="ownerpass" id="onwerpass" >
								</div>
								<br>
								<div class="form-row">
									<input type="email" class="form-control " id="owneremail" name="owneremail"
										placeholder="이메일*">
								</div>
								<br>
								<div class="form-row">
									<input type="text" class="form-control " id="ownername" name="ownername" placeholder="이름*">
								</div>
								<br>
								<div class="form-row">
									<select id="catemain" class=" form-control">
										<option value="empty" selected>업종선택</option>
										<option value="chiken">치킨</option>
										<option value="pizza">피자</option>
										<option value="boonsik">분식</option>
										<option value="china">중식</option>
										<option value="korea">한식</option>
										<option value="japan">일식</option>
										<option value="pig">족발/보쌈</option>
									</select>
									<input type="hidden" id="ownermenucategory" name="ownermenucate" value="">
								</div>
								<div class="form-row">
									<input type="text" class="form-control " id="ownerphone" name="ownerphone" placeholder="핸드폰번호*">
								</div>

							</div>

							<div class="p-5">
								<p style="color: black;">선택정보를 입력해주세요</p>

								<div class="form-row">
									<input type="text" class="form-control form-control-user"
										id="postN" placeholder="우편번호" style="width: 200px;" disabled="disabled">
									<button class="btn" type="button" id="addr">주소찾기</button>
								</div>
								<br>
								<div class="form-row">
									<input type="text" class="form-control form-control-user"
										id="addr" placeholder="주소" disabled="disabled">
								</div>
								<br>

								<div class="form-row">
									<input type="text" class="form-control form-control-user"
										id="addr2" placeholder="상세주소">
								</div>
								<div class="form-row">
									<input type="text" class="form-control form-control-user"
										id="owneraddr" name="owneraddr" >
								</div>

								<br>

								<!-- test -->
								<div class="signup-terms">
									<div class="input-checkbox input-check-all">
										<input id="terms-all" data-ref="termsAll" type="checkbox"><label
											for="terms-all">전체 약관에 동의합니다</label>
									</div>

									<div class="input-checkbox input-check-term">
										<input id="terms-required" class="terms-item"
											name="termsRequired" type="checkbox"><label
											for="terms-required">필수 항목에 동의합니다.</label>
									</div>

									<div class="input-checkbox">
										<input name="termsMarketing" data-ref="termsMarketing"
											id="terms-marketing" class="terms-item" type="checkbox"><label
											for="terms-marketing">광고성 정보 수신 동의 (선택)</label>
									</div>
									<ul class="info-list">
										<li>만 14세 이상 회원만 가입 가능합니다. <a class="notice-14"></a></li>
									</ul>
								</div>


								<a id="join"  class="btn btn-primary btn-user btn-block">
									가입완료 </a>
								<hr>
								<hr>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

	</div>

</body>

</html>
