<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<tr>
	<td>
		<table width="100%" border="0" cellpadding="0" cellspacing="0"
			class="table_tit_style01">
			<colgroup>
				<col width="5%">
				<col width="5%">
				<col width="5%">
				<col width="5%">
				<col width="5%">
				<col width="5%">
			</colgroup>
			<tbody>
				<tr>
					<td
						style="background: #f6f6f6; border-top: 1px solid #999; font-size: 12px; color: #999; text-align: center;">번호</td>
					<td
						style="background: #f6f6f6; border-top: 1px solid #999; font-size: 12px; color: #999; text-align: center;">메뉴</td>
					<td
						style="background: #f6f6f6; border-top: 1px solid #999; font-size: 12px; color: #999; text-align: center;">가격</td>
					<td
						style="background: #f6f6f6; border-top: 1px solid #999; font-size: 12px; color: #999; text-align: center;">요청</td>
					<td
						style="background: #f6f6f6; border-top: 1px solid #999; font-size: 12px; color: #999; text-align: center;">주문날짜</td>
					<td
						style="background: #f6f6f6; border-top: 1px solid #999; font-size: 12px; color: #999; text-align: center;">배달승인여부</td>
				</tr>

				<c:forEach items="${orderlist}" var="i">
					<tr id="listinfo"
						onmouseover="this.style.backgroundColor='#FAFAFA'"
						onmouseout="this.style.backgroundColor='';bgcolor='#FAFAFA'"
						class="board_list" style="width: 100%; height: 40px;">
						<td id="tdorderno" class="a"
							style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">${i.orderno}</td>
						<td
							style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">치킨</td>
						<td
							style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">${i.pay}</td>
						<td
							style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">${i.orderrequest}</td>
						<td
							style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">${i.orderdate}</td>
						<td
							style="font-size: 13px; text-align: center; border-bottom: 1px solid #ebebeb;">${i.delichoose}</td>
					</tr>
				</c:forEach>

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
								<!-- <tr
									style="width: 100%; height: 60px; background-color: #ebebeb;"> -->
								<!-- <td align="right"
										style="border-top: none; border-bottom: none; padding-right: 5px;"> -->
								<!-- <table border="0" cellpadding="0" cellspacing="0"
											align="center">
											<tbody>
												<tr>
													<td><input type="checkbox" name="search[subject]"
														style="height: 13px; vertical-align: middle;"> <label
														style="font-size: 12px; margin-right: 10px;">번호</label> <input
														type="checkbox" name="search[subject]"
														style="height: 13px; vertical-align: middle;"> <label
														style="font-size: 12px; margin-right: 10px;">메뉴</label></td>
													<td><input
														style="position: relative; border: 0; width: 200px; height: 30px; font-size: 15px; padding: 0 !important; color: #333; background-color: #fff; text-align: center; -webkit-appearance: none; border-radius: 0;">
													</td>
													<td><a href="#"><li class="main-button-s"
															style="text-align: center; margin-left: 5px; font-size: 12px; height: 30px; width: 50px; line-height: 30px; border: none; -webkit-appearance: none; border-radius: 0;">검색</li></a>
													</td>
												</tr>
											</tbody>
										</table> -->
								<tr class="board_btn_area">
									<td>
										<div style="margin: 0 auto; padding: 30px 0 0 0;">
											<div style="width: 100%; display: inline-block;"></div>
											<div
												style="width: 100%; display: inline-block; margin-left: 253%;">

												<a href="borderlist.jsp?page=1"><i
													class="fa fa-arrow-circle-left" style="font-size: 36px"></i></a>

												<a href="#">이전</a> <a href="#"><i
													class='fas fa-caret-square-left' style='font-size: 36px'></i>1</a>
												<span> <a href="#"> <font size="7" color="green"
														style="font-family: fantasy;"></font>2
												</a> <a href="#">3</a>

												</span> <a href="#"><i class='fas fa-caret-square-right'
													style='font-size: 36px'></i></a> <a href="#">다음</a> <a href="#"><i
													class="fa fa-arrow-circle-right" style="font-size: 36px"></i></a>
												<input type="hidden" id="userno" value=10>

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
	</td>
</tr>
<input type="hidden" id="userno"  name="userno" value=10>
<input type="hidden" id="ownerno" name="ownerno" value=10>
<input type="hidden" name="orderno" id="orderno" value="">
