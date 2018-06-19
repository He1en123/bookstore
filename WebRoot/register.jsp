<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
	<head>
		<meta charset="utf-8">
		<title>网上书城</title>
		<style>
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
					<a href="cart.html"  >查看购物车</a>|
					<a href="register.jsp"  >用户注册</a>|
					<a href="login.jsp" >用户登录</a>|
					<a href="bookstore.html"  >返回首页</a>		
			
		</div>
		
		<div >	
			<table bgcolor="#B6B684" style="width: 100%;height: 20px;">
			<tr></tr>
			</table>
		</div>
		<div>
		
		</div>
		<div>
		<h2 align="center">新用户注册</h2>
		<form action="bookstore/Register" method="post" name="form1" onSubmit="return check()">
		<table align="center" width="30%">
		<tr><th width="30%">姓名</th><td ><input type="text" name="name" ></td></tr>
		<tr><th width="30%">账号</th><td><input type="text" name="ID"></td></tr>
		<tr><th width="30%">密码</th><td><input type="password" name="password"></td></tr>
		<tr><th width="30%">确认密码</th><td><input type="password" name="password1"></td></tr>
		<tr><th width="30%">手机号</th><td><input type="text" name="tel"></td></tr>	
		<tr><th width="30%">邮箱</th><td><input type="text" name="email"></td></tr>
		<tr><th colspan="2" width="10%">
			<input type="submit" value="注册">&nbsp;&nbsp;&nbsp;
			<input type="reset" value="重置"></th></tr>           	
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
	</body>
		
	<script language="JavaScript">
		function check(){
			if(document.form1.name.value==""){
				alert('姓名不能为空！');
				form1.name.focus();
				return false;
			}
			if(document.form1.password.value==""){
				alert('密码不能为空！');
				form1.password.focus();
				return false;
			}
			if(document.form1.password.value.length<6){
				alert('密码不能少于6位！');
				form1.password.focus();
				return false;
			}
		
			if(document.form1.password1.value!=document.form1.password.value){
				alert('确定密码和密码不一致！');
				form1.password1.focus();
				return false;
			}
			if(document.form1.tel.value.length!=11){
				alert('请输入11位的手机号！');
				form1.tel.focus();
				return false;
			}
			if((document.form1.email.value.indexof('@',0)==-1)||
				(document.form1.email.value.indexof('.',0)==-1)){
				alert('邮箱格式不正确！');
				form1.tel.focus();
				return false;
			}

			else return true;
		}
	</script>
	
</html>