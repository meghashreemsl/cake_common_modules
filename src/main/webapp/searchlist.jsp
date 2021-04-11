<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>product list</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
${product.getP_cakeId()}
${product.getp_cakeName()}
${product.getP_cakePrice()}
${product.getP_quantity()}	
${product.getP_rating()}
</body>
</html>