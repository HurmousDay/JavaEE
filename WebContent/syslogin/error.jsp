<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录失败</title>
</head>
<body>
	<%
		session.setAttribute("flag", "1");
		response.sendRedirect("login.jsp");
	%>
</body>
</html>