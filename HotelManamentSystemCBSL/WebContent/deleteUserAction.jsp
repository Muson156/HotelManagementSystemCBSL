<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@page import="com.gem.dao.UserDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>


<%
	UserDao userDao = new UserDao();
	int uid = Integer.parseInt(request.getParameter("u_id"));
	userDao.deleteUser(uid);
	request.getRequestDispatcher("user.jsp").forward(request, response);
%>