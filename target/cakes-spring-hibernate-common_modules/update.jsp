<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<form action="update1.do">
		<table class="table_style1">
			<tr>
				<td><label>update id:</label></td>
				<td><input type="text" name="cakeId"
					placeholder="${cakeregistration.getCakeId()}"></td>
			</tr>
			<tr>
				<td><label>update username:</label></td>
				<td><input type="text" name="userName"
					placeholder="${cakeregistration.getUserName()}"></td>
			</tr>
			<tr>
				<td><label>email id:</label></td>
				<td><input type="email" name="emailId"
					value="${cakeregistration.getEmailId()}"></td>
			</tr>
			<tr>
				<td><label>update contact no :</label></td>
				<td><input type="text" name="contactNo"
					placeholder="${cakeregistration.getContactNo()}"></td>
			</tr>
			<tr>
				<td><label>update Dob:</label></td>
				<td><input type="date" name="dob"
					value="${cakeregistration.getDob()}"></td>
			</tr>
			<tr>
				<td><label>update gender :</label></td>
				<td><input type="text" name="gender"
					placeholder="${cakeregistration.getGender()}"></td>
			</tr>
			<tr align="right">
				<td><input class="btn" type="submit" value="update"></td>
			</tr>
		</table>
	</form>

</body>
</html>