<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.js"></script>
	<script type="text/javascript">
		$(function() {
			$(".chkAll").click(function() {
				if($(".chkAll").is(":checked")) $("input[name=chk]").prop("checked", true);
				else $("input[name=chk]").prop("checked", false);
			});
			
			$("input[name=chk]").click(function() {
				var total = $("input[name=chk]").length;
				var checked = $("input[name=chk]:checked").length;
				
				if(total != checked) $(".chkAll").prop("checked", false);
				else $(".chkAll").prop("checked", true); 
			});
		});
	</script> <!-- 체크박스 전체 체크, 전체 해제  -->
	<script type="text/javascript">
	$(function(){
	    $(".chkAll").change(function(){
	        var isChecked = this.checked;
	        if(isChecked){
	            $("#nextbutton").prop("disabled", false).css({'color': 'white', 'background': 'rgb(107, 185, 237)' });
	    	}else {
	            $("#nextbutton").prop("disabled", true).css({'color': '#696969', 'background': '#DCDCDC', 'border': 'none'});
	        }
	    });
	});
	$(function(){
	    $(".chk").change(function(){
	        var allChecked = true;
	        $(".chk").each(function() {
	            if (!this.checked) {
	                allChecked = false;
	                return false;
	            }
	        });

	        if (allChecked) {
	            $("#nextbutton").prop("disabled", false).css({'color': 'white', 'background': 'rgb(107, 185, 237)' });
	        } else {
	            $("#nextbutton").prop("disabled", true).css({'color': '#696969', 'background': '#DCDCDC', 'border': 'none'});
	        }
	    });
	});
	</script>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: 500px;
}
#header {
	width: 100%;
	height: 20%;
}

body {
	background-color: #ffffff;
}

ul>li {
	list-style: none
}

a {
	text-decoration: none;
}

.clearfix::after {
	content: "";
	display: block;
	clear: both;
}

#joinForm {
	width: 460px;
	margin: 50px auto;
}

ul.join_box {
	border: 1px solid #ddd;
	background-color: #fff;
	padding-left: 10px;
	
}

.checkBox, .checkBox>ul {
	position: relative;
}

.checkBox>ul>li {
	float: left;
}

.checkBox>ul>li:first-child {
	width: 90%;
	padding: 15px;
	font-weight: 600;
	color: #888;
}

.checkBox>ul>li:nth-child(2) {
	position: absolute;
	top: 50%;
	right: 30px;
	margin-top: -12px;
}

.checkBox textarea {
	width: 92%;
	height: 130px;
	margin: 0 2%;
	background-color: #f7f7f7;
	color: #888;
	border: none;
	padding: 10px 0 0 10px; 
	outline: none;
	resize: none;
	
}


.footBtwrap {
	margin-top: 15px;
}

.footBtwrap>li {
	float: left;
	width: 50%;
	height: 60px;
}

.footBtwrap>li>button {
	background: #6DBFF2;
	border-radius: 5px;
	color: white;
	cursor: pointer;
	padding-bottom:4px;
	border: none;
	width: 460px;
	height: 40px;
	text-align: center;
	font-weight: 600;
	font-size: 12pt;
}

.footBtwrap>li>button:active {
	color: white;
	background: rgb(200, 230, 255);
}

.footBtwrap>li>button:disabled {
	color: #696969;
	background: #DCDCDC;
	border: none;
	cursor: default;
}

.checkAllBtn input.chkAll{
    font-size: 1em;
    width: 1.25em; 
    height: 1.25em; 
    vertical-align: middle;
    accent-color: rgb(0, 146, 255);
}
.checkAllBtn input.chkAll + label{
    font-size: 1.125em;
    vertical-align: middle;
    accent-color: rgb(0, 146, 255);
}

.checkBtn input.chk{
    font-size: 1em;
    width: 1.25em; 
    height: 1.25em;
    vertical-align: middle;
    background-color: red;
    accent-color: rgb(0, 146, 255);
}
.checkBtn input.chk + label{ 
    font-size: 1.125em;
    vertical-align: middle;
    accent-color: rgb(0, 146, 255);
}

</style>
</head>
<body>
	<form action="contract.do" id="joinForm">
		<div id="header">
			<c:import url="/WEB-INF/views/common/mainTopbar.jsp"></c:import>
		</div>
		<div id="main">
		<ul class="join_box">
			<li class="checkBox">
				<ul class="clearfix">
					<li>이용약관, 개인정보 수집 및 이용에 모두 동의합니다.
					</li>
					<li class="checkAllBtn">
						<input type="checkbox" name="chkAll" id="chk" class="chkAll" >
						<label for="chk"></label>
					</li>
				</ul>
			</li>
			<li class="checkBox">
				<ul class="clearfix">
					<li>이용약관 동의(필수)</li>
					<li class="checkBtn">
						<input type="checkbox" name="chk" id="chk1" class="chk">
						<label for="chk"></label>
					</li>
				</ul>
					<textarea>제 1 조 (목적)
본 약관은 ‘회사’에서 제공하는 Class.getdrive 서비스를 이용하는 데 필요한 권리, 의무 및 책임사항, 이용조건 및 절차 등 기본적인 사항들을 규정하고 있습니다.

