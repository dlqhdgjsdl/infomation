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
			
			
			/*�α��ξȵ�����*/
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
footer div#footer-div { /*�غκ� footer div*/
   padding-left: 20%;
   margin-top: 300px;
   font-size: 40px;
   background-color: gray;
   color: black;
}
/* head �κа� footer �κ�--------------------------------- */
.sec-lft { /* div ����Էα��� ��ġ���� */
   float: left;
   width: 900px;
   border-right: 1px solid #f8f9fa;
   box-sizing: border-box;
   border-bottom: 1px solid #f8f9fa;
   border-bottom: 0;
   padding-left: 10%;
}

.btn { /* ����� ��ư ���� */
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

.btn-more { /* ������ ��ư ���� */
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

.sec-rgt { /* ����� �α��� �κ� div */
   float: right;
   margin-right: 15%;
   width: 360px;
   box-sizing: border-box;
}

.column .column-notice { /* ����� �α������ּ��� �ؽ�Ʈ ��ġ ���� */
   border-bottom: 1px solid #f8f9fa;
   padding: 34px 29px 27px 0;
   min-height: 192px;
}

.stit { /* ����Էα������ּ��� ��Ʈ ���� */
   margin-bottom: 10px;
   position: relative;
   font-size: 17px;
   color: #212329;
}

.date { /* ��¥ ���� */
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
            <li><a href="/web/TeamProject/login.jsp">�α���</a></li>
            <li><a href="/web/TeamProject/register.jsp">ȸ������</a></li>
         </ul>
      </div>
      <div id="nav_middle">
         <ul id="mainnav" class="clearfix">
            <li><a href="javascript:void(0)">��������޴�</a>
               <ul class="subnav">
                  <li><a href="/web/storeManagement.do?ownerno=${owner.ownerno}">�������</a></li>
                  <li><a href="/web/TeamProject/menuCount.jsp">�޴�������</a></li>
                  <li><a href="/web/TeamProject/menuCount2.jsp">��������</a></li>
               </ul>
            </li>
            <li><a href="javascript:void(0)">��ǰ�����޴�</a>
               <ul class="subnav">
                  <li><a href="/web/TeamProject/menuManager.jsp">�޴�����</a></li>
                  <li><a href="/web/TeamProject/review.jsp">�������</a></li>
                  <li><a href="/web/TeamProject/coupon.jsp">��������</a></li>
               </ul>
            </li>
            <li><a href="javascript:void(0)">��������</a>
               <ul class="subnav">
                  <li><a href="/web/TeamProject/masterInfo.jsp">ȸ����������</a></li>
                  <li><a href="#">��ȸ����</a></li>
               </ul>
            </li>
         </ul>
         </div>
      </div>
   </div>
 	<ul class="bxslider">
		<li> 
			<div style="position: absolute;width: 1153px;top: 245px; left: 0; right: 0; bottom: 0;  margin: auto;">
			<pre>�丣�𰡿� 1�ڽ� 12kg
47,000������ ����������!</pre>
			<input type="button" value="�ڼ��� ���� >>">
</div> 
			<img src="/web/TeamProject/img/main_img1.jpg" /> 
		</li>
		<li> 
			<div style="position: absolute;width: 1153px;top: 245px; left: 0; right: 0; bottom: 0;  margin: auto;">
			<pre>4�� 17��,
���¸���Ʈ ���� ��û�� ���۵˴ϴ�.</pre>
			<input type="button" value="�ڼ��� ���� >>">
			</div> 
			<img src="/web/TeamProject/img/main_img2.jpg" /> 
		</li>
		<li> 
			<div style="position: absolute;width: 1153px;top: 245px; left: 0; right: 0; bottom: 0;  margin: auto;">
			<pre>�����, �츮���� ��������
Ȯ���غ��̳���?</pre>
			<input type="button" value="�ڼ��� ���� >>">
			</div> 
			<img src="/web/TeamProject/img/main_img3.png" /> 
		</li>
  	</ul>
  	
  	<!--�������׺���-->

  	
  	      <ul class="section-grid" style="padding-top: 14%;position: relative;">

         <div class="sec-lft"">
               <!-- �������� div -->
                  <div class="stit">
                     <h3>��������</h3>
                     <a href="#" class="btn-more" style="text-decoration: none;">������

                     </a>
                  </div>
                  <ul class="list">
                     <li><a href="#" style="text-decoration: none">����[1] <span
                           class="ico-new ir"><img
                              src="/web/TeamProject/img/new.jpg" width="40" height="30"></img></span>
                           <!-- ������ �Է� -->
                     </a> <span class="date">2019-04-16</span>
                     <!-- ��¥���� --></li>
                     <li><a href="#" style="text-decoration: none">����[2] <span
                           class="ico-new ir"><img
                              src="/web/TeamProject/img/new.jpg" width="40" height="30"></img></span>
                           <!-- ������ �Է� -->
                     </a> <span class="date">2019-04-16</span>
                     <!-- ��¥���� --></li>
                     <li><a href="#" style="text-decoration: none">����[3] <span
                           class="ico-new ir"><img
                              src="/web/TeamProject/img/new.jpg" width="40" height="30"></img></span>
                           <!-- ������ �Է� -->
                     </a> <span class="date">2019-04-16</span>
                     <!-- ��¥���� --></li>
  
<br><br><br>
                  </ul>
         </div>
            </ul>

      <div class="sec-rgt" style="position: relative;">
         <div class="column column-login">
            <div class="stit">
               <h3>�����,�α��� ���ּ���</h3>
            </div>
         </div>
         <a href="/web/TeamProject/login.jsp" class="btn">����Ի���Ʈ �α���</a>
         <ul class="login-link">
            <li><a href="/web/TeamProject/forgotId.jsp" style="text-decoration: none;">���̵�</a>/<a
               href="/web/TeamProject/forgotPassword.jsp" style="text-decoration: none;">��й�ȣ ã��</a></li>
            <li><a href="/web/TeamProject/register.jsp">ȸ������</a></li>
         </ul>
      </div>
      <!--------------�߰��κ�-------------->
      <jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>