<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	function deleteCoupon(data) {
		$.ajax({
			url : "/web/coupondelete.do?couponno=" + data,
			data : /* $("form#"+$(this).attr("id")), */$("form#couponinsert")
					.serialize(),
			type : 'post',
			dataType : 'html',
			success : function(v) {
				//console.log(v);
				$("tbody#ListAndPage").html(v);
			},
			error : function(e) {
				alert("error" + e);
			}
		});
	}

	function ShowCouponList() {
		$.ajax({
			url : "/web/couponinsert.do",
			data : $("form#couponinsert").serialize(),
			type : 'post',
			dataType : 'html',
			success : function(v) {
				console.log(v);
				$("tbody#ListAndPage").html(v);
				$("form#couponinsert").hide();
				$("input[type=text]").each(function() {
					$(this).val('');
				});
			},
			error : function(e) {
				alert("error" + e);
			}
		});
	}
	function ShowCoupon() {
		$.ajax({
			url : "/web/couponSelect.do",
			data : $("form#couponinsert").serialize(),
			type : 'post',
			dataType : 'html',
			success : function(v) {

				$("tbody#ListAndPage").html(v);
			},
			error : function(e) {
				alert("error" + e)
			}
		});
	}
	function ShowCoupon1(ownerno, page1) {

		$.ajax({
			url : "/web/couponSelect.do?ownerno=" + ownerno + "&page=" + page1,
			data : $("form#couponinsert").serialize(),
			type : 'post',
			dataType : 'html',
			success : function(v) {

				$("tbody#ListAndPage").html(v);
			},
			error : function(e) {
				alert("error" + e)
			}
		});
	}

	$(function() {
		/* document를 통해 ajax의 값들을 가져올수 있게 해준다. */
		/* 검색기능 구현 해야됨*/
		$(document).on("click", "a#serach", function() {
			if ($("input#inputdata").val().length == 0) {
				alert('데이터를 입력해주세요');
				$("input#inputdata").val();
				$("input#inputdata").focus();
				return false
			}
			$.ajax({
				url : "/web/couponSelect.do",
				data : {ownerno:'${owner.ownerno}',
					inputdata:$("input#inputdata").val()},
				type : 'post',
				dataType : 'html',
				success : function(v) {
					$("tbody#ListAndPage").html(v);
				},
				error : function(e) {
					alert("error" + e)
				}
			});
		});

		$(document).on("change", "select#discountselect", function() {
			var selectvalue = $("select#discountselect option:selected").val();
			console.log(selectvalue);
			$("input#hiden1").val(selectvalue);
		});
		$(document).on("change", "select#startdate", function() {
			var selectvalue1 = $("select#startdate option:selected").val();
			$("input#hiden2").val(selectvalue1);
		});

		/* $("select#startdate").change(function(){
			var selectvalue1=$("select#startdate option:selected").val();
			$("input#hiden2").val(selectvalue1);
		}); */

		$("form#couponinsert").hide();

		/* $("li#couponinput").click(function(){
			$("form#couponinsert").show(1000);
		}); */
		$(document).on("click", "li#couponinput", function() {
			$("form#couponinsert").show(1000);
		});

		/* ,function(){
		   
		}); */

		$(document).on("click", "#btn1", function() {
			$("form").submit;
		});
	});
</script>
<style>
@font-face{
	font-family: "BM";
	src:url("BMDOHYEON_ttf.ttf") format("truetype");
}
.list_footer { /* 검색부분 */
	width: 100%;
	height: 40px;
}

.list_footer .board_paging { /* 검색부분 텍스트 row 관리 */
	width: 100%;
	height: 40px;
}

.main-button-s { /* 검색 버튼 설정 */
	height: 38px;
	line-height: 38px;
	font-weight: 500;
	background-color: rgb(68, 68, 68);
	box-sizing: border-box;
	display: list-item;
	font-size: 13px;
	font-family: "Noto Sans KR", sans-serif, Arial, dotum, 돋움;
	color: rgb(255, 255, 255);
	cursor: pointer;
	margin: 0px;
	padding: 0px;
	list-style: none;
	transition: all 0.2s ease 0s;
}

.board_btn_area { /* 페이지아웃 범위 잡아주는 부분 */
	width: 100%;
	height: 80px;
}

.couponinput {
	width: 16%;
}

