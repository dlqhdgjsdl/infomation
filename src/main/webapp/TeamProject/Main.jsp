<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<link rel="stylesheet" href="/web/TeamProject/css/main2.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script>
$(document).ready(function(){ 
	$('.bxslider').bxSlider({ 
		auto: true, 
		speed: 500, 
		pause: 4000, 
		mode:'fade', 
		autoControls: true, 
		pager:true
		}); 
	});

$(function(){
	$("div.bx-viewport").css("height","495px");
	$(".bx-wrapper").css("max-width","none");
	
	$("div#nav>div").mouseover(function(){
		$("div#nav").css("background-color","#fff").css("z-index","9999999");
		$("div#nav_middle ul#mainnav>li>a").css("color","#666a75");
		$("ul#mainnav>li").find("ul").css("display","block");
	});
	$("div#nav").mouseleave(function(){
		$("div#nav").css("background-color","rgba(0,0,0,0)").css("z-index","999");
		$("div#nav_middle ul#mainnav>li>a").css("color","#fff");
		$("ul#mainnav>li").find("ul").css("display","none");
	});
	$("ul#subnav").mouseover(function(){
		$(this).siblings("ul").css("border-bottom","1px solid #666a75");
	});
if("${owner.ownerno}"==null||"${owner.ownerno}"==''){
			
			
			/*로그인안됐을때*/
			$("a").each(function(index,dom){
				console.log($(this).href);
				if($(this).attr('href')!='/web/TeamProject/register.jsp'){
					if($(this).attr('href')!="/web/TeamProject/forgotPassword.jsp"){
						if($(this).attr('href')!="/web/TeamProject/forgotId.jsp"){
					$(this).attr('href','/web/TeamProject/login.jsp');
						}
					}
				}
			});
		}
	

});

</script>
<style type="text/css">
.bx-wrapper img{
	display: block;
    width: 100%;
}
footer div#footer-div { /*밑부분 footer div*/
   padding-left: 20%;
   margin-top: 300px;
   font-size: 40px;
   background-color: gray;
   color: black;
}
/* head 부분과 footer 부분--------------------------------- */
.sec-lft { /* div 사장님로그인 위치설정 */
   float: left;
   width: 900px;
   border-right: 1px solid #f8f9fa;
   box-sizing: border-box;
   border-bottom: 1px solid #f8f9fa;
   border-bottom: 0;
   padding-left: 10%;
}

.btn { /* 사장님 버튼 관리 */
   padding: 20px 0;
   font-size: 17px;
   font-weight: normal;
   color: #fff;
   border: 1px solid #1a7cff;
   background-color: #1a7cff;
   display: block;
   margin: 0;
   transition: 0.4s background-color;
   line-height: 18px;
   text-align: center;
   box-sizing: border-box;
   width: 100%;
}

.btn-more { /* 더보기 버튼 설정 */
   position: absolute;
   right: 0;
   top: 3px;
   position: absolute;
   right: 0;
   top: 3px;
   padding-right: 12px;
   font-size: 12px;
   color: graytext;
}

.sec-rgt { /* 사장님 로그인 부분 div */
   float: right;
   margin-right: 15%;
   width: 360px;
   box-sizing: border-box;
}

.column .column-notice { /* 사장님 로그인해주세요 텍스트 위치 관리 */
   border-bottom: 1px solid #f8f9fa;
   padding: 34px 29px 27px 0;
   min-height: 192px;
}

.stit { /* 사장님로그인해주세요 폰트 관리 */
   margin-bottom: 10px;
   position: relative;
   font-size: 17px;
   color: #212329;
}

.date { /* 날짜 설정 */
   position: absolute;
   left: 550px;
   color: black;
   font-weight: 300;
   font-size: 15px;
   padding-top: 15px;
}
.footer{
width: 100%}

