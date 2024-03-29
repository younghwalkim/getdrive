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
	
	border-collapse: collapse;
}

#logo {
	margin: 10px;
	width: 150px;
}

</style>

<body>

<table id="headerTable">
<tr><th width=230 align=left>
	<a href="/getdrive/"><img id="logo" alt="getdrive"src="/getdrive/resources/images/logo.png"></a></th>
	<th width=300 >	
		<form action="searchList.do" method="post">
			<input type="hidden" name="limit" value="10">	
			<input type="search" name="keyword" value="${ keyword }"> &nbsp;
			<input type="submit" value="검색">
		</form>
		</th>	
	<th align="right">
		로그인 :  ${ loginMember },  ${ emailMember }, ${ tno }
		<a href="#">알람</a>
		<a href="#">아이콘+이름</a>
		</th>
</tr>	
</table>

</body>

</html>
