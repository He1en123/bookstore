<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'goodsmanage.jsp' starting page</title>
   <style type="text/css">
   #body{}
   #content{float: left;
 		  margin-top: 30px;}
   #content form{margin-left: 100px;
			}
   </style> 
	
  </head>

  <body>
 		<div id="body">
			<div >
				<input type="button" value="下架商品">&nbsp;&nbsp;&nbsp;
				<a href="up.jsp" target="myframe"><input type="button" value="上架商品"></a>
			</div>	
				<div id="content" >
			
				<form name="" action="" onsubmit="return check()" >
				
				<img src="" height="197" width="130" alt="图片1" usemap="#map1"><br>
				<input type="checkbox">书名:
				</form>
				
				<form name="" action="" onsubmit="return check()" >
				
				<img src="" height="197" width="130" alt="图片1" usemap="#map1"><br>
				<input type="checkbox">书名:
				</form>
				
				
				</div>
			
		</div>
 
 
  </body>
</html>
