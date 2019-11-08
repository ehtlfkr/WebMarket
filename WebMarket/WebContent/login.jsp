<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="dto.user"%>
<%@ page import="dao.userlist"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<style type="text/css">
	body {
	background: #eee;
}
</style>
<body>
	
	<h1>로그인</h1> <br>
	
	
	<form name="login" action="processLogin.jsp" method="post">
		<p>아이디</p><br>
		<input type="text" name="id" id="id"><br>
		<p>비밀번호</p><br>
		<input type="password" name="password" id="password"><br>
		<input type="submit" value="로그인">
	</form>
	

</body>
</html>