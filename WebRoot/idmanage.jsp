<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>账户信息管理</title>
  <style type="text/css">
  #body{border-style: dotted;
  		text-align:right;
  	   	word-spacing:50px;
  		 margin-top: 20px;}
  
  </style>
  </head>
  <body>
     <div  >
     	<h4 align="center">账户信息管理</h4>
		<table align="center" id="body">
					<tr><th><input type="checkbox"></th>
					<th style="width: 100px;">账号</th>
					<th style="width: 100px;">姓名</th>
					<th style="width: 100px;">密码</th>
					<th style="width: 100px;">电话</th>
					<th style="width: 100px;">地址</th>
					<th style="width: 100px;">余额</th></tr>
					<tr>
					<td><input type="checkbox"></td>
					<td>1</td>
					<td>12</td>
					<td>12456</td>
					<td>1111</td>
					<td>address</td>
					<td>0</td>
					<td><input type="button" value="删除账户"><br><input type="button" value="修改信息"></td>
					</tr>	
				</table>
   </div>
  
  
  </body>
</html>
