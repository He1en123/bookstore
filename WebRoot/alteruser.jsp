<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改用户信息</title>
</head>
<body>
	<h2 align="center">用户信息</h2>
		 	<form  name=f1 action = "/bookstore/updateuser" method="post">
			<table align="center" border="1" width="45%">
			<tr><th width="30%">账号</th><td><input type = "text"name = "userid" id="userid" value= <%=request.getAttribute("userid") %> ></td></tr>
			<tr><th>姓名</th><td><input type = "text" name = "username" id="username" value= <%= request.getAttribute("username") %>></td></tr>
			<tr><th>密码</th><td><input type = "text" name = "pw" id="pw" value= <%= request.getAttribute("password") %>></td></tr>
			<tr><th>地址</th><td><input type = "text" name = "address" id="address" value= <%= request.getAttribute("address") %>></td></tr>
			<tr><th>电话</th><td><input type = "text" name = "telephone" id="telephone" value= <%= request.getAttribute("tel") %>></td>
			<tr><th>余额</th><td><input type = "text" name = "money" id="money" value= <%= request.getAttribute("money") %>></td></tr>
			<tr><td colspan="2" align="center"><input type="submit" value="修改" ><input type="reset" value="重置"></td></tr>

</body>
</html>