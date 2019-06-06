<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
 /*메뉴리스트부분  */
.row{
   display: table-row;
   word-break:break-all;/*이부분이 단어넘기는부분*/
}
body {
   font-family: 'Montserrat', sans-serif;
   color: #333;
   line-height: 1.6;
}
.mb-60 {
   margin-bottom: 60px;
}
.section-title p {
   font-size: 24px;
   font-family: Oleo Script;
   margin-bottom: 0px;
}
.section-title h4 {
   font-size: 40px;
   text-transform: capitalize;
   color: #FF5E18;
   position: relative;
   display: inline-block;
   padding-bottom: 25px;
}
.section-title h4::before {
   width: 80px;
   height: 1.5px;
   bottom: 0;
   left: 50%;
   margin-left: -40px;
}
.section-title h4::before, .section-title h4::after {
   position: absolute;
   content: "";
   background-color: #FF5E18;
}
#myTabContent {
   margin-top: 50px;
}
.menu_tab {
   width: 205px;
   margin: 0 auto;
   overflow:hidden;
}
.nav-tabs .nav-item {
   /* margin-bottom: -1px; */
   float:left;
   margin-right:49px;
   list-style:none;
}
.nav-item a {
   color: #333;
}
.menu_tab .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
   color: white;
   background-color: #FF5E18;
   border-color: #FF5E18;
}
.single_menu_list {
   position: relative;
   padding-left: 190px;
   margin-bottom: 110px;
   margin-right: 45px;
}

.single_menu_list img {
   /* max-width: 18%; */
   width:150px;
   position: absolute;
   left: 0px;
   top: 0;
   border: 1px solid #ddd;
   padding: 3px;
   border-radius: 50%;
   transition: .4s
}

.single_menu_list:hover img {
   border-radius: 0;
   transition: .4s
}

.single_menu_list h4 {
   font-size: 20px;
   border-bottom: 1px dashed #333;
   padding-bottom: 15px;
   margin-bottom: 10px;
}

.single_menu_list h4 span {
   float: right;
   font-weight: bold;
   color: #FF5E18;
   font-style: italic;
}

.menushow{
    position: relative;
    top: auto;
    left: 0;
    float: left;
    width: 48%;
    display: inline-block;
    background: white;
    border: 1px solid #d2d2d2;
    border-radius: 20px;
    }
    /*메뉴추가부분*/

.mid_MenuContents{
   
   width: 1800px;
   border-radius: 5px; 
}
#insertMenu{
   position:fixed;
   padding: 30px;
   background: white;
   border: 1px solid #d2d2d2;
   border-radius: 30px;  
   width: 736px;
   margin-left: 5%;
   font-size: 40px;
   display: inline-block;   
   text-align: center;
   
}
#insertMenu > input{
   display: block;
   margin: 10px;
}


.mid_MenuContents > p{
   font-size: 30px;
   text-align: right;
   padding: 5px;
   margin-right: 35px;
   color: #646464;
}
#menu img {
   width: 350px;
}
#Menu2 {
   margin-left: 30px;
   text-align: left;
}
#Menu2 > input{
   margin-bottom: 20px;
}

.form-group{
   margin-bottom: 20px;
   position:relative;
   width:365px;
}
.form-gorup > textarea{
   background-color: red;
}
.form-group > input{
   height: 30px;
   font-size: 16px;   
   width: 260px;
   position: absolute;
    top: 3px;
    left: 98px;
}

.selMarket{
   float: right;
   width: 48%;
   display: inline-block;
   background: white;
   border: 1px solid #d2d2d2;
   border-radius: 20px; 
}

#insertMenu  p{
   margin-bottom: 4%;
}

#btn{
   text-align: center;
   margin-top: 20px;
}
.insertBtn{
   color: #fff;
   background: #f0ad4e;
   border-color: #eea236;
   width: 150px;
   height: 30px;
   border: 2px solid;
   border-radius: 10px;
}

.form-control{
      height: 50px;
}
.form-control > #insertinfo{
margin-top: 100%;
border-top: 100%;
padding-top: 100%;   
}


 


</style>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script>
function listmenu(v){
   temp="";
	
	$(v).each(function(index,dom){
	
		temp+="<div class=\"single_menu_list\">";
        temp+="<img src=\"/web/upload/"+dom.menuimg+"\">";
        temp+="<div class=\"menu_content\">"
        temp+="<h4>"+dom.menuname+"<span>"+dom.menuprice+"원</span></h4>"
        temp+="<p>"+dom.menuexplain+"</p></div></div>"
  	
   });
	    
	}


