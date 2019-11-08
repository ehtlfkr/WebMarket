<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%@ page import="dto.user"%>
<%@ page import="dao.userlist"%>

<%
	request.setCharacterEncoding("utf-8");
	
	
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	userlist dao = userlist.getInstance();
	ArrayList<user> list = dao.getAlluser();
	
	for(int i=0; i < list.size(); i++ ){
		user user = list.get(i);
		if(user.getId() == id && user.getPassword() == password){
			session.setAttribute("userid", id);		
			break;
		}
		
	}
	
	
	response.sendRedirect("webmarket.jsp");

%>