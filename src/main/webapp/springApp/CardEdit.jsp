<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>������</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<link href="/web/css/contents.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script>
	$(function(){
		$("a#save").click(function(){//�������
			$("form").submit();
		});
		$("a#mod").click(function(){
			$("form").attr("action","/web/modifyy.do");
			$("form").submit();
		});
	});
	

</script>
</head>
<body >
${info}
	<div id="wrapper">
		<div id="header">
			<div class="topInfoWrap">
				<div class="topInfoArea clfix">
					<div class="loginWrap">
						<span class="fir">2012.05.17</span>
						<span>13:30:22</span>
						<span><em>OOO��</em> ���� �Ϸ� �Ǽ���</span>
						<a href="" class="btnLogout"><img src="/web/img/common/btn_logout.gif" alt="�α׾ƿ�" /></a>
					</div>
				</div>
			</div>
			<div class="gnbSubWrap">
			
				
			</div>
		</div>	
		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<h1 class="title">�Խ��� ���</h1>
					<div class="btnSet clfix mgb15">
						<span class="fr">
						<c:choose>
						 <c:when test="${info eq null}">
							<span class="button"><a href="#" id="save">����</a></span>
							</c:when>
							<c:otherwise>
							<span class="button"><a href="#" id="mod">����</a></span>
							</c:otherwise>							
						</c:choose>
							<span class="button"><a href="cardList.do">���</a></span>
							
						</span>
					</div>
					<form action="/web/cardInsert.do" name="frm" method="post" enctype="multipart/form-data">
					<table class="bbsWrite">
						<colgroup>
							<col width="90" />
							<col />
						</colgroup>
							<c:choose>
							<c:when test="${info eq null}">
						<tbody>
						
						<tr>
							<th scope="row">ȸ���</th>
							<td><input type="text" name="companyName" class="inputText" size="50"  />
							
							</td>
						</tr>
						<tr>
							<th scope="row">�̸�</th>
							<td><input type="text" name="name" class="inputText" size="50"  /></td>
						</tr>
						<tr>
							<th scope="row">��ȭ��ȣ</th>
							<td><input type="text" name="tel" class="inputText" size="50" /></td>
						</tr>
						<tr>
							<th scope="row">�μ�</th>
							<td><input type="text" name="dept" class="inputText" size="50" /></td>
						</tr>
						<tr>
							<th scope="row">�ּ�</th>
							
							<td><input type="text" name="addr" class="inputText" size="50" /></td>
						</tr>
						<tr>
							<th scope="row">�̸���</th>
							<td><input type="text" name="email" class="inputText" size="50" /></td>
						</tr>
						 <tr>
							<th scope="row">�޼���</th>
							<td class="editer">
								<textarea style="height:80px; " name="message"></textarea>
							</td>
						</tr>
						<tr>
							<th scope="row">�̹���</th>
							<td>
							<input type="file" name="file1" class="inputText" size="50" />
							</td>
						</tr>
							<tr>
							<th scope="row">�̹���</th>
							<td>
							<input type="file" name="file2" class="inputText" size="50" />
							</td>
						</tr>
						
						</tbody>
					</c:when>
						<c:otherwise>
						<tbody>
						
						<tr>
							<th scope="row">ȸ���</th>
							<td><input type="text" name="companyName" class="inputText" size="50" value="${info.companyName}"/>
								<input type="hidden" name="no" id="no" value="${info.no}"/>
							</td>
						</tr>
						<tr>
							<th scope="row">�̸�</th>
							<td><input type="text" name="name" class="inputText" size="50" value="${info.name}" /></td>
						</tr>
						<tr>
							<th scope="row">��ȭ��ȣ</th>
							<td><input type="text" name="tel" class="inputText" size="50" value="${info.tel}" /></td>
						</tr>
						<tr>
							<th scope="row">�μ�</th>
							<td><input type="text" name="dept" class="inputText" size="50" value="${info.dept}"/></td>
						</tr>
						<tr>
							<th scope="row">�ּ�</th>
							
							<td><input type="text" name="addr" class="inputText" size="50" value="${info.addr}"/></td>
						</tr>
						<tr>
							<th scope="row">�̸���</th>
							<td><input type="text" name="email" class="inputText" size="50" value="${info.email}" /></td>
						</tr>
						 <tr>
							<th scope="row">�޼���</th>
							<td class="editer">
								<textarea style="height:80px; " name="message">${info.message}</textarea>
							</td>
						</tr>
						<c:forEach var="i" items="${fn:split(info.face,'#')}" varStatus="cnt">
						<tr>
							<th scope="row">�̹���${cnt.count}</th>
							<td>
							
							<input type="file" name="file${cnt.count}" class="inputText" size="50" />
							<img src="/web/upload/${i}" width="50" height="50"/>
							</td>
						</tr>
						</c:forEach>
						
						</tbody>
						</c:otherwise>
						
					</c:choose>
					</table>
				</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>