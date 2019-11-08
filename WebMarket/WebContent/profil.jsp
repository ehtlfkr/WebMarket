<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.user"%>
<%@ page import="dao.userlist"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<h1>프로필</h1> <br>
	
	<%
		String id = request.getParameter("id");
		userlist dao = userlist.getInstance();
		user user = dao.getUserById(id);
	%>
	<div>
		<h1>이름 : <%= user.getName() %></h1> <br>
		<p>아이디 : <%= user.getId() %></p> <br>
		<p>비밀번호 : <%= user.getPassword() %></p> <br>
		
	</div>
	
	<a href="webmarket.jsp"> 홈 </a>
	

</body>
</html>