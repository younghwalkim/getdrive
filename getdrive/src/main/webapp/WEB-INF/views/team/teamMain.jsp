<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title></title>
<style>

	button {
		background-color: #e6e6e6;
		color: black;
		font-size: 1.5rem;
		border-radius: 5px;
		border: none;
		padding: 1rem;
	}
	
	button#tmain {
		/* getdrive 블루계열 컬러 */
		background-color: #6DBFF2;
		color: white;
	}
	
	button#mteam {
		background-color: limegreen;
	}
	
	button#cteam {
		background-color: #323232;
		color: white;
		margin-top: 1rem;
		padding: 1rem 12rem;
	}
	
	button:hover {
		cursor: pointer;
	}
	
	table {
		margin-top: 3rem;
		border-collapse: collapse;
	}
	
	th, td {
		padding: 1rem;
		border-bottom: 2px solid black;
	}
	
	center {
		margin-bottom: 5rem;
		font-size: 1.5rem;
	}
	
</style>
<script type="text/javascript" src="/first/resources/js/jquery-3.7.0.min.js"></script>
<script type="text/javascript">
	// 팀원일 때 팀 정보 화면 입장
	function moveTeamInfo(){
		location.href = "tinfo.do";
	}
	
	// 팀장일 때 팀 관리 화면 입장
	function moveTeamAdmin(){
		location.href = "tadmin.do";
	}
	
	// 대시보드 입장
	function moveMain(){
		location.href = "template.do";
	}
	
	// 팀 생성 화면 입장
	function createTeam(){
		location.href = "tcreate.do";
	}
</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/mainTopbar.jsp"></c:import>
<hr>
<center>
<table>
	<tr>
		<th>김민식님의 초대/가입된 목록입니다.</th>
	</tr>
	<tr>
		<td>
			<span>팀 프로젝트 1</span> &nbsp;
			<button onclick="moveTeamInfo();">팀 정보</button> &nbsp;
			<button id="tmain" onclick="moveMain();">팀 입장</button> &nbsp;
		</td>
	</tr>
	<tr>
		<td>
			<span>팀 프로젝트 2</span> &nbsp;
			<button id="mteam" onclick="moveTeamAdmin();">팀 관리</button> &nbsp;
			<button id="tmain" onclick="moveMain();">팀 입장</button> &nbsp;
		</td>
	</tr>
	<tr>
		<td>
			<span>팀 프로젝트 3</span> &nbsp;
			<button>팀 정보</button> &nbsp;
			<button id="tmain" onclick="moveMain();">팀 입장</button> &nbsp;
		</td>
	</tr>
</table>
<button id="cteam" onclick="createTeam();">팀 생성</button>
</center>
<hr>
</body>
</html>