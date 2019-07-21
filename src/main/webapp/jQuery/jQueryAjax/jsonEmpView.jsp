<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
   [
   <c:forEach var="i" items="${jsonEmp}" varStatus="c">
       <c:choose>
       <c:when test="${fn:length(jsonEmp) ne c.count}">
       {
         "empno":${i.empno},
         "ename":"${i.ename}",
         "sal":${i.sal},
         "comm":${i.comm},
         "hiredate":"${i.hiredate}",
         "job":"${i.job}"
       },
       </c:when>
       <c:otherwise>
       {
         "empno":${i.empno},
         "ename":"${i.ename}",
         "sal":${i.sal},
         "comm":${i.comm},
         "hiredate":"${i.hiredate}",
         "job":"${i.job}"
       }
       </c:otherwise>
       
       </c:choose>
   </c:forEach>
   ]



