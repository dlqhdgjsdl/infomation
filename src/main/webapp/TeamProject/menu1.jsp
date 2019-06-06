<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>My Page</title>

<link href="/web/TeamProject/css/style.css" rel="stylesheet">
<link href="/web/TeamProject/css/reset.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
/*font*/
 @font-face{
    font-family: "BM";
   src:url("BMDOHYEON_ttf.ttf")format("truetype");
 }
 
 body{
 background-image : url();
 background-size :; 
   font-family: BM;
   color:gray;
   font-size: ;
  }
 /*font*/
#container {
  display: flex;
  
  width: 900px;
}

#box-left {
  flex: 0;
  padding-top: 34px;
  margin-left: -91px;
}

#box-center {
  
   /* background: orange;  */
  flex: 3;
  text-align: center;
  padding-top: 30px;
}

#nav-left{
border-top: 20px;
}

/* #box-right {
  background: yellow;
  flex: 1;
  text-align: right;
} */
</style>
<style>
/*����--------------------------------------------*/
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
    margin-left: -144px;
    padding: 19px 0 0 0px;
    border: none;
    text-align: left;
    float: left;
}
img{
   border: 0;
}

</style>


<script type="text/javascript">
function ajaxProcess(url,dataType){
	var temp="";
	$.ajax({
		url:url,
		cache:false,
		type:'post',
		dataType:dataType,
		success:function(v){
			  
			  //console.log(v);
			  
				/*$(v).each(function(index,dom){
				   temp+="<div class=\"gallery\">";
				   temp+="<a target=\"_blank\" href=\"img_5terre.jpg\">";
				   temp+="<img src='"+dom.img+"' alt=\"Cinque Terre\" width=\"600\" height=\"400\"></a>";
				   temp+="<div class=\"desc\">"+dom.title+"</div>";
				   temp+="</div>";
			   }); */
			   console.log(v);
			  $("div#box-center").html(v);
		},
		error:function(){
			alert('error');	
		}
	});	
}

$(function(){
	$(".sub").hide();
	
	$(".main").on("click",function(){
		//alert($(this).html());
		//$(this).html().show();
		
		/* if($(this).hasClass("on")==false){
			$(".main").removeClass("on");
			$(this).addClass("on");
			$(".sub").slideUp("fast");
			$(this).next().slideDown("fast");
		}; 
		*/
		
	 if($(this).hasClass("on")==false){
		$(".main").removeClass("on");
		$(this).addClass("on");
		$(".sub").slideUp("fast");
		$(this).next().slideDown("fast");
	}else{
		$(this).removeClass("on");
		$(this).next().slideUp("fast");
	}
		
		$("li").click(function(){
				if($(this).attr("id")=='say'){
					//alert('�̹���Ȯ��');
					ajaxProcess('say.jsp','HTML');
				}else if($(this).attr("id")=='say1'){
					//alert('�̹���Ȯ��');
					ajaxProcess('say1.jsp','text');
				}else if($(this).attr("id")=='say2'){
					//alert('�̹���Ȯ��');
					ajaxProcess('say2.jsp','text');
				}
		});
		
	});
});
</script>
</head>
<body>
<div id="header" style="top:0;">
      <div id="top1" style="width:1000px">
         <div class="top_menu">
            <div id="top_logo"><img src="/web/TeamProject/img/logo.png" align="absmiddle" width="130px"></div>
         </div>
      </div>
   </div>

  <h1 class="title">Main Page</h1>
  <div class="container" style="left:0px;">
  <div class= "row">
  <div id="box-left" class="col" >
   <nav id="nav-left">
     <ul style="width:200px;">
       <li class="menu">
         <a class="main" href="#">��������޴�</a>
         <ul class="sub">
             <li id="say">�������</li>
             <li id="say1">�������</li>
             <li id="say2">�޴�����</li>
         </ul>
       </li>
        <li class="menu">
         <a class="main" href="#">��ǰ�����޴�</a>
         <ul class="sub">
             <li><a href="#">�޴�����</a></li>
             <li><a href="#">�������</a></li>
         </ul>
       </li>
       <li class="menu">
         <a class="main" href="#">�ֹ�</a>
         <ul class="sub">
             <li><a href="#">�ֹ��󼼳���</a></li>
             <li><a href="#">�� �ֹ�����</a></li>
         </ul>
       </li>
       <li class="menu">
         <a class="main" href="#">���� ����</a>
         <ul class="sub">
             <li><a href="#">ȸ����������</a></li>
             <li><a href="#">��ȸ����</a></li>
         </ul>
       </li>
     </ul>
   </nav>
 </div>
 
<div id="box-center" class="col" style="width: 100%; height: auto; overflow:visible;"></div>
 </div>
 

 
 </div>

</body>
</html>