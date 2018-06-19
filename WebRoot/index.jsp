<%@ page language="java" import="java.sql.*" import ="entry.book"  pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<title>仲有书网上商城</title>
		<style type="text/css">
		#head a:link {
				text-decoration: none;
				color:#000000;}
		#head a:visited {
				text-decoration: none;
				color:#000000;}
		#head a:hover {
				text-decoration: none;
				color:#BDB98C;}
		#head a:active {
				text-decoration: none;
				color:#000000;}
				
		#menu{font-size:14px;
			 color:#ffffff; 
			 font-weight:bold; 
			 text-align: center;
		}
		#menu a:link {
			 text-decoration: none;
			 font-weight: bold;
		}
	
		#menu a:visited {
			 text-decoration: none;
			 color: #FFFFFF;
			 font-weight: bold;
			}
	
		#menu a:hover {
			 text-decoration: none;
			 color: #999999; /*颜色变换*/
			 font-weight: bold;}
		#menu a:active {
			text-decoration: none;
			color: #FFFFFF;
			font-weight: bold;}
		
		#content{
			width:900px; 
			margin-top:10px; 
			margin-right:auto;
			margin-left:auto;}
		.table{width: 100%;
			border: 10px;
		}
		#foot{
			width:100%;
			background-color:#efeedc;
			margin-top:15px;
			position:fixed; 
			bottom:0; left:0;
			width:100%; height:80px;
		}
		</style>
	</head>
	<body>
		<div  id="head">
		<table width="100%">
			<tr ><td width="70%">
					<img src="img/zhku.png" style="height: 70px;"/>
				</td>
				<td>
					<img src="img/cart.gif" />
					<a href="denglu.html" name="cart">查看购物车</a>|
					<a href="zhuce.html" target="_blank" name="register">用户注册</a>|
					<a href="denglu.html" target="_blank" name="login">用户登录</a>		
				</td>
			</tr>
		</table>
		</div>
		
		
		<div>
		<table width="100%">
							<tr >
								<td bgcolor="#F8EA28" >
									<img src="img/productlist.gif" width="100%" >
								</td>
							</tr>
		</table>	
		</div>
		<div id="menu">
		<table bgcolor="#B6B684" width="100%">
				<tr>	
				<td>
						<a href="" name="allbook">全部商品</a>
						<a href="" name="up">价格升序</a>
						<a href="" name="down">价格降序</a>
					</td>
					<td align="center" width="80%">
						<a href="brief.html" name="Chin">语文类</a>&nbsp;&nbsp;
						<a href="brief.html" name="math">数学类</a>&nbsp;&nbsp;
						<a href="brief.html" name="engl">英语类</a>&nbsp;&nbsp;
						<a href="brief.html" name="chem">化学类</a>&nbsp;&nbsp;
						<a href="brief.html" name="phyl">物理类</a>&nbsp;&nbsp;
						<a href="brief.html" name="bio">生物类</a>&nbsp;&nbsp;
						<a href="brief.html" name="his">历史类</a>&nbsp;&nbsp;
						<a href="brief.html" name="pol">政治类</a>&nbsp;&nbsp;
						<a href="brief.html" name="geo">地理类</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						输入书名
						<input type="text" size="20" name="serach_name">
						<input type="button" value="搜索" name="serach">
					</td>
				</tr>				
			</table>	
		</div>
	<div id="content">
		
			<table width="100%">
					<tr align="center">
						<% 
						book a=new book();
						for(int i=1;i<=a.booknum();i++) {
							if((i-1)%4==0)%><table><% 
						%>
						<td>
							<a href="test.html"><img src="<%= a.getbookpic(i)%>" height="197" width="130" alt="图片1" usemap="#map1">
							<td>价格20￥</td></a>
						 	
						</td><% }%>
						
			</table>
			<br /><br /><br />
		
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
</html>












