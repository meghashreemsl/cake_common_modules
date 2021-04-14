<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>product list</title>
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
<body >
<form >
${product.getP_cakeId()}
${product.getp_cakeName()}
${product.getP_cakePrice()}
${product.getP_quantity()}	
${product.getP_rating()}
</form>
</body>
</html>