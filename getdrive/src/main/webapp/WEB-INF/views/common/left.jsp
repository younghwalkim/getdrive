<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 버튼 */
.button_red {
  background-color: #E96354;
  border: none;
  color: white;
  text-align: center;
  display: inline-block;
  font-size: 16px;
  transition: all 0.5s;
  cursor: pointer;
  padding: 10px 24px;
  border-radius: 8px; /* 테두리 둥글게 */
}	

.button_red:hover {
  background-color: #E43E2C; /* 색상을 어둡게 조절한 hover 효과 */
  color: white;
}
	
.button_blue {
  background-color: rgb(107, 185, 237);
  border: none;
  color: white;
  text-align: center;
  display: inline-block;
  font-size: 16px;
  transition: all 0.5s;
  cursor: pointer;
  padding: 10px 24px;
  border-radius: 8px; /* 테두리 둥글게 */
}	

.button_blue:hover {
  background-color: rgb(77, 155, 207); /* 색상을 어둡게 조절한 hover 효과 */
  color: white;
}

.button_gray {
  background-color: #E0E0E0;
  border: none;
  color: white;
  text-align: center;
  display: inline-block;
  font-size: 16px;
  transition: all 0.5s;
  cursor: pointer;
  padding: 10px 24px;
  border-radius: 8px; /* 테두리 둥글게 */
}	

.button_gray:hover {
  background-color: #B0B0B0; /* 색상을 어둡게 조절한 hover 효과 */
  color: white;
}	

.button_green {
  background-color: #2ECC71;
  border: none;
  color: white;
  text-align: center;
  display: inline-block;
  font-size: 16px;
  transition: all 0.5s;
  cursor: pointer;
  padding: 10px 24px;
  border-radius: 8px; /* 테두리 둥글게 */
}	

.button_green:hover {
  background-color: #239A56; /* 색상을 어둡게 조절한 hover 효과 */
  color: white;
}	

/* 우하단 버튼 */
.btn_gotop { 
display: block; 
position: fixed; 
bottom: 35px; 	/* 아래 간격*/ 
right: 35px; 		/* 오른쪽 간격*/ 
z-index: 999; 
border: 2px solid rgba(0,0,0,0.25); 
outline: none; 
background-color: white; 
color: rgba(0,0,0,0.7); 
cursor: pointer; 
padding: 20px 20px 20px 20px; 
border-radius: 100%;

/* 레이어 팝업 */
#popup_wrap {
	width:560px ; 
	height:270px ; 
	background:#000000;
	border: solid 1px #666666; 
	position:fixed; top:50%; left:50%; 
	margin:-250px 0 0 -250px; z-index:9999; 
	display:none;
}	

#mask {
	width:100%; height:100%; position:fixed; background:rgba(0,0,0,0.7) repeat; top:0; left:0; z-index:999; 
	display:none;
}
.popup-cont01 {
	width:478px; margin: 40px auto; text-align: center;
}
.popup-cont01 button { 
	width: 138px; height: 36px; line-height: 36px; background: #9f2f60; color: #ffffff; text-align: center; 
	border: none; font-size: 16px;
}	
 	
</style>
<script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.7.0.min.js"></script>
<script type="text/javascript">
$(function(){
	// 팀 목록
	$.ajax({
		url: "teamSelect.do",
		type: "post",
		dataType: "json",
		success: function(data){
			// 확인
			console.log("success : " + data);
			
			// object --> string
			var str = JSON.stringify(data);
			
			// string --> json
			var json = JSON.parse(str);
			
			// 확인
			console.log("json : " + str);
			
			var num = 1;
			
			values = "";			
			for(var i in json.list){
				
				if (json.list[i].no == '${ teamCode }' ) {
					values += "<option value='template.do?tno="+ json.list[i].no
					+"' selected>"
					+ decodeURIComponent(json.list[i].title).replace(/\+/gi, " ") 
					+ "</option>";					
				} else {
					values += "<option value='template.do?tno="+ json.list[i].no
					+"'>"
					+ decodeURIComponent(json.list[i].title).replace(/\+/gi, " ") 
					+ "</option>";					
				}
			}
			
			$('#teamSelect').html(values);
		}, 
		error: function(jqXHR, textStatus, errorThrown){
			console.log("error : " + jqXHR + ", " + textStatus + ", " + errorThrown);
		}
		
	});  //ajax
	
});  //document ready	

</script>


</head>
<body>
	<!-- 팀 목록  -->
	<div width=100% align=center>
		<select id="teamSelect" onchange="window.open(value,'_self');">
		</select>		
	</div>		
	<hr>
	<ul>
	    <li><a href="#" class="item">공지사항</a></li>
	    <li><a href="#" class="item">자료방</a></li>
	    <li><a href="#" class="item">카테고리 추가 + </a></li>       
	</ul>
	<hr>
	채팅
	<ul>
	    <li><a href="#" class="item">채팅방 생성 + </a></li>       
	</ul>
	<hr>
	드라이브
	<ul>
	    <li><a href="#" class="item">채팅방 생성 + </a></li>       
	</ul>	
111111
	
	
</body>
</html>