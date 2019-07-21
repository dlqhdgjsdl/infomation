<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="/web/mySpringProject/css/main.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script >
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
	});

</script>
<style type="text/css">
.bx-wrapper img{
	display: block;
    width: 100%;
}
</style>
</head>
<body style="background-color: black;">
		<div id="nav">
      <div>
      <div id="nav_header" class="clearfix">
         <!-- 로고 추가 해야됨요 -->
         <a href="javascript:void(0)"><img src=""></a>
         <ul>
            <li><a href="/web/TeamProject/login.jsp">로그인</a></li>
            <li><a href="/web/TeamProject/register.jsp">회원가입</a></li>
         </ul>
      </div>
      <div id="nav_middle">
         <ul id="mainnav" class="clearfix">
            <li><a href="javascript:void(0)">MAN</a>
               <ul class="subnav">
                  <li><a href="#">신상품</a></li>
                  <li><a href="#">인기상품</a></li>
                  <li><a href="#">할인상품</a></li>
               </ul>
            </li>
            <li><a href="javascript:void(0)">WOMAN</a>
               <ul class="subnav">
                  <li><a href="#">신상품</a></li>
                  <li><a href="#">인기상품</a></li>
                  <li><a href="#">할인상품</a></li>
               </ul>
            </li>
            <li><a href="javascript:void(0)">장바구니</a>
               <ul class="subnav">
                  <li><a href="#">상품</a></li>
                  <li><a href="#">배송현황</a></li>
               </ul>
            </li>
         </ul>
         </div>
      </div>
   </div>

   	<ul class="bxslider">
		<li> 
			<div style="position: absolute;width: 100%;top: 245px; left: 0; right: 0; bottom: 0;  margin: auto;">
			<pre>NIKE</pre>
			<!-- <input type="button" value="자세히 보기 >>"> -->
</div> 
			<img src="/web/mySpringProject/image/1.png" /> 
		</li>
		<li> 
			<div style="position: absolute;width: 100%;top: 245px; left: 0; right: 0; bottom: 0;  margin: auto;">
			<pre>ADIDAS</pre>
			</div> 
			<img src="/web/mySpringProject/image/2.png" /> 
		</li>
		<li> 
			<div style="position: absolute;width: 100%;top: 245px; left: 0; right: 0; bottom: 0;  margin: auto;">
			<pre>FILA</pre>
			</div> 
			<img src="/web/mySpringProject/image/3.png" /> 
		</li>
		<li>
		<div style="position: absolute;width: 100%;top: 245px; left: 0; right: 0; bottom: 0;  margin: auto;">
			<pre>REEBOK</pre>
			</div> 
			<img src="/web/mySpringProject/image/0.png" /> 
		</li>
  	</ul>

</body>
</html>