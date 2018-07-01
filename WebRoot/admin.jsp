<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>仲有书后台管理</title>
    <style type="text/css">
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
	#iframe_left{float: left;
			margin-right: 80px;
			}
	#iframe_left ul{list-style: none;}	
	#iframe_left li{margin-bottom: 20px;}
	#iframe_left a{text-decoration: none;}
	#iframe{margin-bottom: 50px;
			
			}
 	#foot{
			width:100%;
			
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
			<li><a href="index.jsp" >返回首页</a></li>
		</ul>
		</div>
		<div id="brow"><br>
		</div>	
</div>

<div id="iframe_left">
		<ul>
		<li><a href="/bookstore/idmanage" target="myframe">账户管理</a></li>
		<li><a href="ordermanage.jsp" target="myframe">订单管理</a></li>
		<li><a href="goodsmanage.jsp" target="myframe">商品管理</a></li>
		</ul>
</div>
<div id="iframe">
	<iframe src="" frameborder="1" width="75%" height="80%" name="myframe">
		
		
	</iframe>
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
