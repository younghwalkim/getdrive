<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>

<%
	int action = 0; //up(1) down(0)
	int year = 0;
	int month = 0;  // 0 ~ 11
  
   // 년도, 월 중 하나라도 지정(넘겨져 오지)되지 않으면 오늘날짜 기준으로 월달력 출력
   if(request.getParameter("year") == null || request.getParameter("month") == null) {
      Calendar today = Calendar.getInstance();
      year = today.get(Calendar.YEAR);
      month = today.get(Calendar.MONTH);
   } else {
      // 출력하고자 하는 달력의 년도와 월
      year = Integer.parseInt(request.getParameter("year")); // 2022,..
      month = Integer.parseInt(request.getParameter("month")); // 0 ~ 11
      
      // 이전달 클릭 year, month-1 / 다음달 클릭 year, month+1
      // -1 -> 11,year--  12 -> 0,year++
      if(month == -1) {
         month = 11;
         year = year-1;
      }
      if(month == 12) {
         month = 0;
         year = year+1;
      }
   }
   
   // 출력하고자 달의 1일 객체 + 1일 요일 + 마지막 날짜
   Calendar firstDate = Calendar.getInstance();
   firstDate.set(Calendar.YEAR, year);
   firstDate.set(Calendar.MONTH, month);
   firstDate.set(Calendar.DATE, 1);
  
   int firstDay = firstDate.get(Calendar.DAY_OF_WEEK); // 1일의 요일 정보(1일,2월,....,7토)
   int lastDate = firstDate.getActualMaximum(Calendar.DATE);
   
   // 출력 알고리즘(td의 개수 구하기)
   int startBlankCnt = firstDay - 1;
   int endBlankCnt = 0;
   if((startBlankCnt+lastDate)%7 != 0) {
      endBlankCnt = 7 - (startBlankCnt+lastDate) % 7;
   }
   
   int tdCnt = startBlankCnt + lastDate + endBlankCnt;
   
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>달력</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="${ pageContext.servletContext.contextPath }/resources/js/jquery-3.7.0.min.js"></script>
<style>
    html, body{ 
       height:100%;
       margin:0px;
    }
    td{
       width:100px;
       height:100px;
    }
    th{
       height:30px;
       font-weight: normal;
    }
</style>
      
<script type="text/javascript">
$(function(){
	$('#test4').on('click', function(){
		$.ajax({
			url: 'test4.do',
			type: 'post', //json 을 받을때는 post 로 지정함
			data: { keyword: $('#keyword').val() },
			dataType: "json",  //받는 값의 종류 지정 (기본 : "text")
			success: function(dataObj){
				//json 배열을 담은 객체를 리턴받은 경우임
				console.log('dataObj : ' + dataObj);  //[object, Object]
				
				//object => string
				var objStr = JSON.stringify(dataObj);
				
				//string => parsing : json object
				var jsonObj = JSON.parse(objStr);
				
				var output = $('#tblist').html();
				
				//json 객체 안의 list 를 하나씩 꺼내서 새로운 행으로 추가 처리
				for(var i in jsonObj.list){
					output += "<tr><td>" + jsonObj.list[i].noticeno
							+ "</td><td>" + decodeURIComponent(jsonObj.list[i].noticetitle).replace(/\+/gi, ' ')
							+ "</td><td>" + jsonObj.list[i].noticewriter
							+ "</td><td>" + jsonObj.list[i].noticedate
							+ "</td></tr>";
				}
				
				//테이블에 기록 처리
				$('#tblist').html(output);
			},
			error: function(request, status, errorData){
				console.log("error code : " + request.status
						+ "\nMessage : " + request.responseText
						+ "\nError : " + errorData);
			}
		});
	});  //on
});  //document.ready
</script>
         
   </head>
   
   <body> 

   <!-- 리스트 -->  
   <TABLE>
   <c:forEach var="calendar" items="${ calendar}">
    <tr>
        <td>${c.calendarNo}</td>
        <td>${c.calendarTitle}</td>
        <td>${c.calendarStart}</td>
    </tr>
	</c:forEach>
   	</TABLE>
   
   <!-- 날짜 검색 -->
   <form id="enrollform" class="sform" action="calendar.do" method="post">
   <input type="hidden" name="action" value="enrolldate">
   <fieldset>
      <legend>검색할 날짜를 선택</legend>
      <input type="date" name="begin"> ~ <input type="date" name="end"> &nbsp;
      <input type="submit" value="검색">
   </fieldset>
   </form>
      
      <!-- 달력 -->
      <div class="container mt-3">
         
         <div class="mt-3 mb-3 p-3 d-flex justify-content-between">
            <span >
            <a class="btn btn-outline-dark btn-sm" href="calendar.do?year=<%=year%>&month=<%=month-1%>';">[이전달]</a>
            </span>
            <span class="fw-bold fs-3"><%=year%>년 <%=month+1%>월</span>
            <span>
               <a class="btn btn-outline-dark btn-sm" href="calendar.do?year=<%=year%>&month=<%=month+1%>">
                  [다음달]
               </a>
            </span>
         </div>
         
         <div>



            <table class="table text-left table-bordered">
               <tr class="table-light text-center fs-5 tr-h">
                  <th class="text-danger">일</th>
                  <th>월</th>
                  <th>화</th>
                  <th>수</th>
                  <th>목</th>
                  <th>금</th>
                  <th class="text-primary">토</th>
               </tr>
               <tr>
                  <%
                     for(int i=1; i<=tdCnt; i++) {
                  %>
                        <td>
                           <%
                              if(i>startBlankCnt && i<=startBlankCnt+lastDate) {
                                 if(i%7 == 0) {
                           %>
                           		<div id="p<%=year%><%=month+1%><%=i-startBlankCnt%>" style="border:1px solid red;">
                                    <span class="text-primary"><%=i-startBlankCnt%></span>
                                    
                                    <ul><li><%=year%><%=month+1%><%=i-startBlankCnt%> 호출</li></ul>
                           		</div>         
                           <%         
                                 } else if(i%7 == 1) {
                           %>
                           		<div id="p<%=year%><%=month+1%><%=i-startBlankCnt%>" style="border:1px solid red;">
                                    <span class="text-danger"><%=i-startBlankCnt%></span>
                                    
                                    <ul><li><%=year%><%=month+1%><%=i-startBlankCnt%> 호출</li></ul>
                                 </div>    
                           <%                                                
                                 }else {
                           %>
                                 <div id="p<%=year%><%=month+1%><%=i-startBlankCnt%>" style="border:1px solid red;">
                                    <%=i-startBlankCnt%>
                                    
                                    <ul><li><%=year%><%=month+1%><%=i-startBlankCnt%> 호출</li></ul>
                                 </div>   
                           <%         
                                 }   
                              } else {
                           %>
                                 &nbsp;
                           <%
                              }
                           %>      
                        </td>
                  <%   
                        if(i!=tdCnt && i%7 == 0) {
                  %>
                           </tr><tr>
                  <%         
                        }
                     }
                  %>
               </tr>
            </table>
         </div>
      </div>
   </body>
</html>