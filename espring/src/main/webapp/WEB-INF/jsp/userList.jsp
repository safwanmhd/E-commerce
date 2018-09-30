<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<title>epring</title>
<%-- <script type="text/javascript">
    <%@include file="/WEB-INF/js/bootstrap.min.js" %>
</script>  --%>
</head>
<body>
	<table class="table">
		<tr>
			<th style="col">id</th>
			<th scope="col">Name</th>
			<th scope="col">Email</th>
			<th scope="col">Password</th>
			<th scope="col">Phone</th>
		</tr>
		<c:forEach items="${users}" var="user">
			<tr>
				<td><c:out value="${user.id}" /></td>
				<td><c:out value="${user.name}" /></td>
				<td><c:out value="${user.email}" /></td>
				<td><c:out value="${user.password}" /></td>
				<td><c:out value="${user.phone}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>