function addAjaxProcess(url,dataType){
	var frm = $("#addMenufrm")[0];
	var fileData = new FormData(frm);
/*     frm.method = 'POST';
    frm.enctype = 'multipart/form-data'; */
	$.ajax({
		url:url,
		dataType:dataType,
		data:fileData,
		async:false,
        contentType:false,
        processData:false,
		type:'POST',
		success:function(v){
			listmenu(v);
		},
		error:function(e){
			console.log(e);
			
		}
	});
}

function listMenuAjaxProcess(url){
	 $.ajax({
		url:url,
		dataType:'JSON',
		data:"ownerno=${owner.ownerno}",
		type:'post',
		success:function(v){
			listmenu(v);
			$("#menulist").html(temp);

		},error:function(e){
			console.log(e)
		}
	 });
	 
 }


		/*AJAX부분 */
	$(function(){
		listMenuAjaxProcess('/web/selectFoodProcess.do');
		$("input#fakeFileButton").click(function(){
			$("input#file").click();
		});
		
		$("input#add").click(function(){
		addAjaxProcess('/web/insertFoodProcess.do','JSON');
		listMenuAjaxProcess('/web/selectFoodProcess.do');
		});
	});
		/*placeholder 주기 */
		$(function(){
			$("#menukind").attr("placeholder","ex)면류,밥류");
			$("#menuname").attr("placeholder","ex)짜장면,제육볶음");
			$("#menuprice").attr("placeholder","ex)1000원일경우 10000");
			$("#menuexplain").attr("placeholder","ex)수제면으로 만들어 쫄깃합니다.");
		});
	
	
</script>

</head>
<body>
<div>
	<jsp:include page="header.jsp" ></jsp:include>
	</div>
<div class="menushow">
  <section class="menu_list mt-60 mb-60">
    <div class="container" style="top: auto;">
      <div class="row">
         <div class="col-xl-12">
           <div class="section-title text-center mb-60">
             <p style="margin-left:39%">Famous for good food</p>
             <h4 style="margin-left:41%">our menu</h4>
           </div>
         </div>
      </div>

      <div class="row" >
         <div class="tab-content col-xl-12" id="myTabContent">
           <div class="tab-pane fade" id="lunch" role="tabpanel" aria-labelledby="lunch-tab">
             <div class="row">
               <div class="col-md-6" id="menulist">
                  <div class="single_menu_list">
                    <img src="http://infinityflamesoft.com/html/restarunt-preview/assets/img/menu/menu-2.jpg" alt="">
                    <div class="menu_content">
                      <h4>Chicken Fried Salad  <span>$45</span></h4>
                      <p>Aperiam tempore sit,perferendis numquam repudiandae porro voluptate dicta saepe facilis.</p>
                    </div>
                  </div>
             </div>
           </div>           
         </div>
      </div>
      <div class="row">
         <div class="col-xl-12 text-center">
           <div class="box_btn">
             <a href="#">view more</a>
           </div>
      </div>
    </div>
    </div>
    </div>
  </section>
  </div>
 	<div class="mid_MenuContents" style="width: 1800px; padding-top: 5%;">
		<div id="insertMenu" style="left: auto; top: auto;float:inherit;">
			<div id="insertTop">
				<p>메뉴 추가</p>
			</div>
			<form id="addMenufrm" method="post" enctype="multipart/form-data">
			<table>
				<tr>		
					<td>
	                <input type="hidden" name="ownermenucate" value="${owner.ownermenucate}">
					<input type="hidden" name="ownerno" value="${owner.ownerno}">				
     
						<div id="Menu2">
                               <div class="form-group">
								<label for="usr">종류:</label> 
								<input type="text" class="form-control" id="menukind" name="menukind"  >
							</div>						
							<div class="form-group">
								<label for="usr">이름:</label> 
								<input type="text" class="form-control" id="menuname" name="menuname"> 
							</div>
							<div class="form-group">
								<label for="pwd">가격:</label> 
								<input type="text" class="form-control" id="menuprice" name="menuprice">
							</div>
							
							<div style="width:365px;height:49px;position:relative">
								<label for="comment" style="position: absolute; top: 6px;">설명:</label>
								<textarea class="form-control" rows="6"  id="menuexplain"
									name="menuexplain" style="position: absolute;left: 100px;top: -3px;"></textarea>
							</div>
						</div>
					</td>
				</tr>
			</table>
			<div id="btn">
				<input type="button" id="add" class="insertBtn" value="입력" style="background-color:#8FAADC;">
				<input id="fakeFileButton" type="button" class="insertBtn" value="이미지 추가" style="background-color:#8FAADC;">
				<input type="file" id="file" name="file" class="insertBtn" style="background-color:#8FAADC;display: none;" >
			</div>
   </form>
	</div>
	</div>
	
</body>
</html>