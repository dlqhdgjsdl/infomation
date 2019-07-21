<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrapp/3.4.0/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script type="text/javascript">  
  $(function(){
	  $("table#ajaxTb").hide();
	  $("input[type='checkbox']").click(function(){
		 if($(this).prop("checked")&& $(this).val()=='7788'){
			$("span").eq(0).html("<img src='/web/img/3.jpg' width=400 height=400>"); 
		 }
		 if(!($(this).prop("checked"))&& $(this).val()=='7788'){
				$("span").eq(0).html(""); 
		 }
	  });
	  $(".empno").click(function(){
		 var no=$(this).text();
		    $.ajax({
		    	url:'/web/jsonInfo.do',
		    	data:"no="+no,
		        type:'post',
		       	cache:false,
		       	dataType:'json',
		       	success:function(v){
		       		//console.log(v);
		       		$("table#ajaxTb").show(1000).slideUp(1000).slideDown(1000);
		       	    $("#atd").html("<td>1</td><td>"+v.empno+"</td><td>"+v.ename+"</td><td>"+v.sal+"</td><td>"+v.comm+"</td><td>"+v.job+"</td><td>"+v.hiredate+"</td>");
		       		
		       	},
		       	error:function(){		       		
		       	}			        		
		    });
	  });
	  	 
  });  
</script>
</head>
<body>

<div class="container">
  <h2>${state}PROCESS</h2>
  <p>The .table-striped class adds zebra-stripes to a table:</p>  
            
  <table class="table table-striped">
    <thead>
      <tr>
        <c:forEach var="i" items="${title}" varStatus="cnt">
           <th>${i}</th>
        </c:forEach> 
      
      </tr>
    </thead>
    <tbody>
        <c:forEach var="j" items="${empList }" varStatus="num">
           <tr>
             <c:choose>
                <c:when test="${state eq 'EMP' }">
              <td><input type="checkbox" value="${j.empno}"> ${num.count}</td>
              <td class="empno">${j.empno}</td>
              <td>${j.ename}</td>
              <td>${j.sal}</td>
              <td>${j.comm}</td>
              <td>${j.job}</td>
              <td>${j.hiredate}</td>   
                </c:when>
                <c:otherwise>
                <td>${num.count}</td>
              <td class="empno">${j.studno}</td>
              <td>${j.name}</td>
              <td>${j.userId}</td>
              <td>${j.idnum}</td>
              <td>${j.birthdate}</td>
              <td>${j.grade}</td>
              <td>${j.weight}</td>
              <td>${j.height}</td>       
                
                </c:otherwise>
             </c:choose>
           </tr>
        
        </c:forEach> 
    </tbody>
  </table><br><br>
  <table class="table table-striped" id="ajaxTb">
    <thead>
      <tr>
        <c:forEach var="i" items="${title}" varStatus="cnt">
           <th>${i}</th>
        </c:forEach>
      
      </tr>
    </thead>
    <tbody>
       <tr id="atd">
              <%-- <td>1</td>
              <td>${j.studno}</td>
              <td>${j.name}</td>
              <td>${j.userId}</td>
              <td>${j.idnum}</td>
              <td>${j.birthdate}</td>
              <td>${j.grade}</td>
              <td>${j.weight}</td>
              <td>${j.height}</td> --%>  
       </tr>
    </tbody>
   </table> 
</div>
   <span>
      
   </span><span></span><span></span>
</body>
</html>
    