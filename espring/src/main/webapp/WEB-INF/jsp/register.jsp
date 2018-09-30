<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
</head>
<body>
	<h4>REGISTER</h4>
	<form action="register" method="post">
	<div class="form-group">
		<table>
			<!-- 			<tr> -->
			<%-- 				<td><form:label path="id">id</form:label></td> --%>
			<%-- 				<td><form:input path="id" /></td> --%>
			<!-- 			</tr> -->
			<!-- 			<tr> -->
			<%-- 				<td><form:label path="name">name</form:label></td> --%>
			<%-- 				<td><form:input path="name" /></td> --%>
			<!-- 			</tr> -->
			<!-- 			<tr> -->
			<%-- 				<td><form:label path="gender">gender</form:label></td> --%>
			<%-- 				<td><form:input path="gender" /></td> --%>
			<!-- 			</tr> -->
			<!-- 			<tr> -->
			<%-- 				<td><form:label path="email">email</form:label></td> --%>
			<%-- 				<td><form:input path="email" /></td> --%>
			<!-- 			</tr> -->
			<!-- 			<tr> -->
			<%-- 				<td><form:label path="password">password</form:label></td> --%>
			<%-- 				<td><form:input path="password" /></td> --%>
			<!-- 			</tr> -->
			<!-- 			<tr> -->
			<%-- 				<td><form:label path="phone">phone</form:label></td> --%>
			<%-- 				<td><form:input path="phone" /></td> --%>
			<!-- 			</tr> -->
			<!-- 			<tr> -->
			<!-- 				<td><input type="submit" value="Submit" /></td> -->
			<!-- 			</tr> -->
			<tr>
				<td>Name:</td>
			</tr>
			<tr>
				<td><input type="text" name="name"></td>
			</tr>
				<tr>
					<td>Email</td>
				</tr>
				<tr>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>Gender</td>
				</tr>
				<tr>
					<td><select name="gender">
							<option value="male">male</option>
							<option value="femail">female</option>
					</select></td>
				</tr>
				<tr>
					<td>password</td>
				</tr>
				<tr>
					<td><input type="password" name="pass"></td>
				</tr>
				<tr>
					<td>Phone</td>
				</tr>
				<tr>
				<td><input type="text" name="phone"></td>
			</tr>
			<tr>
				<td><input type="submit" class="btn btn-primary" value="Register"></td>
			</tr>
		</table>
</div>
	</form>
</body>
</html>
