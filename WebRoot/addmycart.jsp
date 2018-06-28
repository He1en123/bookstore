<%@page import="entry.mycart"%>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'main.jsp' starting page</title>
    
	

  </head>
  <script type="text/javascript">
alert("加入购物车成功准备返回主页面");
window.location.href="index.jsp";
</script>
 
  <%
		int bookid=Integer.parseInt(request.getParameter("bookid"));
		int booknum = Integer.parseInt(request.getParameter("booknumber"));
		String userid = (String)session.getAttribute("userid");
		mycart a=new mycart();
		a.addmycart(userid, bookid, booknum);
		
  %>
   <body>
 <br>
  </body>
</html>
