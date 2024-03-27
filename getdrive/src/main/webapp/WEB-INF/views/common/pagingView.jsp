<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- JSTL core 라이브러리 선언 -->

<%-- 페이지 표시에 사용될 값들을 변수 선언 --%>
<c:set var="currentPage" value="${ requestScope.paging.currentPage }" />
<c:set var="urlMapping" value="${ requestScope.paging.urlMapping }" />
<c:set var="startPage" value="${ requestScope.paging.startPage }" />
<c:set var="endPage" value="${ requestScope.paging.endPage }" />
<c:set var="maxPage" value="${ requestScope.paging.maxPage }" />
<c:set var="limit" value="${ requestScope.paging.limit }" /> <!-- *** -->

<c:set var="action" value="${ requestScope.action }" />
<c:set var="keyword" value="${ requestScope.keyword }" />
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
<div style="text-align:center;">
	<c:if test="${ currentPage eq 1 }" >
		[맨처음] &nbsp;
	</c:if>
	
	<c:if test="${ currentPage gt 1 }" >
		<a href="/first/${ urlMapping }?page=1">[맨처음]</a> &nbsp;
	</c:if>
	
	<c:if test="${ (currentPage - 10) lt startPage and (currentPage - 10) gt 1 }" >
		<a href="/first/${ urlMapping }?page=${ startPage - 10 }">[이전그룹]</a> &nbsp;
	</c:if>
	
	<c:if test="${ !((currentPage - 10) lt startPage and (currentPage - 10) gt 1) }" > <!-- 이전그룹이 없다면  -->
		[이전그룹] &nbsp;
	</c:if>
	
	
	<%-- 현재 페이지가 속한 페이지그룹 숫자 출력 --%>
	<c:forEach begin="${ startPage }" end="${ endPage }" step="1" var="p">
		<c:if test="${ p eq currentPage }">
			<font color="blue" size="4"><b>${ p }</b></font>
		</c:if>
		
		<c:if test="${ p ne currentPage }">
			<a href="/first/${ urlMapping  }?page=${ p }">${ p }</a>
		</c:if>
	</c:forEach>
	
	<%-- 다음 페이지 그룹으로 이동 --%>
	<c:if test="${(currentPage + 10) gt endPage and (currentPage + 10) lt maxPage }"> <!-- 다음그룹이 있다면 -->
		<a href="/first/${ urlMapping }?page=${ startPage + 10 }">[다음그룹]</a> &nbsp;
	</c:if> 
		
	<c:if test="${!((currentPage + 10) gt endPage and (currentPage + 10) lt maxPage) }"> <!-- 다음그룹이 없다면 -->
		[다음그룹] &nbsp;
	</c:if>
	
	<c:if test="${ currentPage ge maxPage }">
		[맨끝] &nbsp;
	</c:if>
	
	<c:if test="${ currentPage lt maxPage }"> <!-- currentPage < maxPage -->
		<a href="/first/${ urlMapping }?page=${ maxPage }">[맨끝]</a> &nbsp;
	</c:if>
</div>

