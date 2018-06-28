<%@ page language="java" import="java.sql.*" import ="entry.*"  pageEncoding="utf-8"%>
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
	#block1{float:left;
   			 margin-top: 60px;
   			 }
   
	#block2{float: left; 
		margin-left: 50px;
		margin-top: 70px;}
	#block2 table{
		border-color: #B6B684;
		border-style: dotted;
	}
	#block2 tr{width: 20px;
   				height:50px;}
	#block2 th{text-align: center;
		} 
	#block2 td{text-align: center;
		} 
	#block3{float:right;
			margin-left: 200px;
			
			
			}
	#block3 td{ width:150px;
				height:165px;}	
	#block3 span{
			font-family: monospace;
			font-style:oblique;}
    #img   {width:200px;
    		height: 280px;
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
  <script type="text/javaScript">

		function addmycart(){
			mycart a=new mycart();
			
		}
		
		</script>
  <body>
		<% 
		int bookid=Integer.parseInt(request.getParameter("bookid"));
		book a=new book();
		a.getbook(bookid);
		 %>
		<div  id="head-left">
				<a href="index.jsp"><img src="img/zhku.png" style="height: 70px;"/></a>	
				<div id="ul">
					<img src="img/cart.gif">
					<ul>
					<li><a href="cart.html" name="cart">购物车</a></li>
					<li><a href="register.jsp">注册</a></li>
					<li><a href="login.jsp">登录</a></li>
					<li><a href="index.jsp" >返回首页</a></li>
					</ul>
				</div>
					<div id="brow">	
					<br>
					</div>	
		</div>
		

	
		<div id="block1">
		<img  src=<%= a.getbookpic(bookid) %> id="img">
		</div >	
		<div id="block2">
			<p ></p>	
			<table >
			<form name=form action="addmycart.jsp" onsubmit="return addmycart()">
			<tr ><th name="selectbook">书名：</th><td><input type="text" name="bookname" value=<%= a.getbookname(bookid) %>></td>
			<td ><input type="button" name="upbookS" value="下架" style="width: 70px; " align="right" ></tr>		
			<tr ><th name="selectversion">库存：</th><td ><input type="text" name="storage" value=<%= a.getbookstorage(bookid) %>></td></tr>
			<tr ><th name="prise">价格：</th><td ><input type="text" name="prise" value=<%= a.getbookprice(bookid) %>></td></tr>				
			<tr ><th name="selectbookbumber">购买数量：</th><td ><input type="text" name="booknumber" value="2"></td>
				<td><input type="image" src="img/cart.gif"><input type="submit" name="buycart" value="加入购物车" style="width: 90px; "></td>
			</tr>
			<input type="hidden" name="bookid" value="<%=  request.getParameter("bookid") %>">
			</form>
			</table>
		</div>
		<div id="block3"> 
			<br><span >宝贝推荐</span>
			<table >
					<tr >
						<td><img src="img/c1.jpg" height="150" width="100" alt="图片1" usemap="#map1">
							<map name="map1">
						 	<area shape="rect" coords="0,0,100,150" href="brief.html">
						 	</map>
						</td>
						<td><img src="img/c2.jpg" height="150" width="100" alt="图片1" usemap="#map2">
							<map name="map2">
						 	<area shape="rect" coords="0,0,100,150" href="brief.html">
						 	</map>
						</td>
					</tr>
					<tr>
						<td><img src="img/math3.jpg" height="150" width="100" alt="图片1" usemap="#map3">
							<map name="map3">
						 	<area shape="rect" coords="0,0,100,150" href="brief.html">
						 	</map>
						</td>
						<td><img src="img/math4.jpg" height="150" width="100" alt="图片1" usemap="#map4">
							<map name="map4">
						 	<area shape="rect" coords="0,0,100,150" href="brief.html">
						 	</map>
						</td>
					</tr>
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
  </body>
</html>
