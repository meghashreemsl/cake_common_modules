<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body class="megha" style="background-image: url('cake1.jpg'); height: 100vh; background-position: center; background-size: cover;">
	<div class="h_style" style="padding: 30px;">
		<label style="font-size: 30px;text-align:right;">Cake Shop</label>
		
		<ul>
			<li><a class="anch" href="get.jsp">get</a></li>
			<li><a class="anch" href="update.jsp">update</a></li>
			<li><a class="anch" href="productadd.jsp">Add product</a><br></li>
			<!--<li><a class="anch" href="searchlist.jsp">Search</a><input
				type="text" placeholder="search..">  -->
			<li><a  href="index.jsp">Logout</a></li>
			<li>
		</ul>
		</div>
	
		 <label style="font-size: 25px;color:white;">${msg}!!! </label><br>
		 
		  <a  href="searchlist.jsp" style="text-align:center;">Search</a><input
				type="text" placeholder="search..">
		
	
<!-- <div class="f_style" >@copyright</div>-->

</body>
</html>