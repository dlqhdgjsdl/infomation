<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(function(){
	$("a#login").click(function(){
		$("form#frm").submit();
	});
});
</script>

<title>배달의민족 사장님 사이트</title>

<!-- Custom fonts for this template-->
<!--  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
 -->
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
input#pass{
	font-family: monospace;
}
</style>
</head>

<body class="wrap">

	<div class="content">

		<!-- Outer Row -->
		<div class="row justify-content-center ">

			<div class="col-xl-10 col-lg-12 col-md-9" style="margin-left: 36%;">

				<div class="container">

					<!-- Nested Row within Card Body -->

					<%-- <div class="col-lg-6 d-none d-lg-block bg-login-image></div> --%>
              
              <div class="col-lg-6">
                <div class="p-5">
                
                  <div class="text-center">
                  <p class="h4 text-gray-900 mb-4" ><img alt="" src="bm_logo.PNG"></p>
                    <h1 class="h4 text-gray-900 mb-4">사장님, 로그인해주세요.</h1>
                   
                  </div>
                  <form class="user" id="frm" action="/web/ownerlogin.do" method="post">
                    <div class="form-group">
                      <input type="email" class="form-control form-control-user"
                       name="id" id="id" aria-describedby="emailHelp" placeholder="아이디">
                    </div>
                    <div class="form-group">
                      <input type="password" class="form-control form-control-user" name="pass" id="pass" placeholder="비밀번호">
                    </div>
                    <div class="form-group">
                      <div class="custom-control custom-checkbox small">
                        <input type="checkbox" class="custom-control-input" id="customCheck">
                        <label class="custom-control-label" for="customCheck">아이디저장</label>
                      </div>
                    </div>
                    <a href="#" id="login" class="btn btn-primary btn-user btn-block">
                     	 로그인
                    </a>
                    <hr>
                  </form>
                  <hr>
                  <div class="text-center">
                    <a class="small" href="forgotPassword.jsp">비밀번호찾기</a>
                  </div>
                  <div class="text-center">
                    <a class="small" href="register.jsp">회원가입</a>
                    
                  </div>
                </div>
              </div>
           </div>
</div>
 </div>
 </div>

</body>

</html>
