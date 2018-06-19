<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="utf-8">
		<title>用户登录</title>
		<style >
			#head-left{float: left;
		    }
		    #head-right a:link {
						text-decoration: none;
						color:#000000;}
			#head-right a:visited {
						text-decoration: none;
						color:#000000;}
			#head-right a:hover {
						text-decoration: none;
						color:#BDB98C;}
			#head-right a:active {
						text-decoration: none;
						color:#000000;}
		   #head-right {display:inline;
					   word-spacing:5px;
					   float:right;
					   color:#000000;
			  			 text-decoration:none;}  
		
			#foot{
			width:100%;
			background-color:#efeedc;
			margin-top:15px;
			position:fixed; 
			bottom:0; left:0;
			width:100%; height:80px;}
		</style>
	</head>
	<body>
		<div  id="head-left">
	
					<img src="img/zhku.png" style="height: 70px;"/>
		</div>
		<div id="head-right">		
					<img src="img/cart.gif" />
					<a href="cart.html" >查看购物车</a>|
					<a href="register.jsp"  >用户注册</a>|
					<a href="login.jsp" >用户登录</a>|
					<a href="bookstore.html"  >返回首页</a>		
			
		</div>
		
		<div>
			<table   width="100%">
				<tr bgcolor="#1C3F09" >
				</tr>
			</table>
		</div>
		<div >	
			<table bgcolor="#B6B684"style="width: 100%;height: 20px;">
			<tr></tr>
			</table>
		</div>
			<h2 align="center"> 用户登录</h2>
		<form action="LoginServlet" method="post" name="form2" onSubmit="return check()">
			<table align="center" width="28%">
			<tr><th width="30%">姓名</th><td><input type="text" name="ID"></td></tr>
			<tr><th width="30%">密码 </th><td><input type="password" name="password"></td></tr>
			<tr><th colspan="2" width="10%" style="height: 100px; ">
			<input type="submit" value="登录">&nbsp;&nbsp;&nbsp;
			<input type="reset" value="重置"></th></tr>           	
		</table>
		</form>

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
	</body>




	
	
</html>