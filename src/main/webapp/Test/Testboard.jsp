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
	function showlist(){
		$.ajax({
			url:"/web/showlist.do",
			type: 'ajax',
			dataType:'text',
			success:function(v){
				$("body").html(v);
			},
			error:function(e){
				alert("error"+e);
			}
		});
	}
</script>

</head>

<body style="background:url('/DosiAir/img/airplane4.jpg') top no-repeat;" onload="showlist()" >
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
               <p>자유게시판</p>   
            </div>
            
            <div class="board_form01">
               <div class="board_search">
                  <ul>
                     <li>
                        <select id="category">
                           <option value="">머리말(전체)</option>
                           <option value="결제">결제</option>
                                   <option value="예약">예약</option>
                                   <option value="변경/취소">변경/취소</option>
                                   <option value="기내서비스">기내서비스</option>
                                   <option value="수하물">수하물</option>
                                   <option value="발권/티켓수령">발권/티켓수령</option>
                                   <option value="기타">기타</option>
                        </select>
                     </li>
                     <li>
                        <input type="text" id="search" name="search">
                        <input type="button" value="검색" onclick="location.href='.jsp'">
                     </li>
                  </ul>
               </div>
            <table cellpadding="0" cellspacing="0">
                  <thead>
                     <th width="100px">NO</th>
                     <th width="100px">카테고리</th>
                     <th width="200px">제목</th>
                     <th width="340px">내용</th>
                     <th width="100px">작성자</th>
                     <th width="120px">작성일</th>
                  </thead>
                  <tbody id="showlist">
                  <c:forEach var="i" items="${list}">
                     <tr>
                        <td>${i.t}</td>
                        <td>${i.t1 }</td>
                        <td><a href="Testinfo.jsp?no=${i.t}">${i.t2 }</a></td>
                        <td>${i.t3 }</td>
                        <td>${i.t4}</td>
                        <td>${i.t5}</td>
                     </tr>
                     </c:forEach>
                  </tbody>
               </table>
               
               
               <!-- paging 시작 -->
               <div class="board_page" style="font-family: verdana;">

               <a href="#">◀이전 </a>
               <!-- <font color="#ccc">◀이전 </font> -->
               <span>
                   <a href="#"><font color="red" style="font-weight: bold;">
                   </font></a>               
                   <a href="#"></a>
               </span>
               <a>1</a>
                     <a href="#">다음▶</a>
                     <!-- <font color="#ccc">다음▶</font> -->
                     <a href="#"></a>
               <div class="board_page" style="font-family: verdana;">

               <!-- 글쓰기 버튼 -->
               <p>
               <a href="Testwriter.jsp">
               <button type="button" class="board_button"  onclick="location.href='Testwriter.jsp'">글쓰기</button></a></p>
               
               </div>
            <!-- paging 끝 -->
               
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