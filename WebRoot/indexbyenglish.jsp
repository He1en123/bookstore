<%@ page language="java" import="java.sql.*" import ="entry.book" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="shortcut" href="img/zhku.gif">
		<title>仲有书网上商城</title>
		<style type="text/css">
		#head a{align：right;}
		#head-left{width: 100%;}
		#ul{
			float:right;
			position: relative;}
	    #head ul{
	    	list-style: none;
	    	float:right;}
	    #ul img{position: absolute;
	    	top: 12px;left:10px;}
	    #head li{float:left;
	    	height: 80px;
	    	margin-right:20px;
	    	text-align: center;}
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
				
		#menu a{font-size:14px;
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
		
		#content{float: right;
			}
		#content form{margin-left: 100px;
			}
		
	
		}
		.getbook{margin-bottom: 200px;}
		#foot{
			
			width:100%;
			background-color:#efeedc;
			margin-top:15px;
			bottom:0; left:0;
			width:100%; height:80px;
			clear: both;
		}
		</style>
		<script type="text/javascript">
			function a(userid){
				window.location.href="/bookstore/Personal?userid="+userid;
			}
			function remove(userid){
				window.location.href="/bookstore/Remove?userid="+userid;
			}
			function cart(userid){
				window.location.href="/bookstore/cart?userid="+userid;
			}
			function book(i){
				window.location.href="/bookstore/Brief?i="+i;
			}
			function search(bookname){
				window.location.href="/bookstore/search?bookname="+bookname;
			}
						function asc(){
				<%
				request.setAttribute("ascordesc", "asc");
				%>
			}
			function desc(){
				<%
				request.setAttribute("ascordesc", "desc");
				%>
			}
		</script>
	</head>
	<body>
		<div  id="head">
				<a href="index.jsp"><img src="img/zhku.png" style="height: 70px;"/></a>	
				<div id="ul">
					<img src="img/cart.gif">
					<ul>
					<%String userid= (String)session.getAttribute("userid") ;
					if(userid!=null)
					{
						
					%>
					<li><a onClick="cart('<%=userid%>')">购物车</a></li>
					<li>欢迎，<%=userid %></li>
					<li><a name="remove" onClick="remove('<%=userid%>')">退出</a></li>
					<li><a name="imformation" onClick="a('<%=userid %>')">个人信息</a></li>
					<%}else{ %>
					<li><a href="register.jsp">注册</a></li>
					<li><a href="login.jsp">登录</a></li>
					<%} %>
					</ul>
		</div>
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
						<a href="index.jsp" name="allbook">全部商品</a>
						<a href="indexorderby.jsp" onclick="asc()"name="up">价格升序</a>
						<a href="indexorderby.jsp"onclick="desc()" name="down">价格降序</a>
					</td>
					<td align="center" width="55%">
							<a href="indexbychinese.jsp" name="Chin">语文类</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="indexbymath.jsp" name="math">数学类</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="indexbyenglish.jsp" name="engl">英语类</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td>
						输入书名
						<input type="text" size="20" name="bookname" id="bookname" value="">
						<a><input type="button" value="搜索" name="serach" onClick="search(bookname.value)"></a>
					</td>
				</tr>				
			</table>	
		</div>
		<div >
				<% 
				book a=new book();
				ResultSet rs=a.selectbookbytype("英语");
				rs.last();
				int booknum=rs.getRow();
				rs.beforeFirst();
				rs.next();
						for(int i=1;i<=booknum;i++) {
							if((i-1)%4==0)%>
					<div id="content" >
				<form id="<%= i %>" name="<%= i %>"  >
				<img src="<%= rs.getString(5)%>" height="197" width="130" alt="图片1" ><br>
				书名:<%= rs.getString(2)%><a><input type="button" value="查看" onClick="book('<%=i %>')"></a>
				<input type="hidden" name="bookid" value="<%= rs.getString(1)%>">
				
				</form>
				</div>
			<%rs.next(); }%>
			
			
			
			
			<br/><br /><br />	
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












