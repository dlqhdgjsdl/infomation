<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
#header{ /* �ֹ� ����Ʈ  ��� �κ� */
    position: fixed;
    width: 100%;
    margin: 0 auto;
    padding: 0;
    border: none;
    text-align: center;
    z-index: 99;
    background: #fff;
    box-shadow: 0px 1px 0px rgba(0, 0, 0,0.08);
}
#top1 { /* �ֹ�����Ʈ ��� ���� ���� */
    margin: 0 auto;
    padding: 0;
    border: none;
    text-align: center;
}
.top_menu{ /* ��� �޴� ��ġ */
    position: relative;
    width: 1000px;
    
    background-position: left top;
}
#top_logo {
    margin: 0 auto;
    padding: 19px 0 0 10px;
    border: none;
    text-align: left;
    float: left;
}
img{
   border: 0;
}

</style>
</head>
<body>
   <div id="header" style="top:0;">
      <div id="top1" style="width:1000px">
         <div class="top_menu">
            <div id="top_logo"><img src="logo.png" align="absmiddle" width="130px"></div>
         </div>
      </div>
   </div>
</body>
</html>