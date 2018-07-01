<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="entry.Order1" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>订单管理</title>
	<style type="text/css">
	#body table{border-style: dotted;
				border-color: #B6B684;
				text-align: right;
				}
	</style>
	<script type="text/javascript">
		function send(orderid){
		window.location.href="/bookstore/send?orderid="+orderid;
		}
	</script>

  </head>
  
  <body>
   <div id="body" >
		<h4 align="center">订单管理</h4>
		<table align="center">
					<tr>
					<th style="width: 100px; ">订单号</th>
					<th style="width: 100px; ">商品名</th>
					<th style="width: 100px; ">价格</th>
					<th style="width: 200px; ">收货地址</th></tr>
					<%
						ArrayList<Order1> order = (ArrayList<Order1>)request.getAttribute("orderlist");
						System.out.print(order.size());
						for(int i=0;i<order.size();i++){
					%>
					<tr>
					<td><%=order.get(i).getOrderid() %></td>
					<td><%=order.get(i).getBookname() %></td>
					<td><%=order.get(i).getTotalprice() %></td>
					<td><%=order.get(i).getAddress() %></td>
					<%if(order.get(i).getStatus().equals("待发货")){ %>
					<td><input type="button" value="发货" style="width: 60px; "onClick="send('<%=order.get(i).getOrderid()%>')"></td>
					<%} %>
					</tr>
					<%} %>	
				</table>
   </div>
  </body>
</html>
