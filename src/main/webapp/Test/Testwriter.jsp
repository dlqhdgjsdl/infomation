<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../Test/css/default.css" />
<script src="/DosiAir/js/bbs.js" charset = "UTF-8"></script>
<script src="/DosiAir/js/jquery-2.1.4.min.js" charset = "UTF-8"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("input#insertText").click(function(){
			$("form#writerinfo").submit();
		});
	});
</script>

</head>
<body style="background:url('/DosiAir/img/airplane4.jpg') top no-repeat;" >

<!--Wrap-->
 <div id="wrap">
	<!--Header-->
		<jsp:include page="../Test/TesttopGnb.jsp"></jsp:include>
	<!--END Header-->

	<!--Container-->
	<div id="sub_container">
		<div class="sub_con3">
			<div class="board_form">	
				<div class="con_title">
					<p>문의게시판</p>	
				</div>
				<div class="board_form02">
					<form id="writerinfo" method="post" action="/web/insertwriter.do">
					<div class="board_form03">
	                   <div class="board_l" style="background:url('../Test/img/board02.jpg') top no-repeat; border:1px solid #ddd;">
                           
                       </div>
	                    <div class="board_r">
						   <ul class="board_divide">
	                       		<li>구분</li>
	                       		<li>
	                       			<select name="t1" id="t1">
	                       				<option>결제</option>
	                       				<option>예약</option>
	                       				<option>변경/취소</option>
	                       				<option>기내서비스</option>
	                       				<option>수하물</option>
	                       				<option>발권/티켓수령</option>
	                       				<option>기타</option>
	                       			</select>
	                       		</li>
	                       </ul>
	                       <ul class="board_title">
	                       		<li>제목</li>
	                       		<li><input type="hidden" id="" name="" value='#'><input type="text" name="t2" id="t2" value=''></li>
	                       </ul>
	                     <!--   <ul class="board_pass">
	                       		<li>비밀번호</li>
	                       		<li><input type="text"></li>
	                       </ul> -->
		                   <ul class="board_contents">
	                       		<li style="margin-bottom:7px; ">내용</li>
	                       		<li><textarea rows="11" cols="60" name="t3" id="t3" style="border:1px solid #bbb;"></textarea></li>
	                       </ul>
	                       
	                       <ul class="board_writer">
	                       		<li id="writer">
	                       		<input type="button" class="board_button01"  onclick="location.href='Testboard.jsp'" id="insertText" name="" value="작성"> <!-- location.href='Testboard.jsp' -->
	                       		<input type="button" class="board_button01" id="" name="" value="수정">
	                       		<input type="button" class="board_button02" onclick="location.href='Testboard.jsp'" value="취소">
	                       		</li>
	                       </ul>
	                       
	                    </div>
                    </div>
                    </form>
				</div>
				<div>
				</div>
			</div>
		</div>	
	<!--END Container-->
	</div>
		
	<!--Footer-->
		<jsp:include page="../Test/Testfooter.jsp"></jsp:include>
	<!--END Footer-->
 </div><!--END Wrap-->
 	
</body>
</html>