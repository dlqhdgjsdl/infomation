<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(function() {
		$("a.cate1").hover(function() {

			$("div.subLayer").show(10);
		})
		/* ,function(){
		   
		}); */

		$("#menu-cate").mouseleave(function() {
			$("div.subLayer").hide(1000);
		});
	});
</script>
<style>
#header{ /* 주문 리스트  헤더 부분 */
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
#top1 { /* 주문리스트 헤더 범위 지정 */
    margin: 0 auto;
    padding: 0;
    border: none;
    text-align: center;
}
.top_menu{ /* 상단 메뉴 위치 */
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
#top_cate{ /* 상단 카테고리 관리 */
    position: relative;
    margin: 0;
    padding: 0;
    border: none;
    float: left;
    height: 70px;
}
#r_cate { /* 카테고리 레이아웃 조절 */
    text-align: left;
    width: 450px;
}
table{ /* 카데고리 폰트 설정 */
 font-family: "BM";
   src:url("BMDOHYEON_ttf.ttf")format("truetype");
}
tr{ 
   display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}

#r_cate .catebar { /* 카테고리 메뉴 글씨 여백 위치조절 */
    text-align: center;
    vertical-align: middle;
    height: 88px;
    padding: 0 35px 0 0;
}
#r_cate a.cate1{ /* 카테고리 폰트 글씨 */ 
       font-family: "BM";
         src:url("BMDOHYEON_ttf.ttf")format("truetype");
          font-size: 14px;
       color: rgb(34, 34, 34);
       font-weight: 700;
        text-decoration: none;
}
#t_cate{
    padding-left:60px; 
}
#top_menu{ /* 로그인 회원가입 위치 잡아주는곳 */
    margin: 0;
    padding: 0;
    border: none;
    float: right;
    list-style: none;
    height: 90px;
    margin-right: 10px;
}

#top_menu li{ /* 로그인 회원가입 텍스트 부분 조절 */
    margin: 0;
    padding: 0;
    border: none;
    float: left;
    text-align: right;
    margin-left: 22px;
    line-height: 88px;
    display: list-item;
}

#top_menu li a { /* 로그인 버튼 글씨 스타일 설정 */
   font-size: 12px;
    color: rgba(0,0,0,0.3);
    font-weight: 700;
}
a{ /* a링크에 걸린 밑줄 다 사라지게 해줌 */
   text-decoration: none;
}
#top_menu li a:hover { /* 로그인이랑 회원가입 버튼 hover했을때 색깔 검정색으로 변경 */
    color: #666;
}
.outline_both{ /* 공지사항부분 전체를 테이블로 잡아서 관리함 */
   table-layout: fixed;
   border-left-style: solid;
   border-right-style: solid;
   border-left-width: 0px;
   border-right-width: 0px;
   background-color: white;
}
tbody{ /* 공지사항부분 관리 */
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;
}
td{
   display:table-cell;
   text-align: center;
}
tr{
   display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
table#wrap{ /* 전체 페이지 설정 */
   table-layout:fixed;
    position: relative;
    background: #fff;
}
td#top_td{
   position: relative;
}
div{
   padding: 0;
    margin: 0;
    border: none;
}
default_board_view{ /* 공지사항 밑에 여백 설정 */
       text-align: left;
}
#default_board_list{ /* 양옆 테이블 여백 설정 */
    font-size: 13px;
    text-align: left;
}
form{ /* 공지사항 부분 폼 설정 */
   margin:0;
   display:block;
}
.table_tit_style01{ /* 테이블 상단 메뉴바 설정 */
   width:100%;
   color:#666;
}
colgroup {
    display: table-column-group;
}
#r_cate .catebar{ /* 카테고리 폰트,위치 설정 */
   text-align: center;
    vertical-align: middle;
    height: 88px;
    padding: 0 35px 0 0;
}
.subLayer { /* 카테고리 내부 레이아웃 네모상자 잡아주기 */
    position: absolute;
    display: none;
    width: 140px;
    top: 15px;
    left: -13px;
}
.subLayer #table_cate { /* 카테고리 상단 박스 그림자설정 */
   background-color: #f6f6f6;
   box-shadow: 2px 2px 3px rgba(0,0,0,0.1);
}
#table_cate .cate { /* 카테고리 상자 내부 글씨위치 설정 */
    display: table-row;
    padding: 3px 0 3px 17px;
}
#table_cate .cate a { /* 카테고리 글씨 색깔이랑 위치 설정 */
    color: #222;
    font-size: 12px;
    line-height: 28px;
    vertical-align: middle;
}
#r_cate a.cate1:hover{
   border-bottom:3px solid #222;
}
a:hover{ /* 호버 알죠? */
   text-decoration: none;
   color: black;
}
</style>
<!-- <header class="col-lg-12">
	<div id="headerContainer"> -->

		<!-- <div id="searchContainer"> -->
