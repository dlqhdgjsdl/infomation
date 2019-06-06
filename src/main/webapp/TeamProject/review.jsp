<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script >
// 데이터베이스 review
function InsertReview(){
	$.ajax({
		url:"/web/reviewInsert.do",
		data:$("form#insertreview").serialize(),
		type:'post',
		dataType:'html',
		success:function(v){
			$("tbody#ListAndReview").html(v);
		},
		error:function(e){
			alert("error"+e);
		}
	})
}
function showReview(){
	$.ajax({
		url:"/web/reviewSelect.do",
		data:$("form#insertreview").serialize(),
		type:'post',
		dataType:'html',
		success:function(v){
			$("tbody#ListAndReview").html(v);
		},
		error:function(e){
			alert("error"+e);
		}
	});
}
function showReview1(reviewno,page){
	$.ajax({
		url:"/web/reviewSelect.do?reviewno="+reviewno + "&page="+page,
		data:$("form#insertview").serialize(),
		type:'post',
		dataType:'html',
		success:function(v){
			console.log(v);
		},
		error:function(e){
			alert('error'+e);
		}
	});
}


function deleteReview(data){
	$.ajax({
		url : "/web/reviewdelete.do?reviewno="+data,
		data:$("form#insertreview").serialize(),
		type:'post',
		dataType:'html',
		success:function(v){
			$("tbody#ListAndReview").html(v);
		},
		error:function(e){
			alert('error'+e);
		}
	})
}
$(function(){
	/* $("tr#tr1").hide();
	$("tr#replytr").hide();
	
	$("tr#reply").click(function(){
		$("tr#replytr").show(1000);
	});
	
	$("li#replybtn").click(function(){
			$("tr#replytr").hide(1000);	
			
			$("tr#tr1").show(1000);
		
	}); */
	
	$(document).on("hide","tr#tr1");
	
	$(document).on("hide","tr#replytr");
	/* $("tr#replytr").hide(); */
	
	$(document).on("click","tr#reply",function(){
			$("tr#replytr").show(1000) 
			
		})
	$(document).on("click","li#replybtn",function(){
		$("tr#replytr").hide(1000);
		$("tr#tr1").show(1000);
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
.relyfiled{ /* 댓글 위치 지정 */
	clear: both;
    padding: 10px;
    border-width: 1px;
    border-style: solid;
    border-color: rgba(139, 139, 139, 0.3);
    background-color: #fff;
}
.replytextarea{
	overflow: hidden;
    line-height: 14px;
    height: 39px;
	border: 0 !important;
	background-color: #fff;
	width: 100%;
    margin: 0;
    padding: 1px 0;
    webkit-appearance: none;
    webkit-border-radius: 0;
    resize: none;
}
.replybutton{
	display: inline-block;
    bottom: 0;
    right: 0;
    z-index: 10;
    width: 84px;
    height: 61px;
    border: 1px solid #ccc;
    background: #fff !important;
    font-size: 13px;
    font-weight: bold;
    line-height: 61px;
    text-align: center;
}
 
</style>
</head>
<body onload="showReview()">
 <jsp:include page="header.jsp"></jsp:include>
   <tr>
   <td height="100%" align="center">
   <table width="1000" height="1000" cellpadding="0" cellspacing="0" border="0" class="outline_both" > <!-- 공지사항부분 시작 -->
      <tbody>
         <tr>
            <td valign="top" width="100%" height="100%" calss="outline_side" >
               <div  class="mem_tit"style="width:96%; font-size:22px; font-weight:700; text-align:left; margin:150px 0 25px 46%;">
                  리뷰 관리
               </div>
               <table width="100%" align="center" border="0" cellpadding="0" cellspacing="0" id="default_board_view" style="margin: 20px 0 0 0;" >
                  <tbody>
                     <tr>
                        <td align="center">
                           <table width="100%" align="center" border="0" cellspadding="0" cellspacing="0" id="default_board_list" style="margin: 0 0 0 46%; padding= 0 20px;">
                              <tbody>
                                 <tr>
                                    <td>
                                       <form name="frmList" id="insertreview" action="#" >
                                          <input type="hidden" name="id" value="notice"> <!-- 주문했을때 주문자 값 받아 올 때 사용 --> 
                                          <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                             <tbody id="ListAndReview">
                                                <tr>
                                                   <td>
                                                      <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table_tit_style01">
                                                         <colgroup> 
                                                            <col width="5%">
                                                            <col width="50%">
                                                            <col width="10%">
                                                            <col width="7%">
                                                            <col width="5%">
                                                            <col width="5%">
                                                         </colgroup>
                                                         <tbody>
                                                            <tr style="height:51px;">
                                                               <td style="background: lightgray ; border-top: 1px solid #999; font-size: 15px; color:black; ; text-align: center; font-weight: bold;">리뷰번호</td>
                                                               <td style="background: lightgray; border-top: 1px solid #999; font-size: 15px; color:black; text-align: center; font-weight: bold;">리뷰내용</td>
                                                               <td style="background: lightgray; border-top: 1px solid #999; font-size: 15px; color:black; text-align: center; font-weight: bold;">리뷰날짜</td>
                                                            <td style="background: lightgray; border-top: 1px solid #999; font-size: 15px; color:black; text-align: center; font-weight: bold;">리뷰관리</td>
                                                            </tr>
                                                          
                                                            <tr id="reply" onmouseover="this.style.backgroundColor='#FAFAFA'" onmouseout="this.style.backgroundColor='';bgcolor='#FAFAFA'" class="board_list" style="width:100%; height:40px;">
                                                               <td style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">1</td>
                                                               <td style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">그냥 존맛탱</td>
                                                               <td style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">sysdate</td>
                                                               <td style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">리뷰 삭제 수정</td>
                                                            </tr>
                                                           	 <!-- 사장님 답글 뿌려주는 곳 -->
                                                           	
                                                           	 <tr id="tr1" onmouseover="this.style.backgroundColor='#FAFAFA'" onmouseout="this.style.backgroundColor='';bgcolor='#FAFAFA'" class="board_list" style="width:100%; height:40px;">
                                                               <td></td>
                                                               <td><img src="/web/TeamProject/img/reply.png" style="height:20%;margin-left:60%;"></td> <!-- 이미지 뿌려주기 -->
                                                               <td  style="font-size: 13px; text-align: left; border-bottom: 1px solid #ebebeb;" ></td>
                                                               <td style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">sysdate</td>
                                                               <td style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">리뷰 삭제 수정</td>
                                                            </tr>
                                                            	
                                                            	
                                                            	<!-- 사장님 댓글 답는 위치 -->
                                                            <tr id="replytr">
                                                            	<td></td><!-- 이부분은 공란 -->
                                                            	<td style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb; "><textarea style="width:80%;height:30px;" name="contents"></textarea><label id="replybtn" class="main-button-s" style="text-align: center; margin-top:6px; font-size: 12px; height: 27px; width: 48px; line-height: 30px; border: none; -webkit-appearance: none; border-radius: 0; float: right" onclick="InsertReview()">등록</label></td> <!-- 텍스트상자를 네모 나게 만들기 -->
                                                            	<td ></td>
                                                            	<td ></td>
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
                                                            <tr style="width:100%; height:60px; background-color: lightgray ;">
                                                               <td align="right" style="border-top:none; border-bottom: none; padding-right: 5px;">
                                                                  <table border="0"cellpadding="0" cellspacing="0" align="center">
                                                                     <tbody>
                                                                        <tr>
                                                                           <td>
                                                                              <input type="checkbox" name="search[subject]" style="height:13px; vertical-align: middle;">
                                                                              <label style="font-size: 12px; margin-right: 10px; font-weight: bold; ">번호</label>
                                                                              <input type="checkbox" name="search[subject]" style="height:13px; vertical-align: middle;">
                                                                              <label style="font-size: 12px; margin-right: 10px; font-weight: bold; ">리뷰제목</label>
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
                                                                              <div style="width:100%; margin: 0 auto; padding:30px 0 0 0;">
                                                                                 <div style="width:100%; display: inline-block;">
                                                                                 </div>
                                                                                 <div style="width:100%; display: inline-block; padding-left: 0%; margin-left:-10%;">
                                                                                 
                                                               <a href="borderlist.jsp?page=1"><i class="fa fa-arrow-circle-left" style="font-size:36px"></i></a>
                  
                                                               <a href="#"><img src="/web/TeamProject/img/button/btn_prev.gif" alt="이전" /></a>
                                                            
                                                               <a href="#"><i class='fas fa-caret-square-left' style='font-size:36px'></i>1</a>
                                                               
                                                               <span>
                                                               
                                                                <a href="#"> <font size="7" color="green" style="font-family: fantasy;"></font>2</a>
                                                               
                                                               <a href="#">3</a>
                                                               
                                                               </span>
                                                                  <a href="#"><i class='fas fa-caret-square-right' style='font-size:36px'></i></a>
                                                            
                                                                <a href="#"><img src="/web/TeamProject/img/button/btn_next.gif" alt="다음" /></a>
                                                               
                                                               <a href="#"><i class="fa fa-arrow-circle-right" style="font-size:36px"></i></a>
                  
               													<input type="hidden" id="ownerno" name="ownerno" value=${owner.ownerno }>
               													<input type="hidden" id="reviewno" name="reviewno" value=1>
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
   </td>
   </tr>
 
</body>
</html>