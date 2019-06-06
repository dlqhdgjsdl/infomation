<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<tr>
	<td>
		<table width="100%" border="0" cellpadding="0" cellspacing="0"
			class="table_tit_style01">
			<colgroup>
				<col width="5%">
				<col width="15%">
				<col width="5%">
				<col width="5%">
				<col width="5%">
				<col width="5%">
			</colgroup>
			<tbody id="couponListTable">
				<tr style="height: 51px;">
					<td
						style="background: #f6f6f6; border-top: 1px solid #999; font-size: 15px; color: black;; text-align: center; font-weight: bold; font-weight: bold">번호</td>
					<td
						style="background: #f6f6f6; border-top: 1px solid #999; font-size: 15px; color: black;; text-align: center; font-weight: bold; font-weight: bold">쿠폰이름</td>
					<td
						style="background: #f6f6f6; border-top: 1px solid #999; font-size: 15px; color: black;; text-align: center; font-weight: bold; font-weight: bold">할인</td>
					<td
						style="background: #f6f6f6; border-top: 1px solid #999; font-size: 15px; color: black;; text-align: center; font-weight: bold; font-weight: bold">수량</td>
					<td
						style="background: #f6f6f6; border-top: 1px solid #999; font-size: 15px; color: black;; text-align: center; font-weight: bold; font-weight: bold">기간</td>
					<td
						style="background: #f6f6f6; border-top: 1px solid #999; font-size: 15px; color: black;; text-align: center; font-weight: bold; font-weight: bold">삭제여부</td>
				</tr>
				<c:forEach items="${couponList}" var="i" varStatus="cnt">
					<%-- <input type="hidden" name="couponno" value="${i.couponno}"/> --%>
					<%-- <form id="${i.couponno }"> --%>
					<tr onmouseover="this.style.backgroundColor='#FAFAFA'"
						onmouseout="this.style.backgroundColor='';bgcolor='#FAFAFA'"
						class="board_list" style="width: 100%; height: 40px;">
						<td
							style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">${cnt.count}</td>
						<td
							style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">${i.couponname}</td>
						<td
							style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">${i.coupondiscount}%</td>
						<td
							style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">${i.couponquntity}개</td>
						<td
							style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">${i.couponstrat}</td>
						<td
							style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;"><input
							type="button" value="삭제" onclick="deleteCoupon(${i.couponno})" /></td>
					</tr>
					<!-- </form> -->
				</c:forEach>

			</tbody>
		</table>
	</td>
</tr>
<tr>
	<!-- 검색창 시작부분 -->
	<td>
		<table width="100%" border="0" cellpadding="0" cellspacing="0"
			class="list_footer">
			<tbody>
				<tr class="board_paging">
					<td>
						<!-- 공백을 주어서 분리 시킴 -->


					</td>
				</tr>
				<tr>
					<td height="20px"></td>
				</tr>
				<tr>
				</tr>
				<tr style="width: 100%; height: 60px; background-color: #ebebeb;">
					<td align="right"
						style="border-top: none; border-bottom: none; padding-right: 5px;">
						<form action="couponSelect.do" method="post" id="testFrm">

							<table border="0" cellpadding="0" cellspacing="0" align="center">
								<tbody>
									<tr>
										<td><label
											style="font-size: 12px; margin-right: 10px; font-weight: bold;">쿠폰이름</label>
										</td>
										<td><input type="text" id="inputdata" name="inputdata"
											style="position: relative; border: 0; width: 200px; height: 30px; font-size: 15px; padding: 0 !important; color: #333; background-color: #fff; text-align: center; -webkit-appearance: none; border-radius: 0;">
										</td>
										<td><a href="#" id="serach"><li class="main-button-s"
												style="text-align: center; margin-left: 5px; font-size: 12px; height: 30px; width: 50px; line-height: 30px; border: none; -webkit-appearance: none; border-radius: 0;">검색</li></a>
										</td>
										<td><a href="#"><li id="couponinput"
												class="main-button-s"
												style="text-align: center; margin-left: 5px; font-size: 12px; height: 30px; width: 50px; line-height: 30px; border: none; -webkit-appearance: none; border-radius: 0;">등록</li></a>
										</td>
									</tr>
								</tbody>
							</table>
						</form>
				<tr class="board_btn_area">
					<td>
						<div style="margin: 0 auto; padding: 30px 0 0 0;">
							<div style="width: 100%; display: inline-block;"></div>
							<div id="paging"
								style="display: inline-block;width:100%; margin-left:-10%;">
								${ppage}</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</td>
</tr>


