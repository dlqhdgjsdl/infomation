<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
	<div id="info1" class="tbWrapCnt" style="display: block;">
								<table class="bbsWrite mgb10">
									<caption></caption>
									<colgroup>
										<col width="95" />
										<col />
									</colgroup>
									<tbody>
									
										<tr>
											<th>상품명</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productname" class="inputText"
												size="50" value="${info.productname}"/></td>
										<td><input type="text" name="id" id="id" value="${id}"></input></td>
										</tr>
										<tr>
											<th>원산지</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="local" class="inputText"
												size="50" value="${info.local}" /></td>
										</tr>
										<tr>
											<th>상품가격</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="price" class="inputText"
												size="50" value="${info.price}"/></td>
										</tr>
										<tr>
											<th>카테고리</th>
											<td>
											<select style="width: 200px;" name="cate">
											
												<option value="empty" >선택하세요</option>
												<option value="cloth" <c:if test="${info.cate eq 'cloth'}">selected</c:if>>의류/잡화</option>
												<option value="electronic" <c:if test="${info.cate eq 'electronic'}">selected</c:if>>전자제품</option>
												<option value="furniture" <c:if test="${info.cate eq 'furniture'}">selected</c:if>>가구</option>
												<option value="cosmetic" <c:if test="${info.cate eq 'cosmetic'}">selected</c:if>>화장품/향수</option>
												<option value="foods" <c:if test="${info.cate eq 'foods'}">selected</c:if>>식품/주류</option>
												<option value="car" <c:if test="${info.cate eq 'car'}">selected</c:if>>차량용품</option>													
											</select>
											</td>
										</tr>
										<tr>
											<th>상품이미지1</th>
											<td class="alignM"><input type="file" name="file1" id="file"
												class="inputText" size="10" value="${info.img}" /></td>
										</tr>
									</tbody>
								</table>
							</div>