<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" errorPage="../common/error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="currentPage" value="${ requestScope.paging.currentPage}" />
<c:set var="urlMapping" value="${ requestScope.paging.urlMapping}" />
<c:set var="startPage" value="${ requestScope.paging.startPage}" />
<c:set var="endPage" value="${ requestScope.paging.endPage}" />
<c:set var="maxPage" value="${ requestScope.paging.maxPage}" />

<c:set var="action" value="${ requestScope.action}" />
<c:set var="keyword" value="${ requestScope.keyword}" />
<c:set var="begin" value="${ requestScope.begin }" />
<c:set var="end" value="${ requestScope.end }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<%-- 목록 페이징 처리 --%>
<c:if test="${empty action && keyword == null}">
    <div style="text-align:center;">
	
	    <%-- 맨 처음 페이지로 이동 --%>
	    <c:choose>
	        <c:when test="${currentPage > 1}">
	            <a href="${urlMapping}?page=1&limit=${limit}">[맨처음]</a> &nbsp;
	        </c:when>
	        <c:otherwise>
	            [맨처음] &nbsp;
	        </c:otherwise>
	    </c:choose>		
	
	    <%-- 이전 그룹으로 이동 --%>
	    <c:choose>
	        <c:when test="${(currentPage - 10) >= 1}">
	            <a href="${urlMapping}?page=${currentPage - 10}&limit=${limit}">[이전그룹]</a> &nbsp;
	        </c:when>
	        <c:otherwise>
	            [이전그룹] &nbsp;
	        </c:otherwise>
	    </c:choose>
	
	    <%-- 페이지 번호 --%>
	    <c:forEach begin="${startPage}" end="${endPage}" var="p"> 
	        <c:choose>
	            <c:when test="${p == currentPage}">
	                <font color="blue" size="4"><b>${p}</b></font>
	            </c:when>
	            <c:otherwise>
	                <a href="${urlMapping}?page=${p}&limit=${limit}">${p}</a>
	            </c:otherwise>
	        </c:choose>
	    </c:forEach>
	    
	    <%-- 다음 그룹으로 이동 --%>
	    <c:choose>
		    <c:when test="${endPage < maxPage}">
		        <a href="${urlMapping}?page=${endPage + 1}&limit=${limit}">[다음그룹]</a> &nbsp;
		    </c:when>
		    <c:otherwise>
		        [다음그룹] &nbsp;
		    </c:otherwise>
	    </c:choose>
	    
	    <%-- 맨 끝 페이지로 이동 --%>
	    <c:choose>
	        <c:when test="${currentPage < maxPage}">
	            <a href="${urlMapping}?page=${maxPage}&limit=${limit}">[맨끝]</a> &nbsp;
	        </c:when>
	        <c:otherwise>
	            [맨끝] &nbsp;
	        </c:otherwise>
	    </c:choose>
     
	</div>
</c:if>

<%-- 검색 목록 페이징 처리 --%>
<c:if test="${empty action && keyword != null }">
    <div style="text-align:center;">
	
	    <%-- 맨 처음 페이지로 이동 --%>
	    <c:choose>
	        <c:when test="${currentPage > 1}">
	            <a href="${urlMapping}?page=1&limit=${limit}&keyword=${keyword}">[맨처음]</a> &nbsp;
	        </c:when>
	        <c:otherwise>
	            [맨처음] &nbsp;
	        </c:otherwise>
	    </c:choose>		
	
	    <%-- 이전 그룹으로 이동 --%>
	    <c:choose>
	        <c:when test="${(currentPage - 10) >= 1}">
	            <a href="${urlMapping}?page=${currentPage - 10}&limit=${limit}&keyword=${keyword}">[이전그룹]</a> &nbsp;
	        </c:when>
	        <c:otherwise>
	            [이전그룹] &nbsp;
	        </c:otherwise>
	    </c:choose>
	
	    <%-- 페이지 번호 --%>
	    <c:forEach begin="${startPage}" end="${endPage}" var="p"> 
	        <c:choose>
	            <c:when test="${p == currentPage}">
	                <font color="blue" size="4"><b>${p}</b></font>
	            </c:when>
	            <c:otherwise>
	                <a href="${urlMapping}?page=${p}&limit=${limit}&keyword=${keyword}">${p}</a>
	            </c:otherwise>
	        </c:choose>
	    </c:forEach>
	    
	    <%-- 다음 그룹으로 이동 --%>
	    <c:choose>
		    <c:when test="${endPage < maxPage}">
		        <a href="${urlMapping}?page=${endPage + 1}&limit=${limit}&keyword=${keyword}">[다음그룹]</a> &nbsp;
		    </c:when>
		    <c:otherwise>
		        [다음그룹] &nbsp;
		    </c:otherwise>
	    </c:choose>
	    
	    <%-- 맨 끝 페이지로 이동 --%>
	    <c:choose>
	        <c:when test="${currentPage < maxPage}">
	            <a href="${urlMapping}?page=${maxPage}&limit=${limit}&keyword=${keyword}">[맨끝]</a> &nbsp;
	        </c:when>
	        <c:otherwise>
	            [맨끝] &nbsp;
	        </c:otherwise>
	    </c:choose>
     
	</div>
