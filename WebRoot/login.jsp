<%@page import="javax.swing.text.Document"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
	
		<meta charset="utf-8">
		<title>用户登录</title>
		<style >
	#head-left{width: 100%;}
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
				<a href="index.jsp"><img src="img/zhku.png" style="height: 70px;"/></a>	
				<div id="ul">
					<img src="img/cart.gif">
					<ul>
					<li><a href="register.jsp">注册</a></li>
					<li><a href="login.jsp">登录</a></li>
					<li><a href="index.jsp" >返回首页</a></li>
					</ul>
				</div>
					<div id="brow">	
					<br>
					</div>	
</div>
<div>	<h2 align="center"> 用户登录</h2>
		<form action="/bookstore/Login" method="post" name="form2" onSubmit="return check()">
			<table align="center" width="28%">
			<tr><th width="30%">账户</th><td><input type="text" name="ID" id=userid></td></tr>
			<tr><th width="30%">密码</th><td><input type="password" name="password"></td></tr>
			<tr><th colspan="2" width="10%" style="height: 100px; ">
			<input type="submit" value="登录">&nbsp;&nbsp;&nbsp;
			<input type="reset" value="重置"></th></tr>           	
		</table>
		</form>
</div>
<div id="foot">
		<table bgcolor="#efeedc" width="100%" align="center">
			<tr>
				<td rowspan="2" style="width:10%"><img src="img/zhku.png" width="195" height="50" style="margin-left:100px;"></td>
				<td style="padding-left:50px;padding-top:5px;"><a><font color="#747556">&copy;ZHKUBookStore </font></a></td>
			</tr>
			<tr>
				<td style="padding-left:50px;"><font color="#747556">JOIN US PLEASE CALL 0000-1234567</font></td>
			</tr>
		</table>
</div>	
	</body>




	<script type="text/javascript">
  	    function check(){
  	    	
  	    	}
  	    	
  	    </script>
	
</html>