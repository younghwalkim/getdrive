<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
#logo {
	margin: 10px;
	width: 150px;
}

#logospace {
	width: 50%;
	float: left;
	height:80px;	
}

#Temporaryspace {
	width: 50%;
	float: right;
	height:80px;	
	text-align: right;
}
</style>

</head>
<body>
	<div id="logospace">
		<a href="/getdrive/">
		<img id="logo" alt="getdrive"src="/getdrive/resources/images/logo.png">
		</a>
	</div>
	
	<div id="Temporaryspace">
		[ <a href="tmain.do"> 팀목록 이동 </a> |	
		<a href="template.do?tno=1&uno=1&e_mail=ddd123@naver.com">팀메인 이동 </a> ]
	</div>	
</body>
</html>