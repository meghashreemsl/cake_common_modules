<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/validations.js"></script>
<script type = "text/javascript" >
	function preventBack() {
		window.history.forward();
	}  
	setTimeout("preventBack()", 0);  
	window.onunload = function () {
		null
		};  
	</script>
</head>
<body class="megha" onload="preventBack()"
	style="background-image: url('cake1.jpg'); height: 100vh; background-position: center; background-size: cover;">
	<div class="h_style" style="padding: 30px;">
		<label style="font-size: 30px;">Cake Shop</label>
		<ul>
			<li><a  href="index.jsp">Logout</a></li>
		</ul>
	</div>
	<form action="get.do" name="meg_get">
		<table class="table_style1">
			<tr>
				<td><label>Email id:</label></td>
				<td><input type="email" name="emailId"></td>
			</tr>

			<tr>
				<td><input class="btn" type="submit" value="submit"></td>
			</tr>
		</table>
	</form>
</body>
</html>