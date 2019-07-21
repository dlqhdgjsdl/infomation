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
<link href="../css/contents.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script>
   $(function(){
	   $("img#btnSubmit").click(function(){
		   if($("input#id").val().length==0||$("input#pssword").val().length==0){
			   alert('ID PASS CHECK!');
			   return false;
		   }
		   //$("form").submit();
		   $.ajax({
			  url:'/web/login.do',
			  type:'POST',
			  data:"id="+$("input#id").val()+"&pw="+$("input#pssword").val(),
			  dataType:'text',
			  success:function(v){
				  if(v.trim()=='true'){
					 document.location.href='/web/cardList.do';//empList.do를 하면 crudcontroll로 이동함
				  }else{
					  $("span").html("<font color='red'>ID PASS CHECK</font>");
				  }
			  },
			  error:function(){
				  alert('error');
			  }
		   });
	   });
   });
</script>
</head>
<body>
<form name="login" method="post" action="/web/login.do">
 <div id="loginWrapper">
  <div class="loginForm">
   <fieldset>
    <legend>관리자 시스템 로그인</legend>
    <dl>
     <dt><img src="../img/common/th_id.gif" alt="아이디" /></dt>
     <dd><input type="text" name="id" class="text" id="id" /></dd>

     <dt><img src="../img/common/th_pw.gif" alt="비밀번호" /></dt>
     <dd><input type="password" name="pssword" class="text" id="pssword" /></dd>
    </dl>
    <div class="btn">
     <img id="btnSubmit" src="../img/button/btn_login.gif" alt="LOGIN" title="LOGIN"  />
    </div>
    
    <div class="saveId"><input type="checkbox" id="checker" name="checker" /> 
     <img src="../img/common/save_id.gif" alt="아이디 저장" />
     <span></span>
    </div>
   </fieldset>
  </div>
 </div>
</form>
</body>
</html>