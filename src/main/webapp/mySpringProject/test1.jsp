<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript">
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
/** VARIABLES
===================================*/
/** RESET AND LAYOUT
===================================*/
.bx-wrapper {
  position: relative;
  margin-bottom: 60px;
  padding: 0;
  *zoom: 1;
  -ms-touch-action: pan-y;
  touch-action: pan-y;
}
.bx-wrapper img {
  max-width: 100%;
  display: block;
}
.bxslider {
  margin: 0;
  padding: 0;
}
ul.bxslider {
  list-style: none;
}
.bx-viewport {
  /*fix other elements on the page moving (on Chrome)*/
  -webkit-transform: translatez(0);
}
/** THEME
===================================*/
.bx-wrapper {
  -moz-box-shadow: 0 0 5px #ccc;
  -webkit-box-shadow: 0 0 5px #ccc;
  box-shadow: 0 0 5px #ccc;
  border: 5px solid #fff;
  background: #fff;
}
.bx-wrapper .bx-pager,
.bx-wrapper .bx-controls-auto {
  position: absolute;
  bottom: -30px;
  width: 100%;
}
/* LOADER */
.bx-wrapper .bx-loading {
  min-height: 50px;
  background: url('images/bx_loader.gif') center center no-repeat #ffffff;
  height: 100%;
  width: 100%;
  position: absolute;
  top: 0;
  left: 0;
  z-index: 2000;
}
/* PAGER */
.bx-wrapper .bx-pager {
  text-align: center;
  font-size: .85em;
  font-family: Arial;
  font-weight: bold;
  color: #666;
  padding-top: 20px;
}
.bx-wrapper .bx-pager.bx-default-pager a {
  background: #666;
  text-indent: -9999px;
  display: block;
  width: 10px;
  height: 10px;
  margin: 0 5px;
  outline: 0;
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  border-radius: 5px;
}
.bx-wrapper .bx-pager.bx-default-pager a:hover,
.bx-wrapper .bx-pager.bx-default-pager a.active,
.bx-wrapper .bx-pager.bx-default-pager a:focus {
  background: #000;
}
.bx-wrapper .bx-pager-item,
.bx-wrapper .bx-controls-auto .bx-controls-auto-item {
  display: inline-block;
  vertical-align: bottom;
  *zoom: 1;
  *display: inline;
}
.bx-wrapper .bx-pager-item {
  font-size: 0;
  line-height: 0;
}
/* DIRECTION CONTROLS (NEXT / PREV) */
.bx-wrapper .bx-prev {
  left: 10px;
  background: url('images/controls.png') no-repeat 0 -32px;
}
.bx-wrapper .bx-prev:hover,
.bx-wrapper .bx-prev:focus {
  background-position: 0 0;
}
.bx-wrapper .bx-next {
  right: 10px;
  background: url('images/controls.png') no-repeat -43px -32px;
}
.bx-wrapper .bx-next:hover,
.bx-wrapper .bx-next:focus {
  background-position: -43px 0;
}
.bx-wrapper .bx-controls-direction a {
  position: absolute;
  top: 50%;
  margin-top: -16px;
  outline: 0;
  width: 32px;
  height: 32px;
  text-indent: -9999px;
  z-index: 9999;
}
.bx-wrapper .bx-controls-direction a.disabled {
  display: none;
}
/* AUTO CONTROLS (START / STOP) */
.bx-wrapper .bx-controls-auto {
  text-align: center;
}
.bx-wrapper .bx-controls-auto .bx-start {
  display: block;
  text-indent: -9999px;
  width: 10px;
  height: 11px;
  outline: 0;
  background: url('images/controls.png') -86px -11px no-repeat;
  margin: 0 3px;
}
.bx-wrapper .bx-controls-auto .bx-start:hover,
.bx-wrapper .bx-controls-auto .bx-start.active,
.bx-wrapper .bx-controls-auto .bx-start:focus {
  background-position: -86px 0;
}
.bx-wrapper .bx-controls-auto .bx-stop {
  display: block;
  text-indent: -9999px;
  width: 9px;
  height: 11px;
  outline: 0;
  background: url('images/controls.png') -86px -44px no-repeat;
  margin: 0 3px;
}
.bx-wrapper .bx-controls-auto .bx-stop:hover,
.bx-wrapper .bx-controls-auto .bx-stop.active,
.bx-wrapper .bx-controls-auto .bx-stop:focus {
  background-position: -86px -33px;
}
/* PAGER WITH AUTO-CONTROLS HYBRID LAYOUT */
.bx-wrapper .bx-controls.bx-has-controls-auto.bx-has-pager .bx-pager {
  text-align: left;
  width: 80%;
}
.bx-wrapper .bx-controls.bx-has-controls-auto.bx-has-pager .bx-controls-auto {
  right: 0;
  width: 35px;
}
/* IMAGE CAPTIONS */
.bx-wrapper .bx-caption {
  position: absolute;
  bottom: 0;
  left: 0;
  background: #666;
  background: rgba(80, 80, 80, 0.75);
  width: 100%;
}
.bx-wrapper .bx-caption span {
  color: #fff;
  font-family: Arial;
  display: block;
  font-size: .85em;
  padding: 10px;
}
</style>
</head>
<body>
<ul class="bxslider">
		<li> 
			<div style="position: absolute;width: 1153px;top: 245px; left: 0; right: 0; bottom: 0;  margin: auto;">
			<pre>페르디가오 1박스 12kg
47,000원으로 만나보세요!</pre>
			<!-- <input type="button" value="자세히 보기 >>"> -->
</div> 
			<img src="/web/mySpringProject/image/0.png" /> 
		</li>
		<li> 
			<div style="position: absolute;width: 1153px;top: 245px; left: 0; right: 0; bottom: 0;  margin: auto;">
			<pre>4월 17일,
오픈리스트 사전 신청이 시작됩니다.</pre>
			</div> 
			<img src="/web/mySpringProject/image/1.png" /> 
		</li>
		<li> 
			<div style="position: absolute;width: 1153px;top: 245px; left: 0; right: 0; bottom: 0;  margin: auto;">
			<pre>사장님, 우리가게 누락매출
확인해보셨나요?</pre>
			</div> 
			<img src="/web/mySpringProject/image/2.png" /> 
		</li>

  	</ul>
</body>
</html>