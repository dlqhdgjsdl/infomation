<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="../Test/css/default.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">
	function showinfo(){
		$.ajax({
			url:"/web/showinfo.do",
			dataType:'text',
			data:$("form#infofrm").serialize(),
			type:'post',
			success: function(v){
				$("body#bodyshow").html(v);
			},
			error: function(e){
				alert('error'+e);
			}
		})
	};
</script>

</head>
<body style="background:url('/DosiAir/img/airplane4.jpg') top no-repeat;" onload="showinfo()" id="bodyshow" >
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
				<div class="board_form04">
					<div class="board_form05">
						<form id="infofrm">
						<c:forEach var="i" items="${showInfo}">
	                    <div class="board_top">
	                    	<ul class="board_t">
	                    		<li><strong>${i.t2}</strong></li>
	                    		<li>|</li>
	                    		<li>${i.t4}</li>
	                    	</ul>
	                    	<ul class="board_date">
	                    		<li>${i.t5}</li>
	                    	</ul>
	                    </div>
	                    
	                    
	                    <div class="board_b">
	                    	<ul>
	                    		<li><strong>${i.t4}</strong></li>
	                    		<li>${i.t4}</li>
	                    	</ul>
	                    </div>
	                    <div class="board_text">
	                    	<ul>
	                    		<li style="min-height:200px;">${i.t3}</li>
	                    	</ul>
	                    </div>
	                    
	                    <div class="board_bottom">
	                     	<div class="board_letter">
	                    		<div class="letter_top">
		                    		<ul>
										 <li class="letter_f"><strong>아이디</strong> </li>
										 <li><span>|</span></li>
										 <li class="letter_f02"><img alt="" src="../Test/img/re.jpg" style="width:10px;height:10px;">&nbsp;답글</li>
										 <li class="letter_cl">${i.t3}</li>
									</ul>
									
									<!-- 내가 작성한 부분만 수정 삭제 가능 -->
									 <ul class="letter_r">
										 <li><span>수정 </span></li>
										 <li><span>|</span></li>
										 <li><span>삭제</span></li>
									</ul> 
								</div>
							<div class="letter_bottom">
		                    		<ul>
		                    			<li></li>
		                    		</ul>
	                    	</div>
	                    	</div>
	                    	
	                    	<div class="board_writer02">
	                    		<ul>
	                    			<li><textarea rows="" cols="" ></textarea>&nbsp;&nbsp;<input type="button" value="등록" onclick="location.href='.jsp'"/></li>
	                    		</ul>
	                    	</div>
	                    	
	                    	
	                    	<div class="board_writer03">
	                    		<ul>
	                    			<li><textarea rows="" cols="" ></textarea>&nbsp;&nbsp;<input type="button" value="등록" onclick="location.href='.jsp'"/></li>
	                    		</ul>
	                    	</div>
	                    </div>
	                    <div class="board_button_bt">
	                     	<ul>
	                     		<li>
	                     		<input type="button" value="글쓰기" onclick="location.href='.jsp'" />&nbsp;&nbsp;
	                     		<input type="button" value="수정" onclick="location.href='.jsp'" />&nbsp;&nbsp;
	                     		<input type="button" value="삭제"onclick="location.href='.jsp'" />&nbsp;&nbsp;
	                     		<input type="button" value="목록" onclick="location.href='.jsp'" />
	                     		</li>
	                     	</ul>
	                    </div>
                    </c:forEach>
	                    <input type="text" name="no" id="no" value="${no}">
                    </form>
                    </div>
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