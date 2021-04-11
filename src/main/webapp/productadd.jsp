<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add product</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body style="background-image: url('cake1.jpg'); height: 100vh; background-position: center; background-size: cover;">
	 <div class="h_style" style="padding: 30px;">
		<label style="font-size: 30px;">Cake Shop</label>
		<ul>
			<li><a href="index.jsp">Logout</a></li>
		</ul>
	</div>
	 <form action="product.do">
	 <table class="table_style1">
	<tr>
	   <td><label>product cake ID:</label> </td>
	   <td><input type="text" name="p_cakeId"></td>
	</tr>
	<tr>
		<td><label>cake name:</label></td>
		<td> <input type="text" name="p_cakeName"></td>
	</tr>
	<tr>
	    <td><label>cake price:</label></td>
	    <td> <input type="text" name="p_cakePrice"></td>
	</tr>
	<tr>
		<td><label>quantity:</label></td>
	 	<td><input type="text" name="p_quantity"></td>
	 </tr>
	<tr>
		<td><label>rating:</label> </td>
		<td><input type="text" name="p_rating"></td>
	</tr>
	<tr>
		<td><input class="btn" type="submit" value="add product"></td>
	</tr>
</table>
</form>
</body>
</html>