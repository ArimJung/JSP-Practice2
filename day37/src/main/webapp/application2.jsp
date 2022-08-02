<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>application - 2</title>
</head>
<body>



<%
	int cnt=(Integer)application.getAttribute("cnt"); // 자바 변수에 저장
	cnt++; // 1 증가
	application.setAttribute("cnt",cnt); // 다시 app에 저장
%>

<%= application.getAttribute("id") %>님의 방문자 수: <%=cnt %>명


</body>
</html>