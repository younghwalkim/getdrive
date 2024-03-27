<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html lang="ko">
<head>
<body>
<%-- 메뉴바 표시 --%>
<c:import url="/WEB-INF/views/common/top.jsp" />
<hr style="clear:both;">


<h1>getDrive 프로젝트 테스트</h1>
<li><a href="${ pageContext.servletContext.contextPath }/teamMain.do">팀 메인 프로젝트로 이동</a></li>


<hr style="clear:both;">
<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>