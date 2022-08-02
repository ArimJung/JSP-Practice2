<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session</title>
</head>
<body>

<%
	session.setMaxInactiveInterval(3);

	if(session.isNew()){ // 세션이 새거니?
		out.println("<SCRIPT> alert('세션 재설정!') </SCRIPT>");
		session.setAttribute("id","admin"); // id에 admin 넣음
	}
%>

세션 유지시간 : <%= session.getMaxInactiveInterval() %>
<%= session.getAttribute("id")%>님, 반갑습니다!

</body>
</html>