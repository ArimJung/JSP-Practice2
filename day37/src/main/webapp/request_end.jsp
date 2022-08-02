<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<% request.setCharacterEncoding("utf-8"); %><!-- request 객체의 인코딩을 최상단에서 진행 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
요청메서드: <%=request.getMethod() %> 
	<table border="1">
		<tr>
			<td>이름</td>
			<td><%=request.getParameter("uname") %></td>
		</tr>
		<tr>
			<td>직업</td>
			<td><%=request.getParameter("job") %></td>
		</tr>
		<tr>
			<td>관심컨텐츠</td>
			<td>
				<%
					String[] fav = request.getParameterValues("fav"); // 요청 매개변수명과 자바 변수명을 맞춰서 작성
					for(int i=0;i<fav.length;i++){
						out.println(fav[i]+"<BR>");
					}
					for(String str:fav){
						out.println(str+"<BR>");
					}
				%>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right"></td>
			<td><input type="submit" value="가입하기"></td>
		</tr>

	</table>

</body>
</html>