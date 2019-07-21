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
               <p>�����Խ���</p>   
            </div>
            
            <div class="board_form01">
               <div class="board_search">
                  <ul>
                     <li>
                        <select id="category">
                           <option value="">�Ӹ���(��ü)</option>
                           <option value="����">����</option>
                                   <option value="����">����</option>
                                   <option value="����/���">����/���</option>
                                   <option value="�⳻����">�⳻����</option>
                                   <option value="���Ϲ�">���Ϲ�</option>
                                   <option value="�߱�/Ƽ�ϼ���">�߱�/Ƽ�ϼ���</option>
                                   <option value="��Ÿ">��Ÿ</option>
                        </select>
                     </li>
                     <li>
                        <input type="text" id="search" name="search">
                        <input type="button" value="�˻�" onclick="location.href='.jsp'">
                     </li>
                  </ul>
               </div>
            <table cellpadding="0" cellspacing="0">
                  <thead>
                     <th width="100px">NO</th>
                     <th width="100px">ī�װ�</th>
                     <th width="200px">����</th>
                     <th width="340px">����</th>
                     <th width="100px">�ۼ���</th>
                     <th width="120px">�ۼ���</th>
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
               
               
               <!-- paging ���� -->
               <div class="board_page" style="font-family: verdana;">

               <a href="#">������ </a>
               <!-- <font color="#ccc">������ </font> -->
               <span>
                   <a href="#"><font color="red" style="font-weight: bold;">
                   </font></a>               
                   <a href="#"></a>
               </span>
               <a>1</a>
                     <a href="#">������</a>
                     <!-- <font color="#ccc">������</font> -->
                     <a href="#"></a>
               <div class="board_page" style="font-family: verdana;">

               <!-- �۾��� ��ư -->
               <p>
               <a href="Testwriter.jsp">
               <button type="button" class="board_button"  onclick="location.href='Testwriter.jsp'">�۾���</button></a></p>
               
               </div>
            <!-- paging �� -->
               
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