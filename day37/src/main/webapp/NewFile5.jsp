<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	for(int i=1;i<=10;i++){
		System.out.println("console: "+i); // 로그는 콘솔에
		out.println("브라우저: "+i+"<BR>"); // out은 화면출력 용 내장객체
%>
<%=i%>
<%
	}
%>

</body>
</html>