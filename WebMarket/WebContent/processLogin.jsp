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
	String aid = null;
	
	session.setAttribute("userid", id);
	
	response.sendRedirect("webmarket.jsp");

%>