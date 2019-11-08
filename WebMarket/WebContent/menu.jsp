<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.user"%>
<%@ page import="dao.userlist"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<%
	String userid = (String) session.getAttribute("userid");
%>

</head>
<body>
	<a href="products.jsp">상품목록</a>
	<a href="addProduct.jsp">상품추가</a>
	<a href="newuser.jsp">회원가입</a>
	
	<%
		if(userid == null){
	%>
	<a href="login.jsp">로그인</a>
	<%
		}else{
			
			userlist dao = userlist.getInstance();
			user user = dao.getUserById(userid);
	%>
	<p><%= user.getName() %> 님</p>
	<a href="profil.jsp?id=<%= userid%>">프로필</a>
	<a href="logout.jsp">로그아웃</a>
	<%
		}
	%>

</body>
</html>