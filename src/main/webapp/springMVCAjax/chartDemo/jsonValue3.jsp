<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
[
<c:forEach var="i" items="${empList}" varStatus="cnt">
<c:choose>
<c:when test="${empList.size() ne cnt.count }">
${i.sal},		
</c:when>
<c:otherwise>
${i.sal}
</c:otherwise>
</c:choose>
</c:forEach>
]