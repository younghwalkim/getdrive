<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="../common/error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>first</title>
<style type="text/css">
#loginzone {
	width: 40%;
	height: 80%;
	vertical-align: middle;
	display: inline-block;
	margin-top:120px; 
}
input {
	-webkit-writing-mode: horizontal-tb !important;
	text-rendering: auto;
	color: initial;
	letter-spacing: normal;
	word-spacing: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: start;
	-webkit-appearance: textfield;
	background-color: white;
	-webkit-rtl-ordering: logical;
	cursor: text;
	margin: 0em;
	padding: 1px 0px;
	border-width: 2px;
	border-style: inset;
	border-color: initial;
	border-image: initial;
}

.inner_login {
	position: absolute;
	left: 50%;
	top: 50%;
	margin: -145px 0 0 -160px;
}
.screen_out {
	position: absolute;
	width: 0;
	height: 0;
	overflow: hidden;
	line-height: 0;
	text-indent: -9999px;
}
body, button, input, select, td, textarea, th {
	font-size: 13px;
	line-height: 1.5;
}

fieldset, img {
	border: 0;
}

.box_login {
	width: 100%;
	border: 1px solid #ddd;
	border-radius: 5px;
	background-color: #fff;
	box-sizing: border-box;
}
.box_login {
	border: 1px solid #blue;
}

.inp_text {
	position: relative;
	width: 100%;
	margin: 0;
	padding: 8px 19px 8px;
	box-sizing: border-box;
	font-size : 50pt;
}

.inp_text+.inp_text {
	border-top: 1px solid #ddd;
}

.inp_text input {
	display: block;
	width: 100%;
	height: 40px;
	font-size: 18px;
	font-family :sans-serif;
	font-weight: 600;
	color: #444444;
	border: none;
	outline: 0;
	-webkit-appearance: none;
	background-color: transparent;
	cursor: pointer;
}

.inp_text input::placeholder{
	color: #999999;
}

.btn_login {
	background: #6DBFF2;
	border-radius: 5px;
	color: white;
	cursor: pointer;
	border: 1px solid rgb(107, 185, 237);
	padding: 7px;
	width: 100%;
	height: 40px;
	text-align: center;
	font-weight: 600;
	font-size: 12pt;
}

.btn_login:active {
	color: white;
	background: rgb(200, 230, 255);
	border:none;
}

.login_append.txt_find {
	float: right;
	color: #666666;
	text-align: center;
	font-weight: 600;
	text-decoration-line: none;
}

.login_append.txt_find:active {
	color: #999999;
	border:none;
}

.QR_login {
	color: #666666;
	line-height: 2.1;
	font-weight: 600;
	text-decoration-line: none;
}

.QR_login:active {
	color: #999999;
}

#google {
	margin: 10px;
	width: 40px;
}

#kakao {
	margin: 10px;
	width: 40px;
}

#naver {
	margin: 10px;
	width: 40px;
}

.join_button {
	background: #6DBFF2;
	border-radius: 5px;
	color: white;
	cursor: pointer;
	border: 1px solid rgb(107, 185, 237);
	padding: 7px;
	width: 100%;
	height: 40px;
	text-align: center;
	font-weight: 600;
	font-size: 12pt;
}

.join_button:active {
	color: white;
	background: rgb(200, 230, 255);
	border:none;
}

.notpermission {
	color: red;
	text-align: left;
}
</style>
<script type="text/javascript">
function moveContractPage(){
	location.href = "contract.do";
}
</script>
</head>
<body>
	<div id="loginzone">
		<input type="hidden" name="redirectUrl"value="https://apost.dev/manage">
		<fieldset>
			<legend class="screen_out">로그인 정보 입력폼</legend>
			<div class="box_login">
				<div class="inp_text">
					<label for="loginId" class="screen_out"> 아이디</label> 
					<input type="email" id="loginId" name="loginId" placeholder="이메일" class="pos">
				</div>
				<div class="inp_text">
					<label for="loginPw" class="screen_out"> 비밀번호</label> 
					<input type="password" id="loginPw" name="loginPw" placeholder="비밀번호" class="pos">
				</div>
			</div>
			<div class="notpermission">아이디 또는 비밀번호가 일치하지 않습니다.</div>
			<button type="submit" class="btn_login" disabled>Sign in</button>
			<div class="login_append">
				<span class="QR_login"> <a href="/member/find/password"
					class="QR_login">QR코드로 로그인하기</a>
				</span> <br> <span class="QR_login"> <a
					href="/member/find/password" class="QR_login">비밀번호 찾기</a>
				</span>
				<hr>
			</div>
			<div class="login_bottom">
				<div class="snsicon">
					<a href="http://www.google.com"><img id="google" alt="getdrive" src="/getdrive/resources/images/google.png"></a> 
					<a href="http://www.daum.net"><img id="kakao" alt="getdrive"src="/getdrive/resources/images/kakao.jpg"></a> 
					<a href="http://www.naver.com"><img id="naver" alt="getdrive"src="/getdrive/resources/images/naver.png"></a>
				</div>
				<div>
					<button onclick="moveContractPage();" type="button" class="join_button">아직 계정이 없으신가요?</button></a>
				</div>
			</div>
		</fieldset>
	</div>
</body>
</html>