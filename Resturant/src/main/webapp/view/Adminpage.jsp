<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title }</title>
  <link rel="stylesheet" href="../css/Adminpage.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<body>
<div class="navbar">
	<a href="/" class="logo"><img src="../images/logo-img.png" alt="Home"></a>
   	<a href="/view/Adminlogin.jsp"id="aa" class="btn btn-success">Logout</a>
   	<a href="/inventoryform" id="aa" class="btn btn-success">Inventory Page</a>
   	<a href="/view/Adminsummary.jsp" id="aa" class="btn btn-success">AdminSummary Page</a>
   </div>
</body>
</html>