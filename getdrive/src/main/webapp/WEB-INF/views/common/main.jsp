<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
#full {
	width: 100%;
	height: 100%;
}

#header {
	width: 100%;
	height: 20%;
}

#main {
	width: 100%;
	height: 550px;
}

#left {
	width: 50%;
	height: 550px;
	float: left;
}

#right {
	width: 49.9%;
	height: 550px;
	float: right;
	border-left: 1px solid black;
	text-align: center;
}

#footer {
	padding: 30px 0px;
	width: 100%;
	height: 50px;
	text-align: center;
}
</style>

</head>
<body>
	<div id="full">
		<div id="header">
			<c:import url="/WEB-INF/views/common/mainTopbar.jsp"></c:import>
		</div>
		<hr>
		<div id="main">
			<div id="left">
				<c:import url="/WEB-INF/views/common/commonMenu.jsp"></c:import>
			</div>
			<div id="right">
				<c:import url="/WEB-INF/views/member/login.jsp"></c:import>
			</div>

		</div>
	</div>

	<hr>
<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>