<%@page import="org.omg.PortableInterceptor.USER_EXCEPTION"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'zhuce.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <% 

  
  		String ID = request.getParameter("ID");
  		String username = request.getParameter("name");
		String password = request.getParameter("password");
		
		String telephone = request.getParameter("telephone");
		String address = request.getParameter("address");
  		Users a=new Users();
  		a.setusers(ID,username,password,telephone,address,0,0);
  
  
  
  
  %>
  <body>
    This is my JSP page. <br>
  </body>
</html>
