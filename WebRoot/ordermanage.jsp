<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
					<tr>
					<td>001</td>
					<td>思想政治</td>
					<td>20</td>
					<td>address</td>
					<td><input type="button" value="发货" style="width: 60px; "></td>
					</tr>	
				</table>
   </div>
  </body>
</html>
