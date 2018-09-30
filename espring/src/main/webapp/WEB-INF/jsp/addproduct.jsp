<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add product</title>
</head>
<body>
	<form action="addproduct" method="post">
		<table>
			<tr>
				<td>Name</td>
				<td><input type="text" name="productName"></td>
			</tr>
			<tr>
				<td>Category</td>
				<td><select name="category">
						<option>Women-Dress</option>
						<option>Men-Dress</option>
						<option>Shoes</option>
						<option>Home appliances</option>
						<option>Others</option>
				</select></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><input type="text" name="price"></td>
			</tr>
			<tr>
				<td>Image</td>
				<td><input type="file" name="image"></td>
			</tr>
			<tr>
				<td><input type="submit" name="Add product"></td>
			</tr>
		</table>
	</form>
</body>
</html>