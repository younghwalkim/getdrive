<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
	
	body {
		font-size: 1.5rem;
	}
	
	p {
		margin-top: 10rem;
	}
	
	input {
		border-radius: 5px;
		padding: 0.5rem;
		width: 12%;
	}

	button#tmain {
		background-color: rgb(107, 185, 237);
		color: white;
		font-size: 1.5rem;
		border-radius: 5px;
		border: none;
		padding: 0.5rem 1rem;
		margin-top: 10rem;
	}
	
	button:hover {
		cursor: pointer;
	}
</style>
<script type="text/javascript">
	// 팀 생성 후 팀 메인 페이지로 이동
	function moveTeamMain(){
		location.href = "tmain.do";
	}
</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/mainTopbar.jsp"></c:import>
<hr>
<center>
<h2>팀 생성</h2>
<form action="" method="post">
	<p>새로운 팀 이름</p>
	<input name="teamName" type="text" placeholder="새로운 팀명을 입력해주세요.">
</form>
<button id="tmain" onclick="moveTeamMain();">생성하기</button>
</center>
</body>
</html>