제 2 조 (약관의 효력 및 변경)
본 약관의 내용은 Class.getdrive 웹사이트에 게시하거나 기타의 방법으로 공지하고, 본 약관에 동의한 회원 모두에게 그 효력이 발생합니다.
회사는 필요한 경우 관련 법령을 위배하지 않는 범위 내에서 본 약관을 변경할 수 있습니다. 약관이 변경되는 경우 회사는 변경사항을 시행일자 7일 전부터 회원에게 Class.getdrive 웹사이트를 통해 공지하는 것을 원칙으로 하며, 피치 못하게 회원에게 불리한 내용으로 변경할 경우에는 개별적으로 통지하거나 시행일자 30일 전부터 공지하겠습니다.
회사가 전항에 따라 공지 또는 통지를 하면서 공지 또는 통지일로부터 개정약관 시행일 7일 후까지 거부의사를 표시하지 아니하면 승인한 것으로 본다는 뜻을 명확하게 고지하였음에도 회원의 의사표시가 없는 경우에는 변경된 약관을 승인한 것으로 봅니다. 회원이 개정약관에 동의하지 않을 경우 회원은 이용계약을 해지할 수 있습니다.
제 3 조 (약관 외 준칙)
본 약관에 규정되지 않은 사항에 대해서는 관련 법령 또는 운영정책, 규칙, 도움말, 홈페이지의 공지 또는 통지(이하 ‘세부지침’) 및 회원과 회사 간 체결한 별도의 서면 계약(이하 ‘서면 계약’) 내용에 따릅니다. 별도의 서면 계약을 체결한 회원에 대해서도 본 약관 및 세부지침이 적용됩니다.
본 약관과 세부지침 또는 서면 계약의 내용이 상충될 경우 서면 계약, 세부지침, 본 약관의 순서로 우선하여 적용됩니다.
세부지침도 서비스 이용 계약의 일부를 구성합니다.
제 4 조 (용어의 정의)
본 약관에서 사용하는 용어의 정의는 다음과 같습니다.

</textarea>
			</li>
			<li class="checkBox">
				<ul class="clearfix">
					<li>개인정보 수집 및 이용에 대한 안내(필수)</li>
					<li class="checkBtn">
						<input type="checkbox" name="chk" id="chk2" class="chk">
						<label for="chk"></label>
					</li>
				</ul>
					<textarea>개인정보의 수집 및 이용 내역
Class.getdrive 서비스는 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적 이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.

① Class.getdrive서비스는 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집시에 동의 받은 개인정보 보유, 이용기간 내에서 개인정보를 처리, 보유합니다.
② 토스랩은 Class.getdrive 서비스 회원가입, 회원 식별, Class.getdrive 서비스 이용 등을 위해 아래와 같이 개인정보를 수집ᆞ이용합니다.
수집 목적	수집 항목	수집 근거	보유 기간
회원 식별 및 Class.getdrive서비스 이용	(필수) 이메일, 비밀번호, 이름
(선택) 프로필 사진, 부서, 직책, 생년월일	정보주체의 동의	회원탈퇴 시 까지
③ 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체 없이 파기합니다. 단, 법령에서 일정기간 의무를 부과하는 경우에는 해당 기간 동안 보관할 수 있습니다.
④ Class.getdrive 서비스를 이용할 때 자동적으로 여러분이 사용하는 장치의 유형, 운영체제 버전, 장치 고유 식별번호를 수집합니다. 그 외에도 Class.getdrive서비스를 이용하는데 필요한 다른 정보를 수집할 수 있으나 회원의 Class.getdrive 서비스를 이용하는 목적 용도로만 이용되며 그 외의 목적으로는 이용되지 않습니다.
동의를 거부할 권리 및 동의 거부에 따른 안내
귀하께서는 본 안내에 따른 개인정보 수집에 대하여 거부를 하실 수 있는 권리가 있습니다. 본 개인정보 수집에 대하여 거부하시는 경우, 본인확인 등 신원확인이 되지 않음에 따라 Class.getdrive 서비스를 사용 하실 수 없습니다.</textarea>
			</li>
			<li class="checkBox">
				<ul class="clearfix">
					<li>만 14세 이상입니다.(필수)</li>
					<li class="checkBtn">
						<input type="checkbox" name="chk" id="chk3" class="chk">
						<label for="chk"></label>
					</li>
				</ul>
					<textarea>만 14세 이상 고객만 가입 가능합니다
정보통신망 이용촉진 및 정보보호 등에 관한 법률에는 만 14세 미만 아동의 개인정보 수집 시 법정 대리인 동의를 받도록 규정하고 있습니다.
만 14세 미만 아동이 법정대리인 동의 없이 회원가입을 하는 경우 회원탈퇴 또는 서비스 이용이 제한될 수 있습니다.</textarea>
			</li>
			<li><br></li>
		</ul>
		</div>
		<ul class="footBtwrap">
			<li><button id="nextbutton" disabled="true">다음</button></li>
		</ul>
	</form>
</body>
</html>