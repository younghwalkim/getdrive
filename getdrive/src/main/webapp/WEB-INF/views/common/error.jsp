<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>error</title>
</head>
<body>
<h1>오류 발생 : </h1>
 <c:set var="e" value="<%= exception %>" />
 <c:if test="${ !empty e }">
 	<h3>jsp 페이지 오류 : ${ e.message }</h3>
 </c:if>
 <%-- 서블릿(컨트롤러)에서 넘어온 에러일 때 --%>
 <c:if test="${ empty e }">
 	<h3>컨트롤러 오류 : ${ requestScope.message }</h3>
 </c:if>
 
 <c:url var="movemain" value="main.do" />
 <a href="${ movemain }">시작페이지로 이동</a>
 
</body>
</html>