<%-- 검색(제목, 작성자, 내용) 페이징 처리 --%>
<c:if test="${ action ne null and keyword ne null }">
<div style="text-align:center;">
	<c:if test="${ currentPage le 1 }">
		[맨처음] &nbsp;
	</c:if>

	<c:if test="${ currentPage gt 1 }"> <!-- currentPage > 1 -->
		<a href="/first/${ urlMapping }?page=1&action=${ action }&keyword=${ keyword }">[맨처음]</a> &nbsp;
	</c:if>
	
	<%-- 이전 페이지 그룹으로 이동 --%>
	<c:if test="${ (currentPage - 10) lt startPage and (currentPage - 10) gt 1 }"> <!-- 이전그룹이 있다면 -->
		<a href="/first/${ urlMapping }?page=${ startPage - 10 }&action=${ action }&keyword=${ keyword }">[이전그룹]</a> &nbsp;
	</c:if>
	
	<c:if test="${ !((currentPage - 10) lt startPage and (currentPage - 10) gt 1) }"> <!-- 이전그룹이 없다면 -->
		[이전그룹] &nbsp;
	</c:if>
	
	<%-- 현재 페이지가 속한 페이지그룹 숫자 출력 --%>
	<c:forEach begin="${ startPage }" end="${ endPage }" step="1" var="p">
		<c:if test="${ p eq currentPage }">
			<font color="blue" size="4"><b>${ p }</b></font>
		</c:if>
	
		<c:if test="${ p ne currentPage }">
			<a href="/first/${ urlMapping }?page=${ p }&action=${ action }&keyword=${ keyword }">${ p }</a>
		</c:if></c:forEach>
	
	<%-- 다음 페이지 그룹으로 이동 --%>
	<c:if test="${ (currentPage + 10) gt endPage and (currentPage + 10) lt maxPage }"> <!-- 다음그룹이 있다면 -->
		<a href="/first/${ urlMapping }?page=${ startPage + 10 }&action=${ action }&keyword=${ keyword }">[다음그룹]</a> &nbsp;
	</c:if>
	
	<c:if test="${ !((currentPage + 10) gt endPage and (currentPage + 10) lt maxPage) }"> <!-- 다음그룹이 없다면 -->
		[다음그룹] &nbsp;
	</c:if>
	
	<c:if test="${ currentPage ge maxPage }"> 
		[맨끝] &nbsp;
	</c:if>
	
	<c:if test="${ currentPage lt maxPage }">  currentPage < maxPage
		<a href="/first/${ urlMapping }?page=${ maxPage }&action=${ action }&keyword=${ keyword }">[맨끝]</a> &nbsp;
	</c:if>
</div>
</c:if>

<%-- 검색(등록날짜) 페이징 처리 --%>
<c:if test="${ action ne null and action eq 'date' }">
<div style="text-align:center;">
	
	<c:if test="${ currentPage le 1 }">
		[맨처음] &nbsp;
	</c:if>
	
	<c:if test="${ currentPage gt 1 }"> <!-- currentPage > 1 -->
		<a href="/first/${ urlMapping }?page=1&action=${ action }&begin=${ begin }&end=${ end }">[맨처음]</a> &nbsp;
	</c:if>
	
	<%-- 이전 페이지 그룹으로 이동 --%>
	<c:if test="${ (currentPage - 10) lt startPage and (currentPage - 10) gt 1 }"> <!-- 이전그룹이 있다면 -->
		<a href="/first/${ urlMapping }?page=${ startPage - 10 }&action=${ action }&begin=${ begin }&end=${ end }">[이전그룹]</a> &nbsp;
	</c:if>
	
	<c:if test="${ !((currentPage - 10) lt startPage and (currentPage - 10) gt 1) }"> <!-- 이전그룹이 없다면 -->
		[이전그룹] &nbsp;
	</c:if>
		
	<%-- 현재 페이지가 속한 페이지그룹 숫자 출력 --%>
	<c:forEach begin="${ startPage }" end="${ endPage }" step="1" var="p">
		<c:if test="${ p eq  currentPage}">
			<font color="blue" size="4"><b>${ p }</b></font>
		</c:if>
		
		<c:if test="${ p ne  currentPage}">
			<a href="/first/${ urlMapping }?page=${ p }&action=${ action }&begin=${ begin }&end=${ end }">${ p }</a>
		</c:if>
	</c:forEach>
	
	<%-- 다음 페이지 그룹으로 이동 --%>
	<c:if test="${ (currentPage + 10) gt endPage and (currentPage + 10) lt maxPage }"> <!-- 다음그룹이 있다면 -->
		<a href="/first/${ urlMapping }?page=${ startPage + 10 }">[다음그룹]</a> &nbsp;
	</c:if>
	
	<c:if test="${ !((currentPage + 10) gt endPage and (currentPage + 10) lt maxPage) }"> <!-- 다음그룹이 없다면 -->
		[다음그룹] &nbsp;
	</c:if>
	
	<c:if test="${ currentPage ge maxPage }">
		[맨끝] &nbsp;
	</c:if>
	
	<c:if test="${ currentPage lt maxPage }"> <!-- currentPage < maxPage -->
		<a href="/first/${ urlMapping }?page=${ maxPage }&action=${ action }&begin=${ begin }&end=${ end }">[맨끝]</a> &nbsp;
	</c:if>
</div>
</c:if>

</body>
</html>