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
											<th>��ǰ��</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="productname" class="inputText"
												size="50" value="${info.productname}"/></td>
										<td><input type="text" name="id" id="id" value="${id}"></input></td>
										</tr>
										<tr>
											<th>������</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="local" class="inputText"
												size="50" value="${info.local}" /></td>
										</tr>
										<tr>
											<th>��ǰ����</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="price" class="inputText"
												size="50" value="${info.price}"/></td>
										</tr>
										<tr>
											<th>ī�װ�</th>
											<td>
											<select style="width: 200px;" name="cate">
											
												<option value="empty" >�����ϼ���</option>
												<option value="cloth" <c:if test="${info.cate eq 'cloth'}">selected</c:if>>�Ƿ�/��ȭ</option>
												<option value="electronic" <c:if test="${info.cate eq 'electronic'}">selected</c:if>>������ǰ</option>
												<option value="furniture" <c:if test="${info.cate eq 'furniture'}">selected</c:if>>����</option>
												<option value="cosmetic" <c:if test="${info.cate eq 'cosmetic'}">selected</c:if>>ȭ��ǰ/���</option>
												<option value="foods" <c:if test="${info.cate eq 'foods'}">selected</c:if>>��ǰ/�ַ�</option>
												<option value="car" <c:if test="${info.cate eq 'car'}">selected</c:if>>������ǰ</option>													
											</select>
											</td>
										</tr>
										<tr>
											<th>��ǰ�̹���1</th>
											<td class="alignM"><input type="file" name="file1" id="file"
												class="inputText" size="10" value="${info.img}" /></td>
										</tr>
									</tbody>
								</table>
							</div>