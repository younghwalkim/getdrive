<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<style type="text/css">
	
	/* 레이어 창(모달) 스타일 */
	.modal {
	  display: none; /* 초기에는 보이지 않음 */
	  position: fixed; /* 페이지 스크롤에 영향받지 않음 */
	  z-index: 99; /* 다른 요소 위에 표시 */
	  right: 20px; /* 오른쪽 가장자리로부터 20px 떨어진 위치 */
	  bottom: 20px; /* 하단 가장자리로부터 20px 떨어진 위치 */
	  width: 30%; /* 전체 너비 */
	  height: 100%; /* 전체 높이 */
	  overflow: auto; /* 내용이 넘칠 경우 스크롤바 표시 */
	  background-color: rgb(0,0,0); /* 배경색 */
	  background-color: rgba(0,0,0,0.4); /* 약간의 투명도 */
	}
	
	/* 모달 내용 스타일 */
	.modal-content {
	  background-color: #fefefe;
	  margin: 15% auto; /* 페이지 중앙에 위치 */
	  padding: 20px;
	  border: 1px solid #888;
	  width: 80%; /* 너비 */
	}
	
	/* 닫기 버튼 스타일 */
	.close {
	  color: #aaa;
	  float: right;
	  font-size: 28px;
	  font-weight: bold;
	}
	
	.close:hover,
	.close:focus {
	  color: black;
	  text-decoration: none;
	  cursor: pointer;
	}
	  
	#myChatBtn {
	    position: fixed; /* 페이지 스크롤에 영향받지 않음 */
	    right: 20px; /* 오른쪽 가장자리로부터 20px 떨어진 위치 */
	    bottom: 20px; /* 하단 가장자리로부터 20px 떨어진 위치 */
	}

</style>

</head>
<body>


<!-- 클릭할 버튼 -->
<button id="myChatBtn">챗봇열기</button>

<!-- 모달 -->
<div id="myModal" class="modal">

  <!-- 모달 내용 -->
  <div class="modal-content">
    <span class="close">&times;</span>
    <p>챗봇API 호출</p>
  </div>

</div>

<script>
// 모달 변수
var modal = document.getElementById("myModal");

// 버튼 변수
var btn = document.getElementById("myChatBtn");

// 닫기 버튼 변수
var span = document.getElementsByClassName("close")[0];

// 버튼 클릭 시 모달 열기
btn.onclick = function() {
  modal.style.display = "block";
}

// 닫기 버튼 클릭 시 모달 닫기
span.onclick = function() {
  modal.style.display = "none";
}

// 모달 바깥 영역 클릭 시 모달 닫기
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
</script>


</body>
</html>