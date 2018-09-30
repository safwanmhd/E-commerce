<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<title>epring</title>
<%--<script type="text/javascript">
    <%@include file="js/script.js" %>
</script> --%>
</head>
<body>

	<form action="login" method="post">
	<div class="form-group">
		<table>
			<tr>
				<td>Enter email :</td>
			</tr>
			<tr>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Enter password :</td>
			</tr>
			<tr>
				<td><input type="password" name="password"></td>
			</tr>

			<tr>
				<td><input type="submit" class="btn btn-primary" value="Login"></td>
			</tr>
		</table>
		</div>
	</form>
	
	<br>
	<%-- simple c:if and c:out example with HTML escaping --%>
	<c:if test="${faild ne null }">
		<label class='required'>${faild }</label>
	</c:if>
	<br>
	<a href="userList">List of Users</a>
	<br>
	<a href="addproduct">Add Product</a>
</body>
</html>
