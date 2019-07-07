<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@page import="com.gem.dao.HotelsDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>

<%
	HotelsDao hotelsDao = new HotelsDao();
	int hid =Integer.parseInt(request.getParameter("h_id"));
	hotelsDao.delete(hid);
	request.getRequestDispatcher("hotelsInfo.jsp").forward(request, response);
%>