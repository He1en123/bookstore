<%@ page language="java" import="java.sql.*" import ="entry.*"  %>
<!DOCTYPE html>
<html>
  <head>
  <meta charset="UTF-8">
    <title>ååç®ä»</title>
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
					<li><a href="cart.html" name="cart">è´­ç©è½¦</a></li>
					<li><a href="order.html">è®¢åè¯¦æ</a></li>
					
					<li><a href="index.jsp" >è¿åé¦é¡µ</a></li>
					</ul>
				</div>
					<div id="brow">	
					<br>
					</div>	
</div>

<div id="body">
				<%String personnaluserid=(String)session.getAttribute("userid");
				Users user=new Users();
				ResultSet rs=user.usersinfo(personnaluserid);
				out.println("账户："+session.getAttribute("userid"));
				rs.next();
				 %>
				<table align="center" width="30%">
				<tr><td></td><td><h4 align="left">ä¸ªäººä¸­å¿</h4></td><td><a  href="personalchange.html">
					<input type="submit" value="ä¿®æ¹ä¿¡æ¯" style="width: 70px;"align="left" style="width: 70px; "></a></td></tr>
				<tr><th >å§å:</th><td><%=rs.getString(2) %></td></tr>
				<tr></tr><tr></tr>
				<tr><th >è´¦å·:</th><td><%=rs.getString(1) %></td></tr>
				<tr></tr><tr></tr>
				<tr><th >å¯ç :</th><td><%=rs.getString(3) %></td></tr>
				<tr></tr><tr></tr>
				<tr><th >å°å:</th><td><%=rs.getString(5) %></td></tr>
				<tr></tr><tr></tr>
				<tr><th >ææºå·:</th><td><%=rs.getString(4) %></td></tr>
				<tr></tr><tr></tr><tr></tr>
				<tr><th >ä½é¢:</th><td><%=rs.getString(6) %> </td><td><input type="button" value="ç¹å»åå¼" align="left" style="width: 70px; "></td></tr>
					<tr></tr><tr></tr>	
				<tr><th >åå¼æ°é¢:</th><td><input type="text" name="recharge" style="width: 42px; "></td>
					<td><input type="button" name="moneyrechage" value="åå¼" align="left" style="width: 70px; "></td></tr>
				<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
				<tr><td align="right"> </td>
				<td align="center"></td></tr>
				
				<tr></tr><tr></tr><tr></tr>
				<tr></tr><tr></tr><tr></tr>
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
