<%@page import="entry.*"%>
<%@ page language="java" import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'main.jsp' starting page</title>
    
	

  </head>
  <script type="text/javascript">
alert("请前往我的订单支付");
window.location.href="cart.jsp";
</script>
 
  <%
		int bookid=Integer.parseInt(request.getParameter("bookid"));
		int booknum = Integer.parseInt(request.getParameter("booknum"));
		String userid = (String)session.getAttribute("userid");
		mycart a=new mycart();
		a.deletemycart(userid, bookid, booknum);
		order c=new order();book b=new book();
		Users user=new Users();
		ResultSet rs=user.usersinfo(userid);
		int bookprice=b.getbookprice(bookid);
		int totalprice=bookprice*booknum;
		String username=rs.getString(2);
		String address=rs.getString(5);
		String tel=rs.getString(4);
		String status="未支付";
		c.setorderwithoutorderid(userid,username,totalprice,address,tel,status);
		
  %>
   <body>
 <br>
  </body>
</html>