<table widht="100%" height="100%" celpadding="0" cellspacing="0" border="0" id="wrap" style="background-color: #fff;position: absolute;" >
   <tbody>
   <tr>
   <td id="top_td">
   <div id="header" style="top:0;">
      <div id="top1" style="width:1000px">
         <div class="top_menu">
            <div id="top_logo"><a href="Main.jsp"><img src="/web/TeamProject/img/logo.png" align="absmiddle" width="130px"></a></div>
            <div id="top_cate">
               <div id="t_cate">
                  <div id="r_cate">
                     <table cellpadding="0" cellspacing="0" border="0" id="menuLayer">
                        <tbody>
                           <tr>
                              <td style class="catebar">
                                 <div>
                                    <a href="#" class="cate1" id="c1">매장 관리 메뉴</a>
                                 </div>
                                 <div style="position: relative; z-index: 20" id="menu-cate1">
                                    <div class="subLayer" id="s1" style="display: none;">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0" id="table_cate" style="padding: 10px 15px 15px 15px;">
                                       <tbody>
                                          <tr>
                                             <td align="left" nowrap class="cate" >
                                                <a href="/web/storeManagement.do?ownerno=${owner.ownerno}">매장관리</a>
                                             </td>
                                          </tr>
                                          <tr>
                                             <td align="left" nowrap class="cate" >
                                                <a href="/web/TeamProject/menuCount.jsp">메뉴별매출</a>
                                             </td>
                                          </tr>
                                          <tr>
                                             <td align="left" nowrap class="cate" >
                                                <a href="/web/TeamProject/menuCount2.jsp">월별매출</a>
                                             </td>
                                          </tr>
                                       </tbody>
                                    </table>
                                 </div>
                                 </div>
                              </td>
                              <td style class="catebar">
                                 <div>
                                    <a href="#" class="cate1" id="c2">제품관리메뉴</a>
                                 </div>
                                 <div style="position: relative; z-index: 20" id="menu-cate2">
                                    <div class="subLayer" id="s2" style="display: none;">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0" id="table_cate" style="padding: 10px 15px 15px 15px;">
                                       <tbody>
                                          <tr>
                                             <td align="left" nowrap class="cate" >
                                                <a href="menuManager.jsp">메뉴관리</a>
                                             </td>
                                          </tr>
                                          <tr>
                                             <td align="left" nowrap class="cate" >
                                                <a href="review.jsp">리뷰관리</a>
                                             </td>
                                         </tr>
                                          <tr>
                                             <td align="left" nowrap class="cate" >
                                                <a href="coupon.jsp">쿠폰관리</a>
                                             </td>
                                         </tr>
                                       </tbody>
                                    </table>
                                 </div>
                                 </div>
                              </td>
                              
                              <td style class="catebar">
                                 <div>
                                    <a href="#" class="cate1" id="c3">나의정보</a>
                                 </div>
                                 <div style="position: relative; z-index: 20" id="menu-cate3">
                                    <div class="subLayer" id="s3" style="display: none;">
                                    <table width="100%" cellspacing="0" cellpadding="0" border="0" id="table_cate" style="padding: 10px 15px 15px 15px;">
                                       <tbody>
                                          <tr>
                                             <td align="left" nowrap class="cate" >
                                                <a href="masterInfo.jsp">회원정보수정</a>
                                             </td>
                                          </tr>
                                          <tr>
                                             <td align="left" nowrap class="cate" >
                                                <a href="#">상회연결</a>
                                             </td>
                                          </tr>
                                       </tbody>
                                    </table>
                                 </div>
                                 </div>
                              </td>
                              
                              <td style class="catebar">
                                 <div>
                                    <a href="order.jsp" class="cate1" id="c4">주문</a>
                                 </div>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                  </div>
               </div>
            </div> <!-- 카테고리 메뉴 끝 --> 
            <ul id="top_menu" >
               <li>
                  <a href="/web/TeamProject/login.jsp">로그인</a>
               </li>
               <li>
                  <a href="/web/TeamProject/register.jsp">회원가입</a>
               </li>
            </ul>
         </div>
         
      </div>
   </div>
   </td>
   </tr>
 </tbody>
</table>
		<!-- </div> -->
<!-- 	</div>
</header> -->
