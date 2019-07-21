<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>관리자</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<meta http-equiv="X-UA-Compatible" content="IE=9" />
<meta http-equiv="imagetoolbar" content="no" />
<!-- <link href="../css/contents.css" rel="stylesheet" type="text/css" /> -->
<link href="../css/default.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../script/jquery-1.7.2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){

	});	

</script>
</head>
<body >

	<div id="wrap">
		<!-- header -->
		<jsp:include page="../include/topGnb.jsp"></jsp:include>
		<!--// header -->

		<div id="sub_container">
			<div id="contentsWrap" class="sub_con5">
				<div class="board_form">   
		            <div class="con_title">
		               <p>게시판 상세보기</p>   
		            </div>
				<div class="contents">
					<div class="btnSet clfix mgb15">
						<span class="fr">
						
                            <span class="button"><a href="#">물품구매</a></span>
							<span class="button"> <a href="cartAdd.action?pk=${bean.pk}">장바구니</a></span>						
							<span class="button"><a href="productShopping.action">목록</a></span>
						</span>
					</div>
					<table class="bbsList">
						<colgroup>
							<col width="400" />
                            <col width="100" />
                            <col width="" />
						</colgroup>
						<tr>
							<th scope="col" class="fir">이미지</th>
                             <th scope="col">글번호</th>
                             <td>1</td>
                        </tr>
                        <tr>
                        
                          <td class="fir" rowspan="7"><img src="" width="400" height="400"/></td>
                          <th scope="col">아이디</th>
                          <td></td>
                        </tr>
                        <tr>
                          <th scope="col">상품이름</th>
                          <td></td>
                        </tr>
                        <tr>
                          <th scope="col">가격</th>
                          <td></td>
                        </tr>
                        <tr>
                          <th scope="col">원산지</th>
                          <td></td>
                        </tr>
                        <tr>
                          <th scope="col">카테고리</th>
                          <td></td>
                        </tr>
                        <tr>
                          <th scope="col">등록일</th>
                          <td></td>
                        </tr>                        
					</table>
					
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






