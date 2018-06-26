<!DOCTYPE html>
<html>
  <head>
  <meta charset="UTF-8">
    <title>商品简介</title>
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
  <div>
		<div  id="head-left">
					<a href="index.jsp"><img src="img/zhku.png" style="height: 70px;"/></a>
		</div>
		<div id="head-right">		
					<img src="img/cart.gif" />
					<a href="cart.html"  >购物车</a>|
					<a href="register.jsp"  >用户注册</a>|
					<a href="login.jsp" >用户登录</a>|
					<a href="index.jsp"  >返回首页</a>			
			
		</div>
		<div >	
			<table bgcolor="#B6B684"style="width: 100%;height: 20px;">
			<tr></tr>
			</table>
		</div>
		<div id="body">
				<table align="center" width="30%">
				<tr><td></td><td><h4 align="left">个人信息修改</h4></td></tr>
				<tr><th >姓名:</th><td><input type="text" value="qqanna"></td></tr>
				<tr></tr><tr></tr>
				<tr><th >账号:</th><td><input type="text" value="100"></td></tr>
				<tr></tr><tr></tr>
				<tr><th >密码:</th><td><input type="text" value="123456"></td></tr>
				<tr></tr><tr></tr>
				<tr><th >邮箱：</th><td><input type="text" value="123456@qq.com"></td></tr>
				<tr></tr><tr></tr>
				<tr><th >地址:</th><td><input type="text" value=" 广州仲恺农业工程学院""></td></tr>
				<tr></tr><tr></tr>
				<tr><th >手机号:</th><td><input type="text" value=" 13533800829""></td></tr>
				<tr></tr><tr></tr>
				<tr></tr><tr></tr>
				<tr><td colspan="2" align="center"><input type="button" value="提交" style="width: 70px;" name="changesubmit">
				<input type="button" value="重置" style="width: 70px; "name="changereset"></td></tr>
				<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
				</table>
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
