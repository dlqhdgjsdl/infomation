<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../Test/css/default.css" />
<script src="../js/jquery-2.1.4.min.js" charset = "UTF-8"></script>
</head>
<script src="../js/myPage.js" charset="UTF-8"></script>

<body>
   <div id="header">
      <div class="header_wrap">
         <div class="bg_black_login">
            <ul class="korea">
               <li><img src="../Test/img/korea.jpg"></li>
               <li>대한민국</li>
            </ul>
            <ul class="login">
               <li>
                  <a href="../member/login.jsp" class="desc">로그인</a>
                      <input type="hidden" id="url" value="">
                      <!-- 액션명 받아오기 -->
                  <a href="#" class="desc">님 로그아웃</a>
                </li>
               <li>|</li>
               <li>
                  <a href="../member/join.jsp" class="desc">회원가입</a>
                  <a href="../member/identity01.jsp" class="desc">마이페이지</a>
               </li>
            </ul>
         </div>

			<div class="header_gnb">
				<a href="../jsp/main.jsp"><p>
						<img alt="" src="../img/logo2.jpg">
					</p></a>
				<ul class="gnb_menu">
					
					<a href="../cart/cartList.jsp">
						<li><img src="../Test/img/reserve.png" onmouseover="this.src='../Test/img/reserve_on.png'" onmouseout="this.src='../Test/img/reserve.png'"></li>
						<li>장바구니</li>
					</a>

					<a href="../board/board.jsp">
					<li><img src="../Test/img/sch.png" onmouseover="this.src='../Test/img/sch_on.png'" onmouseout="this.src='../Test/img/sch.png'"></li>
					<li>게시판</li>

					</a>
				
				</ul>
			</div>
		</div>
	</div>
</body>
</html>