</c:if>


<%-- 검색(제목, 작성자, 내용) 페이징 처리 --%>
<c:if test="${action != null && keyword != null}">
<div style="text-align:center;">
    <c:choose>
        <c:when test="${currentPage <= 1}">
            [맨처음] &nbsp;
        </c:when>
        <c:otherwise>
            <a href="${urlMapping}?page=1&action=${action}&keyword=${keyword}">[맨처음]</a> &nbsp;
        </c:otherwise>
    </c:choose>

    <c:if test="${(currentPage - 10) < startPage && (currentPage - 10) > 1}">
        <a href="${urlMapping}?page=${startPage - 10}&action=${action}&keyword=${keyword}">[이전그룹]</a> &nbsp;
    </c:if>
    <c:if test="${(currentPage - 10) >= startPage || (currentPage - 10) <= 1}">
        [이전그룹] &nbsp;
    </c:if>
    
    <c:forEach var="p" begin="${startPage}" end="${endPage}">
        <c:choose>
            <c:when test="${p == currentPage}">
                <font color="blue" size="4"><b>${p}</b></font>
            </c:when>
            <c:otherwise>
                <a href="/first/${urlMapping}?page=${p}&action=${action}&keyword=${keyword}">${p}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    
    <c:if test="${(currentPage + 10) > endPage && (currentPage + 10) < maxPage}">
        <a href="/first/${urlMapping}?page=${startPage + 10}&action=${action}&keyword=${keyword}">[다음그룹]</a> &nbsp;
    </c:if>
    <c:if test="${(currentPage + 10) <= endPage || (currentPage + 10) >= maxPage}">
        [다음그룹] &nbsp;
    </c:if>
    
    <c:choose>
        <c:when test="${currentPage >= maxPage}">
            [맨끝] &nbsp;
        </c:when>
        <c:otherwise>
            <a href="/first/${urlMapping}?page=${maxPage}&action=${action}&keyword=${keyword}">[맨끝]</a> &nbsp;
        </c:otherwise>
    </c:choose>
</div>
</c:if>

<%-- 검색(등록날짜) 페이징 처리 --%>
<c:if test="${action != null && action == 'date'}">
<div style="text-align:center;">
    <c:choose>
        <c:when test="${currentPage <= 1}">
            [맨처음] &nbsp;
        </c:when>
        <c:otherwise>
            <a href="/first/${urlMapping}?page=1&action=${action}&begin=${begin}&end=${end}">[맨처음]</a> &nbsp;
        </c:otherwise>
    </c:choose>

    <c:choose>
        <c:when test="${(currentPage - 10) < startPage && (currentPage - 10) > 1}">
            <a href="/first/${urlMapping}?page=${startPage - 10}&action=${action}&begin=${begin}&end=${end}">[이전그룹]</a> &nbsp;
        </c:when>
        <c:otherwise>
            [이전그룹] &nbsp;
        </c:otherwise>
    </c:choose>
    
    <c:forEach var="p" begin="${startPage}" end="${endPage}">
        <c:choose>
            <c:when test="${p == currentPage}">
                <font color="blue" size="4"><b>${p}</b></font>
            </c:when>
            <c:otherwise>
                <a href="/first/${urlMapping}?page=${p}&action=${action}&begin=${begin}&end=${end}">${p}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    
    <c:choose>
        <c:when test="${(currentPage + 10) > endPage && (currentPage + 10) < maxPage}">
            <a href="/first/${urlMapping}?page=${startPage + 10}&action=${action}&begin=${begin}&end=${end}">[다음그룹]</a> &nbsp;
        </c:when>
        <c:otherwise>
            [다음그룹] &nbsp;
        </c:otherwise>
    </c:choose>
    
    <c:choose>
        <c:when test="${currentPage >= maxPage}">
            [맨끝] &nbsp;
        </c:when>
        <c:otherwise>
            <a href="/first/${urlMapping}?page=${maxPage}&action=${action}&begin=${begin}&end=${end}">[맨끝]</a> &nbsp;
        </c:otherwise>
    </c:choose>
</div>
</c:if>

</body>
</html>