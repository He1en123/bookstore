<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'up.jsp' starting page</title>
    
	
  </head>
  
  <body>
		<form name = "bookup" action = "">
				<table align="center" width="30%">
				<tr><td></td><td><h4 align="left">商品信息</h4></td></tr>
				<tr><th >书ID：</th><td><%=session.getAttribute("username")%></td></tr>
				<tr></tr><tr></tr>
				<tr><th >书名：</th><td><%=session.getAttribute("userid") %></td></tr>
				<tr></tr><tr></tr>
				<tr><th >价格：</th><td><%=session.getAttribute("password") %></td></tr>
				<tr></tr><tr></tr>
				<tr><th >类型:</th><td><%=session.getAttribute("address") %></td></tr>
				<tr></tr><tr></tr>
				<tr><th >状态：</th><td><%=session.getAttribute("telephone") %></td></tr>
				<tr></tr>
				<tr><td colspan="2" align="center"><input type="submit" value="上架" style="width: 70px;"align="left" style="width: 70px; "></td></tr>
			
				</table>
		</form>
  </body>
</html>
