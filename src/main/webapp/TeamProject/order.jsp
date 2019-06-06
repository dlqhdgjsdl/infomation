<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script >
	 function showOrder(){
		$.ajax({
			url:"/web/orderSelect.do?userno="+$("input#userno").val(),
			type:'post',
			dataType:'html',
			data:$("form#showorderlist").serialize(),
			success:function(v){
				$("tbody#ListAndorder").html(v);
			
			},
			error:function(e){
				alert('error'+e);
			}
		});
	} 
	function insertOrder(data){
		//alert($("input#orderno").html());
		$.ajax({
			url:"/web/replacetext.do?btn="+$(data).val()+"&orderno="+$("#orderno").val()+"&userno="+$("input#userno").val(),
			type:'post',
			dataType:'html',
			data:$("form#showorderlist").serialize(),
			success:function(v){
				$("div#orderinfo").hide(1000);
				console.log(v);
				$("tbody#ListAndorder").html(v);
			},
			error:function(e){
				alert("error"+e);
			}
		})
	}
	
	
$(function(){
	$("div#orderinfo").hide();
	
	
	
	$(document).on("click","tr#listinfo",function(){
		$("input#orderno").attr("value",$(this).children(".a").text());
	});
	
	$(document).on("click","tr#listinfo",function(){
		
	});
		$(document).on("click","tr#listinfo",function(){
			$("div#orderinfo").show(1000);
		})
      $("a.cate1#c1").hover(function(){
         $("div.subLayer#s1").show(10);
      });
      $("a.cate1#c2").hover(function(){
          $("div.subLayer#s2").show(10);
       })
       $("a.cate1#c3").hover(function(){
         $("div.subLayer#s3").show(10);
      })
   
   	 
      
      
      $("#menu-cate1").mouseleave(function(){
         $("div.subLayer#s1").hide(1000);
      });
      $("#menu-cate2").mouseleave(function(){
          $("div.subLayer#s2").hide(1000);
       });
      $("#menu-cate3").mouseleave(function(){
          $("div.subLayer#s3").hide(1000);
       });
   });
</script>
<style>
@font-face{
	font-family: "BM";
	src:url("BMDOHYEON_ttf.ttf") format("truetype");
}
.list_footer { /* 검색부분 */
    width: 100%;
    height: 40px;
}
.list_footer .board_paging { /* 검색부분 텍스트 row 관리 */
    width: 100%;
    height: 40px;
}
.main-button-s { /* 검색 버튼 설정 */
    height: 38px;
    line-height: 38px;
    font-weight: 500;
    background-color: rgb(68, 68, 68);
    box-sizing: border-box;
    display: list-item;
    font-size: 13px;
    font-family: "Noto Sans KR", sans-serif, Arial, dotum, 돋움;
    color: rgb(255, 255, 255);
    cursor: pointer;
    margin: 0px;
    padding: 0px;
    list-style: none;
    transition: all 0.2s ease 0s;
}
.board_btn_area { /* 페이지아웃 범위 잡아주는 부분 */
    width: 100%;
    height: 80px;
}

/* 주문상세내용 페이지 */
div#orderinfo {

	font-family: "BM";
	src:url("BMDOHYEON_ttf.ttf") format("truetype");

    z-index: 1;
    border: 10px solid #007bff;
    background-color: white;
}
.card-pricing .list-unstyled li {
    padding: .5rem 0;
    color: #6c757d;
}
div#infofont{
	font-size: 20px;
	font-family: "BM";
	src:url("BMDOHYEON_ttf.ttf") format("truetype");

}
div#info{
	color:black;
	font-size: 20px;
		
	}
label{
		
	}
table#t1{
		width:100%;
	}
	.w3-button {width:150px}
