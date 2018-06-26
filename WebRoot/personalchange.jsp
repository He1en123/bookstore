<%@ page language="java" contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
  <head>
  <meta charset="UTF-8">
    <title>修改个人信息</title>
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
    <script type="text/javascript">
			function a(userid){
				window.location.href="/bookstore/Personal?userid="+userid;
			}
		
		</script>
  </head>
  
  <body>
  <div>
		<div  id="head-left">
					<a href="index.jsp"><img src="img/zhku.png" style="height: 70px;"/></a>
		</div>
		<div id="head-right">		
					<%String userid= (String)session.getAttribute("userid") ;
					if(userid!=null)
					{
					%>
					<li><a href="cart.jsp" name="cart">购物车</a></li>
					<li>欢迎，<%=userid %></li>
					<li><a name="cart" onClick="a('<%=userid %>')">个人信息</a></li>
					<%}else{ %>
					<li><a href="register.jsp">注册</a></li>
					<li><a href="login.jsp">登录</a></li>
					<%} %>
					</ul>
			
		</div>
		<div >	
			<table bgcolor="#B6B684"style="width: 100%;height: 20px;">
			<tr></tr>
			</table>
		</div>
		<div id="body">
				<form action = "/bookstore/Personal" method="post">
				<table align="center" width="30%">
				<tr><td></td><td><h4 align="left">修改个人信息</h4></td></tr>
				<tr><th>姓名:</th><td><input type="text" value=<%=session.getAttribute("username") %> name="username"></td></tr>
				<tr></tr><tr></tr>
				<tr><th>账户:</th><td><input type="text" value=<%=session.getAttribute("userid") %> name="userid"></td></tr>
				<tr></tr><tr></tr>
				<tr><th>密码:</th><td><input type="text" value=<%=session.getAttribute("password") %> name="password"></td></tr>
				<tr></tr><tr></tr>
				<tr><th>地址:</th><td><input type="text" value=<%=session.getAttribute("address") %> name="address"></td></tr>
				<tr></tr><tr></tr>
				<tr><th>电话:</th><td><input type="text" value=<%=session.getAttribute("telephone") %> name="telephone"></td></tr>
				<tr><td colspan="2" align="center"><input type="submit" value="确定" style="width: 70px;" name="changesubmit">
				<input type="reset" value="重置" style="width: 70px; "name="changereset"></td></tr>
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
		
		</div>

  </body>
</html>