.register {
	background: -webkit-linear-gradient(left, #3931af, #00c6ff);
	margin-top: 3%;
	padding: 3%;
}

.register-left {
	text-align: center;
	color: #fff;
	margin-top: 10%;
}

.register-left input {
	border: none;
	border-radius: 1.5rem;
	padding: 2%;
	width: 60%;
	background: #f8f9fa;
	font-weight: bold;[]
	color: #383d41;
	margin-top: 30%;
	margin-bottom: 3%;
	cursor: pointer;
}

.register-right {
	background: #f8f9fa;
	border-top-left-radius: 10% 50%;
	border-bottom-left-radius: 10% 50%;
}

.register-left img {
	margin-top: 15%;
	margin-bottom: 13%;
	width: 25%;
	-webkit-animation: mover 2s infinite alternate;
	animation: mover 1s infinite alternate;
}

@
-webkit-keyframes mover { 0% {
	transform: translateY(0);
}

100%
{
transform
:
 
translateY
(-20px);
 
}
}
@
keyframes mover { 0% {
	transform: translateY(0);
}

100%
{
transform
:
 
translateY
(-20px);
 
}
}
.register-left p {
	font-weight: lighter;
	padding: 12%;
	margin-top: -9%;
}

.register .register-form {
	padding: 10%;
	margin-top: 10%;
}

.btnRegister {
	float: right;
	margin-top: 10%;
	border: none;
	border-radius: 1.5rem;
	padding: 2%;
	background: #0062cc;
	color: #fff;
	font-weight: 600;
	width: 50%;
	cursor: pointer;
}

.register .nav-tabs {
	margin-top: 3%;
	border: none;
	background: #0062cc;
	border-radius: 1.5rem;
	width: 28%;
	float: right;
}

.register .nav-tabs .nav-link {
	padding: 2%;
	height: 34px;
	font-weight: 600;
	color: #fff;
	border-top-right-radius: 1.5rem;
	border-bottom-right-radius: 1.5rem;
}

.register .nav-tabs .nav-link:hover {
	border: none;
}

.register .nav-tabs .nav-link.active {
	width: 100px;
	color: #0062cc;
	border: 2px solid #0062cc;
	border-top-left-radius: 1.5rem;
	border-bottom-left-radius: 1.5rem;
}

.register-heading {
	text-align: center;
	margin-top: 8%;
	margin-bottom: -15%;
	color: #495057;
}

.btn1 {
	float: right;
	margin-top: 10%;
	border: none;
	border-radius: 1.5rem;
	padding: 2%;
	background: #0062cc;
	color: #fff;
	font-weight: 600;
	width: 50%;
	cursor: pointer;
}
</style>
</head>
<body onload="ShowCoupon()">
	<jsp:include page="header.jsp"></jsp:include>
	<tr>
		<td height="100%" align="center">
			<table width="1000" height="1000" cellpadding="0" cellspacing="0"
				border="0" class="outline_both">
				<!-- 공지사항부분 시작 -->
				<tbody>
					<tr>
						<td valign="top" width="100%" height="100%" calss="outline_side">
							<div class="mem_tit"
								style="width: 96%; font-size: 22px; font-weight: 700; text-align: left; margin: 150px 0 25px 46%;">
								주문 내역</div>
							<table width="100%" align="center" border="0" cellpadding="0"
								cellspacing="0" id="default_board_view"
								style="margin: 20px 0 0 0;">
								<tbody>
									<tr>
										<td align="center">
											<table width="100%" align="center" border="0"
												cellspadding="0" cellspacing="0" id="default_board_list"
												style="margin: 0 0 0 46%;">
												<tbody>
													<tr>
												1 		<td>
															<form name="frmList" action="#none" id="frmList">
																<input type="hidden" id="ownernosession2" name="ownerno"
																	value="${owner.ownerno}"> <input type="hidden" name="id"
																	value="notice">
																<!-- 주문했을때 주문자 값 받아 올 때 사용 -->
																<table width="100%" border="0" cellpadding="0"
																	cellspacing="0">
																	<tbody id="ListAndPage">
																	</tbody>
																</table>
															</form>
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
				</tbody>
			</table>
		</td>
	</tr>
	</tbody>
	</table>
	</td>
	</tr>
	<form action="#" id="couponinsert" class="container register"
		style="margin-top: -46%; margin-left: 17%; position: fixed;">
		<div class="row">
			<div class="col-md-3 register-left">
				<img src="https://image.ibb.co/n7oTvU/logo_white.png" alt="" />
				<h3 style="font-size: 1.5rem">쿠폰을 등록 해주세요</h3>
				<p style="font-size: 0.9rem">빈칸 없이 입력해 주세요!!</p>
			</div>
			<div class="col-md-9 register-right">
				<div class="tab-content" id="myTabContent">
					<div class="tab-pane fade show active" id="home" role="tabpanel"
						aria-labelledby="home-tab">
						<h3 class="register-heading">쿠폰 등록 해주세요!</h3>
						<div class="row register-form">
							<div class="col-md-6" style="max-width: 100%; margin-left: 25%">
								<div class="form-group">
									<input type="text" name="couponname" class="form-control"
										placeholder="쿠폰 이름" value="" style="width: 150%;" />
								</div>
								<div class="form-group">
									<select class="form-control" id="discountselect"
										style="width: 150%;">
										<option class="hidden" selected disabled>쿠폰 할인을
											선택해주세요</option>
										<option>모든 음식 3% 할인</option>
										<option>모든 음식 5% 할인</option>
										<option>모든 음식 10% 할인</option>
										<option>모든 음식 15% 할인</option>
									</select> <input type="hidden" id="hiden1" name="conpondiscount" value="" />
								</div>
								<div class="form-group">
									<input type="text" class="form-control" name="couponquntity"
										placeholder="쿠폰 수량: 숫자만 적어주세요 " style="width: 150%" />
								</div>
								<div class="form-group">
									<select class="form-control" id="startdate"
										style="width: 150%;">
										<option class="hidden" selected disabled>쿠폰 기간을
											선택해주세요</option>
										<option>1일</option>
										<option>3일</option>
										<option>5일</option>
										<option>10일</option>
									</select> <input type="hidden" id="hiden2" name="couponstrat" value="" />
								</div>
								<div class="form-group">
									<div class="maxl">
										<label class="radio inline"
											style="width: 100%; margin-bottom: -20%;"> <input
											type="hidden" id="ownernosession" name="ownerno" value="${owner.ownerno}">

											<input type="button" onclick="ShowCouponList()" class="btn1"
											id="btn1" name="register"
											style="width: 50%; margin-bottom: -5%; margin-left: 15%"
											value="등록">
										</label>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</form>
</body>
</html>