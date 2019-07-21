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
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Striped Rows</h2>
  <p>The .table-striped class adds zebra-stripes to a table:</p>            
  <table class="table table-striped">
    <thead>
      <tr>
        <c:forEach var="i" items="${title}" varStatus="cnt">
           <th>${i}</th>
        </c:forEach>
        <th>Firstname</th>
      
      </tr>
    </thead>
    <tbody>
        <c:forEach var="j" items="${emplist}" varStatus="num">
        	<tr>
        		 <td>${num.count}</td>
              <td>${j.empno}</td>
           </tr>
        </c:forEach>
    </tbody>
  </table>
</div>

</body>