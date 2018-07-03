<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="entry.Order1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  <meta charset="UTF-8">
    <title>商品简介</title>
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
			height: 20px;
		
			}
  	#body{
  			clear:left;
  	   		word-spacing:50px;
  			 margin-top: 20px;}
  	#body a{text-decoration:none;
  			}
  	#body table{border-style: dotted;
				border-color: #B6B684;
				text-align: right;}
		
  	 #foot{
			width:100%;
			
			background-color:#efeedc;
			margin-top:15px;
			bottom:0; left:0;
			width:100%; height:80px;
		}
    </style>
     <script src="jquery-1.11.1.js"></script>
    <script>
        $(function () {
           
            $("#jall").click(function () {
              
                $("#jtd input:checkbox").prop("checked",$(this).prop("checked"));
            });

          
            $("#jtd input:checkbox").click(function () {
             
                if($("#jtd input:checkbox").length === $("#jtd input:checked").length){
             
                    $("#jall").prop("checked",true);
                }else{
                    $("#jall").prop("checked",false);
                }
            });


        });
    </script>
  </head>
  <body>
<div  id="head-left">
				<a href="index.jsp"><img src="img/zhku.png" style="height: 70px;"/></a>	
				<div id="ul">
					<img src="img/cart.gif">
					<ul>
					<li><a href="/bookstore/cart" name="cart">购物车</a></li>
					<li><a href="personal.jsp">个人中心</a></li>
				
					<li><a href="index.jsp" >返回首页</a></li>
					</ul>
				</div>
					<div id="brow">	
					<br>
					</div>	
		</div>
		<div id="body">
				<h4 align="center">订单详情</h4>
			
				<table align="center">
				
					<tr><th >待付款<input type="checkbox" id="jall"></th>
						<th width="" style="width: 100px; ">订单号</th>
						<th style="width: 100px; ">商品名</th>
						<th style="width: 100px; ">价格</th>
						<th style="width: 200px; ">收货地址</th></tr>
					<tbody id="jtd">
					<%  
						ArrayList<Order1> order = (ArrayList<Order1>)request.getAttribute("orderlist");
						System.out.println(order);
						System.out.println(order.get(1).getStatus());
						System.out.println(order.size());
						for(int i=0;i<order.size();i++){
							System.out.println(order.get(i).getStatus());
							if(order.get(i).getStatus().equals("待付款")){
					%>
					<tr><td><input type="checkbox"></td><td><%= order.get(i).getOrderid() %></td><td><%= order.get(i).getBookname() %></td><td><%= order.get(i).getTotalprice() %></td><td><%= order.get(i).getAddress() %></td>
						</tr>
					<%}} %>
					<tr><td colspan="5"><input type="button" value="支付" style="width: 60px; " align="left"></td></tr>
				</tbody>
				</table>
				<br>	<br>	<br>
				<table align="center">
					<tr><th rowspan="10">待发货</th>
					<th style="width: 100px; ">订单号</th>
					<th style="width: 100px; ">商品名</th>
					<th style="width: 100px; ">价格</th>
					<th style="width: 200px; ">收货地址</th></tr>
					<%
					for(int i=0;i<order.size();i++){
						System.out.println(order.get(i).getStatus());
						if(order.get(i).getStatus().equals("待发货")){
					%>
					<tr><td><input type="checkbox"></td><td><%= order.get(i).getOrderid() %></td><td><%= order.get(i).getBookname() %></td><td><%= order.get(i).getTotalprice() %></td><td><%= order.get(i).getAddress() %></td>
						</tr>
					<input type="button" value="提醒发货" style="width: 60px; "></td></tr>
					<%}} %>
				</table>
					<br>	<br>	<br>
				<table align="center">
					<tr><th rowspan="10">未收货</th>
					<th style="width: 100px; ">订单号</th>
					<th style="width: 100px; ">商品名</th>
					<th style="width: 100px; ">价格</th>
					<th style="width: 200px; ">收货地址</th></tr>
					<%
						for(int i=0;i<order.size();i++){
						System.out.println(order.get(i).getStatus());
						if(order.get(i).getStatus().equals("未收货")){
					%>
					<tr><td><input type="checkbox"></td><td><%= order.get(i).getOrderid() %></td><td><%= order.get(i).getBookname() %></td><td><%= order.get(i).getTotalprice() %></td><td><%= order.get(i).getAddress() %></td>
						</tr>
					<input type="button" value="去签收" style="width: 60px; "></td></tr>
					<%}} %>
				</table>
					<br>	<br>	<br>
				<table align="center">
					<tr><th rowspan="10">已签收</th>
					<th style="width: 100px; ">订单号</th>
					<th style="width: 100px; ">商品名</th>
					<th style="width: 100px; ">价格</th>
					<th style="width: 200px; ">收货地址</th></tr>
					<%
						for(int i=0;i<order.size();i++){
						System.out.println(order.get(i).getStatus());
						if(order.get(i).getStatus().equals("已签收")){
					%>
					<tr><td><input type="checkbox"></td><td><%= order.get(i).getOrderid() %></td><td><%= order.get(i).getBookname() %></td><td><%= order.get(i).getTotalprice() %></td><td><%= order.get(i).getAddress() %></td>
						</tr>
					<input type="button" value="去评价" style="width: 60px; "></td></tr>
					<%}} %>
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
