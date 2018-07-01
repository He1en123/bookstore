<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.util.*" %>
<%@ page import="entry.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>账户信息管理</title>
  <style type="text/css">
  #body{border-style: dotted;
  		text-align:right;
  	   	word-spacing:50px;
  		 margin-top: 20px;}
  
  </style>
  <script type="text/javascript">
	function del(userid){
		 var msg = "您真的确定要删除吗？\n\n请确认！"; 
		 if (confirm(msg)==true){ 
			window.location.href="deleteuser?userid="+userid; 
		 }else{ 
		  return false; 
		 } 
		}
	function alter(userid){
		window.location.href="alteruser?userid="+userid;
	}
</script>
  </head>
  <body>
     <div  >
     	<h4 align="center">账户信息管理</h4>
		<table align="center" id="body">
					<tr>
					<th style="width: 100px;">账号</th>
					<th style="width: 100px;">姓名</th>
					<th style="width: 100px;">密码</th>
					<th style="width: 100px;">电话</th>
					<th style="width: 100px;">地址</th>
					<th style="width: 100px;">余额</th></tr>
					
					<%
						List<Users1> users = (List<Users1>)request.getAttribute("userslist");
						for(int i=0;i<users.size();i++){
					%>
					<tr>
					<td><%= users.get(i).getUserid() %></td>
					<td><%= users.get(i).getUsername() %></td>
					<td><%= users.get(i).getPassword()%></td>
					<td><%= users.get(i).getTel() %></td>
					<td><%= users.get(i).getAddress() %></td>
					<td><%= users.get(i).getMoney() %></td>
					<td><a></a><input type = "button" value = "修改" onClick="alter('<%=users.get(i).getUserid()%>')"></a>
					<input type = "button" value = "删除" onclick="del('<%=users.get(i).getUserid()%>')"></td></tr>
			
		<%
			}
		%>
						
				</table>
   </div>
  
  
  </body>
</html>
