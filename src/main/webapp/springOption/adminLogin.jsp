<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>������</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<meta name="copyright" content="Copyright 2009 @ high1 all rights reserved" />
<link href="/web/css/contents.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script>
   $(function(){
	   
	   if('${id}'==''||'${id}'=='empty'){
		   $("input:checkbox[id='ck']").attr("checked",false);
	   }else{
		   $("input:checkbox[id='ck']").attr("checked",true);
		   $("input[name='id']").val('${id}');
	   }
	   
	  $("img#btnSubmit").click(function(){
		  $("form").submit();
	  });
   });
</script>
</head>
<body>

<form name="login" method="post" action="/web/cookielogin.do">
 <div id="loginWrapper">
  <div class="loginForm">
   <fieldset>
    <legend>������ �ý��� �α���</legend>
    <dl>
     <dt><img src="/web/img/common/th_id.gif" alt="���̵�" /></dt>
     <dd><input type="text" name="id" class="text" id="id" /></dd>

     <dt><img src="/web/img/common/th_pw.gif" alt="��й�ȣ" /></dt>
     <dd><input type="password" name="pssword" class="text" id="pssword" /></dd>
    </dl>
    <div class="btn">
     <img id="btnSubmit" src="/web/img/button/btn_login.gif" alt="LOGIN" title="LOGIN"  />
    </div>
    
    <div class="saveId"><input type="checkbox" id="ck" name="ck" /> 
     <img src="/web/img/common/save_id.gif" alt="���̵� ����" />
     <span></span>
    </div>
   </fieldset>
  </div>
 </div>
</form>
</body>
</html>