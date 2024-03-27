<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="KO">
<head>
<meta charset="UTF-8">
<title>main</title>

<style type="text/css">

body {
  margin: 0;
  padding: 0;
}


#container {
  width: 1100px;
  margin: 0px auto;
  padding: 20px;
  border: 1px solid #bcbcbc;
}

#header {
  padding: 20px;
  margin-bottom: 20px;
  border: 1px solid #bcbcbc;
}

#sidebar {
  width: 200px;
  padding: 20px;
  margin-bottom: 20px;
  float: left;
  border: 1px solid #bcbcbc;
}

#content {
  width: 800px;
  padding: 20px;
  margin-bottom: 20px;
  float: right;
  border: 1px solid #bcbcbc;
}

#footer {
  clear: both;
  padding: 20px;
  border: 1px solid #bcbcbc;
}

#headerTable {
	width : 100% ;
	height : 50px;
	border : 10 px ;
	background : white ;
	border: 1px solid gray; /* 테두리 선을 1px 회색으로 설정 */
	border-collapse: collapse;
}

</style>

<body>

<table id="headerTable">
<tr><th width=100><a href="#"><img src="" alt="로고이미지"></a></th>
	<th width=300 >
		<form>
		<input type="text">
		<input type="submit" value="검색">
		</form></th>	
	<th align="right">
		<a href="#">알람</a>
		<a href="#">아이콘+이름</a>
		</th>
</tr>	
</table>

</body>

</html>
