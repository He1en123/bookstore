<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="entry.*" %>
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
   <script type="text/javascript">
   		function out(bookid){
   			window.location.href="/bookstore/outbook?bookid="+bookid;
   		}
   </script> 
	
  </head>

  <body>
 		<div id="body">
			<div >
				
				<a href="up.jsp" target="myframe"><input type="button" value="上架商品"></a>
			</div>	
				<div id="content" >
			
				
				<%
						ArrayList<Book1> books = (ArrayList<Book1>)request.getAttribute("books");
						for(int i=0;i<books.size();i++){
							if(books.get(i).getStatus().equals("上架")){
				%>
				<form name="" action="" onsubmit="return check()" >
				<img src="<%=books.get(i).getPic() %>" height="197" width="130" alt="<%=books.get(i).getBookname() %>" usemap="#map1"><br>
				<input type="checkbox">书名:<%=books.get(i).getBookname() %>
				<input type="button" value="下架商品" onClick="out('<%=books.get(i).getBookid()%>')">&nbsp;&nbsp;&nbsp;
				</form>
				<%} }%>
				
				
				
				</div>
			
		</div>
 
 
  </body>
</html>
