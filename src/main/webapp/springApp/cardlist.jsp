<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<link href="/web/css/contents.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script >
	$(function(){
		$("a#search").click(function(){
					if($("select#query").val()=='empty'||$("input#data").val().length==0){
						alert('Search Not Found!');
						$("select#query").prop("selectedIndex",0);
						$("input#data").val('');
						$("input#data").focus();
						return false
						
					}	
					$("form").submit();
		});
	});
	
</script>
</head>
<body >
<%-- ${cardList } --%>
	<div id="wrapper">
		<div id="header">
				<div class="topInfoWrap">
					<div class="topInfoArea clfix">
						<div class="loginWrap">
							<span class="fir">2012.05.17</span>
							<span>13:30:22</span>
							<span><em>OOO님</em> 좋은 하루 되세요</span>
							<a href="" class="btnLogout"><img src="/web/img/common/btn_logout.gif" alt="로그아웃" /></a>
						</div>
					</div>
				</div>
				<div class="gnbSubWrap">
					
				</div>
			</div>
		<div id="container">
			<div id="contentsWrap" class="contentsWrap">
				<div class="contents">
					<h1 class="title">게시판 리스트</h1>
					<div class="btnSet clfix mgb15">
						<span class="fr">
							<span class="button"><a href="#" id="search">검색</a></span>
							<span class="button"><a href="#">글쓰기</a></span>
							<span class="button"><a href="cardList.do">새로고침</a></span>
						</span>
					</div>
					
					<form action="cardList.do" method="post">
					<table class="bbsWrite mgb35">
						<caption></caption>
						<colgroup>
							<col width="30" />						
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
						</colgroup>
						<tbody>
						<tr>
							<th>검색</th>
							<td>
								<select name="query" id="query">
									<option value="empty">선택하세요</option>
									<option value="companyName">COMPANY</option>
									<option value="name">NAME</option>
									<option value="dept">DEPT</option>
								</select>
								<input type="text" name="data" id="data" class="inputText" size="30" />
							</td>
						</tr>
						</tbody>
					</table>
				</form>
					
					<table class="bbsList">
						<colgroup>
							<col width="30" />						
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
							<col width="150" />
						</colgroup>
						<thead>
						<tr>
							<th scope="col" class="fir">NO</th>
							<th scope="col">IMG</th>
							<th scope="col">COMPANY</th>
							<th scope="col">NAME</th>
							<th scope="col">TEL</th>
							<th scope="col">DEPT</th>
							<th scope="col">ADDR</th>
							<th scope="col">HIT</th>
							<th scope="col">REGDATE</th>
							
							
						</tr>
						</thead>

						<tbody>
						<c:forEach var="i" items="${cardList}" varStatus="cnt">
						<tr>
							 <td>${cnt.count }</td>
						   <td>
						   <c:forEach var="k" items="${fn:split(i.face,'#')}">
						   <a href="hit.do?page=2&no=${i.no}&job=info">
						   <img src='/web/upload/${k}' width="50" height="50"></img>
						   </a>
						   </c:forEach>
						   </td>
						   <td>${i.companyName }</td>
						   <td>${i.name }</td>
						   <td>${i.tel }</td>
						   <td>${i.dept }</td>
						   <td>${i.addr }</td>
						   <td>${i.hit }</td>
						   <td>${i.regdate }</td>
						</tr>
						</c:forEach>
						</tbody>
					</table>
 <font size="30" style="color: red"> </font>
					<div class="paging">
					${page}
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>