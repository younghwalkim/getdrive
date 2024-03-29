<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title></title>
<style type="text/css">
#top {
	width: 100%;
	height: 100px;
	margin-top:100px; 
}
#topmenu {
	width: 70%;
	height: 100px;
	float: left;
	margin: auto;
	text-align: center;
}
#topbutton {
	width: 30%;
	height: 100px;
	float: right;
	margin: auto;
	text-align: center;
}
#middle {
	width: 100%;
	height: 100px;
	margin-top:50px; 
}
#middlemenu {
	width: 70%;
	float: left;
	text-align: center;
	margin: auto;
}
#middlebutton {
	width: 30%;
	float: right;
	text-align: center;
	margin: auto;
}
#bottom {
	width: 100%;
	height: 100px;
	margin-top:50px; 
}
#bottommenu {
	width: 70%;
	float: left;
	text-align: center;
	margin: auto;
}
#bottombutton {
	width: 30%;
	float: right;
	text-align: center;
	margin: auto;
}

.commonButton {
	background: #6DBFF2;

	border-radius: 5px;
	color: white;
	cursor: pointer;
	border: 1px solid rgb(107, 185, 237);
	padding: 7px;
	width: 100px;
	height: 45px;
	text-align: center;
	font-size: 12pt;
	font-weight: 600;
	margin-top:30px; 
}

.commonButton:active {
	color: white;
	background: rgb(200, 230, 255);
	border:none;
}
</style>
<script type="text/javascript">
function moveContractPage(){
	location.href = "contract.do";
}
</script>
</head>
<body>
	<div id="top">
		<div id="topmenu">
			<h1>Class.getDrive 처음 방문이신가요?</h1>
			<h3>우선 회원가입을 해주세요.</h3>
		</div>
		<div id="topbutton">
			<button onclick="moveContractPage();" class="commonButton" id="joinButton">회원가입</button>
		</div>
	</div>
	<div id="middle">
		<div id="middlemenu">
			<h2>팀원들과 함께 프로젝트를 하려는 건가요?</h2>
			<h3>로그인 후 팀 개설과 팀원 초대를 해 주세요.</h3>
		</div>
		<div id="middlebutton">
			<button onclick="moveContractPage();" class="commonButton" id="teamcreateButt">팀 개설</button>
		</div>
	</div>
	<div id="bottom">
		<div id="bottommenu">
			<h2>팀장 또는 팀원으로 부터 초대를 받으셨나요?</h2>
			<h3>로그인 후 팀을 선택해주세요.</h3>
		</div>
		<div id="middlebutton">
			<button onclick="moveContractPage();" class="commonButton" id="teamselectButton">팀 선택</button>
		</div>
	</div>
</body>
</html>