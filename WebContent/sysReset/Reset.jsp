<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="myDbBean" scope="page" class="org.etspace.abc.jdbc.DbBean"></jsp:useBean>
<%request.setCharacterEncoding("utf-8"); %>
<script type="text/javascript">
function check(theForm) {
	if (theForm.username.value=="") {
		alert("请输入用户名！");
		theForm.username.focus();
		return (false);
	}
	if (theForm.password.value=="") {
		alert("请输入密码！");
		theForm.password.focus();
		return (false);
	}
	return (true);
}
</script>
<html>
<head>
<meta charset="UTF-8">
<title></title>

</head>
<body>
	<%
		String username = request.getParameter("username");
		String school = request.getParameter("school");
	%>
	
	<div align="center">
		<h1> 重置密码  </h1>
		<form id="form1" name="form1" method="post" action="ResetCheck.jsp"onSubmit="return check(this)">
			<table border="1">
			<tr><td>用户名</td><td><input name="username" type="text" id="username" readonly value=<%=username%>></td></tr>
			<tr><td>学校</td><td><input name="school" type="text" id="school" readonly value=<%=school%>></td></tr>
			<tr><td>密码</td><td><input name="password" type="password" id="password"/></td></tr>
			<tr><td>性别</td><td> 
				<input type="radio" name="sex" value="男" checked="checked" />男
				<input type="radio" name="sex" value="女"/> 女 </td></tr> 	
			</table>
			<input name="submit" type="submit" value="确定"/>
			<input name="reset"	type="reset" value="重置"/>
		</form>
		<a href="../index.jsp"> [返回] </a>
	</div>
</body>
</html>