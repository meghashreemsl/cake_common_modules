<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body class="megha">
	<form action="login.do">
	<table class ="table_style1">
			<tr>
				<td><label>UserName:</label> </td>
				<td><input type="text" name="userName"></td>
			</tr>
			<tr>
				<td><label>Password:</label></td>
				<td><input type="text" name="password"> </td>
			</tr>
			<tr>
				<td ><input class="btn" type="submit" value="login"></td>
			 	<td><input class="btn" type="reset" value="reset"></td>
			 </tr>
		</table>	
	</form>

</body>
</html>