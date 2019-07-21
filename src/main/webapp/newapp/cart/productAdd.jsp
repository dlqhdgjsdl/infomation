<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<meta http-equiv="imagetoolbar" content="no" />
<!-- <link href="../css/contents.css" rel="stylesheet" type="text/css" /> -->
<link href="/web/newapp/css/default.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="../js/design.js">

</script>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script src="../script/jquery-1.7.2.js"></script>
<script >
	function ajaxprocess(url,type,data,dataType){
		$.ajax({
			type:type,
			url:url,
			data:data,
			dataType:dataType,
			success:function(v){
				$("#sFrm").html(v);
			},
			error:function(e){
				alert('error'+e);
			}
			
		});
	}

$(document).ready(function(){
	 $("#hi").click(function(){
		 $("form").submit();		 
	 });	
	 $("a#modi").click(function(){
		ajaxprocess('/web/infoo.do','post','no='+$(this).attr('name'),'HTML');
		//$("form").attr("action","modify.do")
		//$("form").attr("action","insert.do")
	 });
});

</script>
</head>
<body>
${id}
${list}
<!-- db interproduct 사용 -->
	<div id="wrap">
		<!-- header -->
		<jsp:include page="../include/topGnb.jsp"></jsp:include>
		<!--// header -->

		<div id="sub_container">
			<div id="contentsWrap" class="sub_con5">
				<div class="board_form">   
		            <div class="con_title">
		               <p>상품등록/보기/수정</p>   
		            </div>
			
			
			
				<div class="contents">
					<div class="btnSet clfix mgb15">
						<span class="fr"> <span class="button"><a href="#">목록</a></span>
						</span>
					</div>

					<table class="bbsWrite mgb35">
						<caption></caption>
						<colgroup>
							<col width="95" />
							<col width="395" />
							<col width="95" />
							<col />
						</colgroup>
						<tbody>
							<tr>
								<th>업체명</th>
								<td><select style="width: 200px;">
										<option>선택하세요</option>
								</select></td>
								<th>상품명</th>
								<td><input type="text" name="" style="border:1px solid #ddd; height:20px;" class="inputText" size="30" />
									<span class="button"><a href="#">검색</a></span></td>
							</tr>
						</tbody>
					</table>

					<div class="clfix">
						<div class="tbWrapLt">
							<table class="bbsList">
								<colgroup>
									<col width="30" />
									<col width="100" />
									<col width="100" />
									<col width="100" />
									<col width="100" />
								</colgroup>
								<thead>								
								
									<tr>
										<th scope="col">NO.</th>
										<th scope="col">상품명</th>
										<th scope="col">모델</th>
										<th scope="col">가격</th>
										<th scope="col">상태</th>
										
									</tr>
								</thead>

								<tbody>
								<c:forEach var="i" items="${list}" varStatus="cnt">
									<tr>
										<td>${cnt.count}</td>
										<td>${i.productname} </td>
										<td><img src="/web/upload/${i.img}" width="50" height="50"></img></td>
										<td>${i.price}</td>
										
										<td>
										<span class="buttonFuc"><a href="#" id="modi" name="${i.no}">수정</a></span><span
											class="buttonFuc"><a href="#" id="dele" name="${i.no}">삭제</a></span>
										</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

						<div class="tbWrapRt">
							<ul class="tabA clfix mgb15">
								<li class="over"><a href="#info1">01. 상품등록</a></li>
							</ul>
 		              	<form action="/web/interproductinsert.do" name="frm" method="post" enctype="multipart/form-data" ><!-- enctype="multipart/form-data" -->
							<div id="sFrm">
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
												size="50" /></td>
										<td><input type="text" name="id" id="id" value="${id}"></input></td>
										</tr>
										<tr>
											<th>원산지</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="local" class="inputText"
												size="50" /></td>
										</tr>
										<tr>
											<th>상품가격</th>
											<td><input type="text" style="border:1px solid #ddd; height:20px;" name="price" class="inputText"
												size="50" /></td>
										</tr>
										<tr>
											<th>카테고리</th>
											<td>
											<select style="width: 200px;" name="cate">
												<option selected="selected">선택하세요</option>
												<option value="cloth">의류/잡화</option>
												<option value="electronic">전자제품</option>
												<option value="furniture">가구</option>
												<option value="cosmetic">화장품/향수</option>
												<option value="foods">식품/주류</option>
												<option value="car">차량용품</option>													
											</select>
											</td>
										</tr>
										<tr>
											<th>상품이미지1</th>
											<td class="alignM"><input type="file" name="file1" id="file"
												class="inputText" size="10" /></td>
										</tr>
									</tbody>
								</table>
							</div>
							</div>
							</form>
						</div>

						<p class="agr">
							<span class="button"><a href="#" id="hi">저장</a></span>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	
  <!--Footer-->
      <jsp:include page="../include/footer.jsp"></jsp:include>
   <!--END Footer-->	
   	</div>
	
</body>
</html>