</style>
</head>
<body>
<div id="container">
	<div id="nav">
      <div>
      <div id="nav_header" class="clearfix">
         <a href="javascript:void(0)"><img src="/web/TeamProject/img/logo.png"></a>
         <ul>
            <li><a href="/web/TeamProject/login.jsp">로그인</a></li>
            <li><a href="/web/TeamProject/register.jsp">회원가입</a></li>
         </ul>
      </div>
      <div id="nav_middle">
         <ul id="mainnav" class="clearfix">
            <li><a href="javascript:void(0)">매장관리메뉴</a>
               <ul class="subnav">
                  <li><a href="/web/storeManagement.do?ownerno=${owner.ownerno}">매장관리</a></li>
                  <li><a href="/web/TeamProject/menuCount.jsp">메뉴별매출</a></li>
                  <li><a href="/web/TeamProject/menuCount2.jsp">월별매출</a></li>
               </ul>
            </li>
            <li><a href="javascript:void(0)">제품관리메뉴</a>
               <ul class="subnav">
                  <li><a href="/web/TeamProject/menuManager.jsp">메뉴관리</a></li>
                  <li><a href="/web/TeamProject/review.jsp">리뷰관리</a></li>
                  <li><a href="/web/TeamProject/coupon.jsp">쿠폰관리</a></li>
               </ul>
            </li>
            <li><a href="javascript:void(0)">나의정보</a>
               <ul class="subnav">
                  <li><a href="/web/TeamProject/masterInfo.jsp">회원정보수정</a></li>
                  <li><a href="#">상회연결</a></li>
               </ul>
            </li>
         </ul>
         </div>
      </div>
   </div>
 	<ul class="bxslider">
		<li> 
			<div style="position: absolute;width: 1153px;top: 245px; left: 0; right: 0; bottom: 0;  margin: auto;">
			<pre>페르디가오 1박스 12kg
47,000원으로 만나보세요!</pre>
			<input type="button" value="자세히 보기 >>">
</div> 
			<img src="/web/TeamProject/img/main_img1.jpg" /> 
		</li>
		<li> 
			<div style="position: absolute;width: 1153px;top: 245px; left: 0; right: 0; bottom: 0;  margin: auto;">
			<pre>4월 17일,
오픈리스트 사전 신청이 시작됩니다.</pre>
			<input type="button" value="자세히 보기 >>">
			</div> 
			<img src="/web/TeamProject/img/main_img2.jpg" /> 
		</li>
		<li> 
			<div style="position: absolute;width: 1153px;top: 245px; left: 0; right: 0; bottom: 0;  margin: auto;">
			<pre>사장님, 우리가게 누락매출
확인해보셨나요?</pre>
			<input type="button" value="자세히 보기 >>">
			</div> 
			<img src="/web/TeamProject/img/main_img3.png" /> 
		</li>
  	</ul>
  	
  	<!--공지사항부터-->

  	
  	      <ul class="section-grid" style="padding-top: 14%;position: relative;">

         <div class="sec-lft"">
               <!-- 공지사항 div -->
                  <div class="stit">
                     <h3>공지사항</h3>
                     <a href="#" class="btn-more" style="text-decoration: none;">더보기

                     </a>
                  </div>
                  <ul class="list">
                     <li><a href="#" style="text-decoration: none">공지[1] <span
                           class="ico-new ir"><img
                              src="/web/TeamProject/img/new.jpg" width="40" height="30"></img></span>
                           <!-- 아이콘 입력 -->
                     </a> <span class="date">2019-04-16</span>
                     <!-- 날짜설정 --></li>
                     <li><a href="#" style="text-decoration: none">공지[2] <span
                           class="ico-new ir"><img
                              src="/web/TeamProject/img/new.jpg" width="40" height="30"></img></span>
                           <!-- 아이콘 입력 -->
                     </a> <span class="date">2019-04-16</span>
                     <!-- 날짜설정 --></li>
                     <li><a href="#" style="text-decoration: none">공지[3] <span
                           class="ico-new ir"><img
                              src="/web/TeamProject/img/new.jpg" width="40" height="30"></img></span>
                           <!-- 아이콘 입력 -->
                     </a> <span class="date">2019-04-16</span>
                     <!-- 날짜설정 --></li>
  
<br><br><br>
                  </ul>
         </div>
            </ul>

      <div class="sec-rgt" style="position: relative;">
         <div class="column column-login">
            <div class="stit">
               <h3>사장님,로그인 해주세요</h3>
            </div>
         </div>
         <a href="/web/TeamProject/login.jsp" class="btn">사장님사이트 로그인</a>
         <ul class="login-link">
            <li><a href="/web/TeamProject/forgotId.jsp" style="text-decoration: none;">아이디</a>/<a
               href="/web/TeamProject/forgotPassword.jsp" style="text-decoration: none;">비밀번호 찾기</a></li>
            <li><a href="/web/TeamProject/register.jsp">회원가입</a></li>
         </ul>
      </div>
      <!--------------중간부분-------------->
      <jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>