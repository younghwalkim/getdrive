<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

<script type="text/javascript" src="/getdrive/resources/js/jquery-3.7.1.min.js"></script>

</head>
<body>
	<div width=100% align=center>
		<select>
			<option>팀 프로젝트 1</option>
			<option>팀 프로젝트 2</option>
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

<hr style="clear:both;">

<style>
	.wrapper {
	  width: 180px;
	  background: #fff;
	  border-radius: 10px;
	  padding: 5px;
	}
	.wrapper .nav {
	  display: flex;
	  align-items: center;
	  justify-content: space-between;
	  margin-bottom: 10px;
	}
	.wrapper .nav .current-date {
	  font-size: 24px;
	  font-weight: 600;
	}
	.wrapper .nav button {
	  width: 38px;
	  height: 38px;
	  font-size: 30px;
	  color: #878787;
	}	
	
	/*#7*/
	.calendar ul {
	  display: flex;
	  list-style: none;
	  flex-wrap: wrap;
	  text-align: center;
	}
	.calendar .weeks li {
	  font-weight: 500;
	}
	.calendar .days {
	  margin-bottom: 10px;
	}
	.calendar ul li {
	  /*#8*/	  
	  width: calc(100% / 7);
	 
	  /*#9*/
	  position: relative;
	}
	.calendar .days li {
	  /*#10*/
	  z-index: 1;
	  margin-top: 30px;
	  cursor: pointer;
	}
	 
	/*#11*/
	.days li.inactive {
	  color: #aaa;
	}
	
	.days li.active {
	  color: #fff;
	}
	
	.calendar .days li::before {
	  position: absolute;
	  content: '';
	  height: 40px;
	  width: 40px;
	  top: 50%;
	  left: 50%;
	  transform: translate(-50%, -50%);
	  border-radius: 50%;
	  z-index: -1;
	}
	.days li:hover::before {
	  background: #f2f2f2;
	}
	.days li.active::before {
	  background: #008aff;
	}
</style>

<input type="date" />

<div class="wrapper">
  <header>
    <div class="nav">
      <button class="material-icons"><<</button>
      <p class="current-date">2024.02</p>
      <button class="material-icons">>></button></span>
    </div>
  </header>
  
  <div class="calendar">
    <ul class="weeks">
      <li>일</li>
      <li>월</li>
      <li>화</li>
      <li>수</li>
      <li>목</li>
      <li>금</li>
      <li>토</li>
    </ul>
    <ul class="days">
      <li class="inactive">27</li>
      <li class="inactive">28</li>
      <li class="inactive">29</li>
      <li class="inactive">30</li>
      <li>1</li>
      <li>2</li>
      <li>3</li>
      <li>4</li>
      <li>5</li>
      <li>6</li>
      <li>7</li>
      <li>8</li>
      <li>9</li>
      <li>10</li>
      <li>11</li>
      <li>12</li>
      <li>13</li>
      <li>14</li>
      <li>15</li>
      <li>16</li>
      <li>17</li>
      <li>18</li>
      <li>19</li>
      <li>20</li>
      <li>21</li>
      <li>22</li>
      <li>23</li>
      <li>24</li>
      <li>25</li>
      <li>26</li>
      <li>27</li>
      <li>28</li>
      <li>29</li>
      <li>30</li>
      <li>31</li>
    </ul>
  </div>  
</div>

	
	
</body>
</html>