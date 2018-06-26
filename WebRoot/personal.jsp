<%@ page language="java" import="java.sql.*" import ="entry.*"  pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
  <head>
  <meta charset="UTF-8">
    <title>个人信息</title>
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
	#body table{border-style: dotted;
				border-color: #B6B684;}
  	#body a{text-decoration:none;
  			}
  	#body th{width:30%;
  			text-align: center;
  	}
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
					<img src="img/cart.gif">
					<ul>
					<li><a href="cart.jsp" name="cart">购物车</a></li>
					<li><a href="order.html">我的订单</a></li>
					
					<li><a href="index.jsp" >返回首页</a></li>
					</ul>
				</div>
					<div id="brow">	
					<br>
					</div>	
</div>

<div id="body">
				<%String personnaluserid=(String)session.getAttribute("userid");
				out.println("你好，"+session.getAttribute("userid"));
				 %>
				<form name = "f1" action = "personalchange.jsp">
				<table align="center" width="30%">
				<tr><td></td><td><h4 align="left">个人信息</h4></td><td>
					<input type="submit" value="修改" style="width: 70px;"align="left" style="width: 70px; "></td></tr>
				<tr><th >姓名：</th><td><%=session.getAttribute("username")%></td></tr>
				<tr></tr><tr></tr>
				<tr><th >账户：</th><td><%=session.getAttribute("userid") %></td></tr>
				<tr></tr><tr></tr>
				<tr><th >密码：</th><td><%=session.getAttribute("password") %></td></tr>
				<tr></tr><tr></tr>
				<tr><th >地址:</th><td><%=session.getAttribute("address") %></td></tr>
				<tr></tr><tr></tr>
				<tr><th >电话：</th><td><%=session.getAttribute("telephone") %></td></tr>
				<tr></tr><tr></tr><tr></tr>
				<tr><th >余额：</th><td><%=session.getAttribute("money") %> </td></tr>
					<tr></tr><tr></tr>	
				<tr><th >充值：</th><td><input type="text" name="recharge" style="width: 42px; "></td>
					<td><input type="button" name="moneyrechage" value="确定" align="left" style="width: 70px;" onClick="rec()"></td></tr>
				<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
				<tr><td align="right"> </td>
				<td align="center"></td></tr>
				
				<tr></tr><tr></tr><tr></tr>
				<tr></tr><tr></tr><tr></tr>
				</table>
				</form>
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

	<script type="text/javascript">
    	
   		function rec(){
   			var money = document.f1.recharge.value;
			window.location.href="/bookstore/Recharge?money="+money;
	}
    </script>
  </body>
</html>