</style>
</head>
<body onload="showOrder()">
 <jsp:include page="header.jsp"></jsp:include>
   <tr>
   <td height="100%" align="center">
   <table width="1000" height="1000" cellpadding="0" cellspacing="0" border="0" class="outline_both" > <!-- 공지사항부분 시작 -->
      <tbody >
         <tr>
            <td valign="top" width="100%" height="100%" calss="outline_side" >
           
               <div  class="mem_tit"style="width:96%; font-size:22px; font-weight:700; text-align:left; margin:150px 0 25px 46%;">
                  주문 내역 
               </div>
               
               <table width="100%" align="center" border="0" cellpadding="0" cellspacing="0" id="default_board_view" style="margin: 20px 0 0 0;" >
                  <tbody>
                     <tr>
                        <td align="center">
                           <table width="100%" align="center" border="0" cellspadding="0" cellspacing="0" id="default_board_list" style="margin: 0 0 0 46%; padding= 0 20px;">
                              <tbody id="ListAndorder">
                                 <tr>
                                    <td>
                     <form name="frmList" id="showorderlist" action="#" >
                                          <input type="hidden" name="id" value="notice"> <!-- 주문했을때 주문자 값 받아 올 때 사용 --> 
                                          <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                             <tbody >
                                                 <tr>
                                                   <td>
                                                      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_tit_style01">
                                                         <colgroup> 
                                                            <col width="1%">
                                                            <col width="5%">
                                                            <col width="5%">
                                                            <col width="15%">
                                                            <col width="15%">
                                                            <col width="5%">
                                                         </colgroup>
                                                         <tbody>
                                                            <tr >
                                                               <td style="background: #f6f6f6; border-top: 1px solid #999; font-size: 12px; color: #999; text-align: center;">번호</td>
                                                               <td style="background: #f6f6f6; border-top: 1px solid #999; font-size: 12px; color: #999; text-align: center;">메뉴</td>
                                                               <td style="background: #f6f6f6; border-top: 1px solid #999; font-size: 12px; color: #999; text-align: center;">가격</td>
                                                               <td style="background: #f6f6f6; border-top: 1px solid #999; font-size: 12px; color: #999; text-align: center;">요청</td>
                                                               <td style="background: #f6f6f6; border-top: 1px solid #999; font-size: 12px; color: #999; text-align: center;">주문날짜</td>
                                                               <td style="background: #f6f6f6; border-top: 1px solid #999; font-size: 12px; color: #999; text-align: center;">배달승인여부</td>
                                                            </tr>
                                                            <tr id="listinfo" onmouseover="this.style.backgroundColor='#FAFAFA'" onmouseout="this.style.backgroundColor='';bgcolor='#FAFAFA'" class="board_list" style="width:100%; height:40px; ">
                                                               <td style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">1</td>
                                                               <td style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">치킨</td>
                                                               <td style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">18000원</td>
                                                               <td style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">해당사항없음</td>
                                                               <td style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">주문날짜</td>
                                                               <td style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">-</td>
                                                            </tr>
                                                         </tbody>
                                                      </table>
                                                   </td>
                                                </tr>
                                                <tr> <!-- 검색창 시작부분 -->
                                                   <td>
                                                      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="list_footer">
                                                         <tbody>
                                                            <tr class="board_paging">
                                                            <td> <!-- 공백을 주어서 분리 시킴 -->
                                                               
                                                               
                                                            </td>
                                                            </tr>
                                                            <tr>
                                                               <td height="20px">
                                                                     </td>
                                                            </tr>
                                                            <tr>
                                                                           </tr>
                                                            <tr style="width:100%; height:60px; background-color: #ebebeb;">
                                                               <td align="right" style="border-top:none; border-bottom: none; padding-right: 5px;">
                                                                  <table border="0"cellpadding="0" cellspacing="0" align="center">
                                                                     <tbody>
                                                                        <tr>
                                                                           <td>
                                                                              <input type="checkbox" name="search[subject]" style="height:13px; vertical-align: middle;">
                                                                              <label style="font-size: 12px; margin-right: 10px;">번호</label>
                                                                              <input type="checkbox" name="search[subject]" style="height:13px; vertical-align: middle;">
                                                                              <label style="font-size: 12px; margin-right: 10px;">메뉴</label>
                                                                           </td>
                                                                           <td>
                                                                              <input style="position: relative; border: 0; width: 200px; height: 30px; font-size: 15px; padding: 0 !important; color: #333; background-color: #fff; text-align: center; -webkit-appearance: none; border-radius: 0;">
                                                                           </td>
                                                                           <td>
                                                                              <a href="#"><li class="main-button-s" style="text-align: center; margin-left: 5px; font-size: 12px; height: 30px; width: 50px; line-height: 30px; border: none; -webkit-appearance: none; border-radius: 0;">검색</li></a>
                                                                           </td>
                                                                        </tr>
                                                                     </tbody>
                                                                  </table>
                                                                     <tr class="board_btn_area">
                                                                           <td>
                                                                              <div style="margin: 0 auto; padding:30px 0 0 0;">
                                                                                 <div style="width:100%; display: inline-block;">
                                                                                 </div>
                                                                                 <div style="width:100%; display: inline-block; margin-left: 97%;">
                                                                                 
                                                               <a href="borderlist.jsp?page=1"><i class="fa fa-arrow-circle-left" style="font-size:36px"></i></a>
                  
                                                               <a href="#"><img  alt="이전" /></a>
                                                            
                                                               <a href="#"><i class='fas fa-caret-square-left' style='font-size:36px'></i>1</a>
                                                               
                                                               <span>
                                                               
                                                                <a href="#"> <font size="7" color="green" style="font-family: fantasy;"></font>2</a>
                                                               
                                                               <a href="#">3</a>
                                                               
                                                               </span>
                                                                  <a href="#"><i class='fas fa-caret-square-right' style='font-size:36px'></i></a>
                                                            
                                                                <a href="#"><img  alt="다음" /></a>
                                                               
                                                               <a href="#"><i class="fa fa-arrow-circle-right" style="font-size:36px"></i></a>
                 														 <input type="hidden" id="userno" name="userno" value=10>
                 														 <input type="hidden" id="ownerno" name="ownerno" value=10>
               
                                                                                 </div>
                                                                              </div>
                                                                           </td>
                                                                        </tr>
                                                         </tbody>
                                                      </table>
                                                   </td>
                                                </tr>
                                             </tbody>
                                          </table>
                                          
                                       </form>
                                    </td>
                                 </tr>
                              </tbody>
                           </table>
                        </td>
                     </tr>
                  </tbody>
               </table>
            </td>
         </tr>
      </tbody>
   </table>
	 <form  action="/web/showorderinfo.do" id="orderlsit">
	 <div id="orderinfo" style="margin-left:35%; margin-right: 35%; padding-bottom: 35%;margin-top:-46%; position: relative; height:800px;">
	            <span style="color:white;background-color:#007bff; border-color:#007bff; text-align: center; margin-left:34%; font-size: 35px;">주문상세내용</span>
	            <div style="text-align: center;" >
	                <h1 style="margin-left:3%;">$<span >18000원</span></h1>
	            </div>
	            <div id="infofont" style="text-align: center; width:85%;height: 600px; margin-left: 10%; margin-top:10%;">
					<div id="info" style="height:480px;">
				<label style="margin-left: -13%">주소</label>     <span style="margin-left: 20%">주소가 주소지 머인가요</span><br>
				<table id="t1" style="margin-bottom: 5%;">
					<caption style="margin-top: 5%; border-bottom: 4px solid black;">주문표</caption>
					<thead>
						<tr>
							<th>번호</th>
							<th>이름</th>
							<th>수량</th>
						</tr>
					</thead>
					<tbody>
						<tr style="border-bottom: 1px solid black;">
							<th>1</th>
							<th>후라이드치킨</th>
							<th>3개</th>
						</tr>
					</tbody>
				</table>    
				<label>요청</label><br>    
				<textarea readonly="readonly" style="width: 78%; height: 100px; resize: none;">주소가 주소지 머인가요</textarea><br>
				
			</div>
	            <button id=btn type="button" onclick="insertOrder(this)" name="yes"value="yes" class="w3-button w3-border w3-hover-green"	 style="color:black; font-weight:bolder; font-family: sans-serif;">주문 승인</button>
				<button id=btn type="button" onclick="insertOrder(this)" name="no"value="no" class="w3-button w3-border w3-hover-red" style="color:balck; font-weight:bolder; font-family: sans-serif;">주문 보류</button>
	            </div>
	            
	        </div>
	       </form>
                  
   </td>
   </tr>

</body>
</html>