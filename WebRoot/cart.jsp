<%@ page language="java" import="java.sql.*" import ="entry.*"  pageEncoding="utf-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="entry.Cart1" %>
<!DOCTYPE html>
<html>
  <head>
  <meta charset="UTF-8">
    <title>ååç®ä»</title>
    <style>
   #head-left{width: 100%;}
	#ul{
		float:right;
		position: relative;}
    #head-left ul{
    			list-style: none;
    			float:right;}
    #ul img{position: absolute;
    		top: 12px;left:10px;}
    #head-left li{float:left;
    			height: 80px;
    			margin-right:20px;
    			text-align: center;}
    #head-left a:link {
				text-decoration: none;
				color:#000000;}
	#head-left a:visited {
				text-decoration: none;
				color:#000000;}
	#head-left a:hover {
				text-decoration: none;
				color:#BDB98C;}
	#head-left a:active {
				text-decoration: none;
				color:#000000;}
	#head-left{display:inline;
			   word-spacing:5px;
			   float:right;
			   color:#000000;
			   text-decoration:none;}  
	#brow{background-color: #B6B684;
			height: 20px;}
	#body table{	border-color: #B6B684;
		border-style: dotted;
	}

  	#body{
  			clear:left;
  	   		word-spacing:50px;
  			 margin-top: 20px;}
  	#body a{text-decoration:none;}
  	
  	 #foot{
			width:100%;
			position:fixed; 
			background-color:#efeedc;
			margin-top:15px;
			bottom:0; left:0;
			width:100%; height:80px;
		}
    </style>
  </head>
  <body>
<div  id="head-left">
				<a href="index.jsp"><img src="img/zhku.png" style="height: 70px;"/></a>	
				<div id="ul">
					<img src="img/personal.gif" style="height: 20px; width: 20px; ">
					<ul>
					<li><a href="personal.jsp" name="cart">个人中心</a></li>
					<li><a href="order.html">我的订单</a></li>
					
					<li><a href="index.jsp" >返回主页</a></li>
					</ul>
				</div>
					<div id="brow">	
					<br>
					</div>	
		</div>
		<div id="body">
				<%
				
				
				
				
				 %>
				<table align="center" width="40%">
					<tr><td colspan="4" align="center" ><h4 >购物车</h4></td></tr>
					<tr><td width="20%"><h5>编号</h5></td>
						<td width="20%"><h5>书名</h5></td>
						<td width="20%"><h5>单价</h5></td>
						<td width="50%"><h5>数量</h5></td>
					<tr>
					<% 
						ArrayList<Cart1> cart = (ArrayList<Cart1>)request.getAttribute("cart");
						for(int i=0;i<cart.size();i++){
						
					%>
					<tr><td width="20%"><%= cart.get(i).getBookid() %></td>
					<form action="addtoorder.jsp">
						<td width="20%"><%= cart.get(i).getBookname() %></td>
						<td width="20%"><%= cart.get(i).getPrice() %></td>
						<td width="50%"><%= cart.get(i).getBooknum() %></td>
						<input type="hidden" name="bookid" value="<%= cart.get(i).getBookid() %>">
						<input type="hidden" name="bookname" value="<%= cart.get(i).getBookname() %>">
						<input type="hidden" name="booknum" value="<%= cart.get(i).getBooknum() %>">
					<%} %>
						<td><input type="submit" value="购买"></td>
					</tr></form>
					
					<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
				
				</table>
		</div>
		<div>
				
		</div>
	
		<div id="foot">
			<table bgcolor="#efeedc" width="100%" align="center">
			<tr>
				<td rowspan="2" style="width:10%">
			<img src="img/zhku.png" width="195" height="50" style="margin-left:100px;">
				</td>
				<td style="padding-left:50px;padding-top:5px;">
					<a><font color="#747556">&copy;ZHKUBookStore </font></a>
				</td>
			</tr>
			<tr>
				<td style="padding-left:50px;">
				<font color="#747556">
		JOIN US PLEASE CALL 0000-1234567
				</font>
				</td>
			</tr>
		</table>
		</div>	
		
		</div>

  </body>
</html>
