<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<tr>
	<td>
		<table width="100%" border="0" cellpadding="0" cellspacing="0"
			class="table_tit_style01">
			<colgroup>
				<col width="10%">
				<col width="50%">
				<col width="10%">
				<col width="7%">
				<col width="5%">
				<col width="5%">
			</colgroup>
			<tbody id="reviewList">
				<tr style="height: 51px;">
					<td
						style="background: lightgray; border-top: 1px solid #999; font-size: 15px; color: black;; text-align: center; font-weight: bold;">리뷰번호</td>
					<td
						style="background: lightgray; border-top: 1px solid #999; font-size: 15px; color: black; text-align: center; font-weight: bold;">리뷰내용</td>
					<td
						style="background: lightgray; border-top: 1px solid #999; font-size: 15px; color: black; text-align: center; font-weight: bold;">리뷰날짜</td>
					<td
						style="background: lightgray; border-top: 1px solid #999; font-size: 15px; color: black; text-align: center; font-weight: bold;">리뷰관리</td>
				</tr>

				<tr id="reply" onmouseover="this.style.backgroundColor='#FAFAFA'"
					onmouseout="this.style.backgroundColor='';bgcolor='#FAFAFA'"
					class="board_list" style="width: 100%; height: 40px;">
					<td
						style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">1</td>
					<td
						style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">그냥
						존맛탱</td>
					<td
						style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">sysdate</td>
					<td
						style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;"></td>
				</tr>
				<!-- 사장님 답글 뿌려주는 곳 -->
				<c:forEach items="${reviewlist}" var="i" >
				<tr id="tr1" onmouseover="this.style.backgroundColor='#FAFAFA'"
					onmouseout="this.style.backgroundColor='';bgcolor='#FAFAFA'"
					class="board_list" style="width: 100%; height: 40px;">
					<td><img src="/web/TeamProject/img/reply.png"
						style="height: 20%; margin-left:91%;"></td>
					<!-- 이미지 뿌려주기 -->
					<td
						style="font-size: 13px; text-align: CENTER; border-bottom: 1px solid #ebebeb;">${i.contents}</td>
					<td
						style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">${i.reviewdate}</td>
					<td
						style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;"><input
							type="button" value="삭제" onclick="deleteReview(${i.reviewno})" /></td>
				</tr>
				</c:forEach>
                 <input type="hidden" id="ownerno" name="ownerno" value="${owner.ownerno}">
                 <input type="hidden" id="reviewno" name="reviewno" value=1>
				<!-- 사장님 댓글 답는 위치 -->
				<tr id="replytr">
					<td></td>
					<!-- 이부분은 공란 -->
					<td
						style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;"><textarea
							name="contents" style="width: 80%; height: 30px;"></textarea>
						<a href="#"><li onclick="InsertReview()" id="replybtn" class="main-button-s"
						style="text-align: center; margin-top: 6px; font-size: 12px; height: 27px; width: 48px; line-height: 30px; border: none; -webkit-appearance: none; border-radius: 0; float: right" >등록</li></a></td>
					<!-- 텍스트상자를 네모 나게 만들기 -->
					<td></td>
					<td></td>
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
                                                                 <!--  <table border="0"cellpadding="0" cellspacing="0" align="center">
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
                                                                  </table> -->
                                                                     <tr class="board_btn_area">
                                                                           <td>
                                                                              <div style="margin: 0 auto; padding:30px 0 0 0;">
                                                                                 <div style="width:100%; display: inline-block;">
                                                                                 </div>
                                                                                 <div style="width:100%; display: inline-block; margin-left: -10%;">
                                                                                 ${ppage1}
                                                                                 </div>
                                                                              </div>
                                                                           </td>
                                                                        </tr>
                                                         </tbody>
                                                      </table>
                                                   </td>
                                                </tr>