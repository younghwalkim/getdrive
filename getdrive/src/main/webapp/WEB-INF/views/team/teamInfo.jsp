<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
	img#arrow {
		width: 3rem;
		height: 3rem;
		position: relative;
		right: 80rem;
		top: 1rem;
	}
	
	header {
		text-align: center;
	}
	
	header h2 {
		display: inline-block;
	}
	
</style>
<script type="text/javascript">

</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/mainTopbar.jsp"></c:import>
<hr>
<header>
	<h2>팀 프로젝트 1</h2>
	<a href="javascript:history.back();"><img id="arrow" src="/getdrive/resources/images/go_back_arrow.png"></a>
</header>
<hr>
</body>
</html>