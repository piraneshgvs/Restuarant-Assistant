<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="../css/Adminlogin.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Adminlogin Page</title>
</head>
<body>


<style>
#button {width:250px;}

</style>


<!--Header section starts-->
<header>
  <nav><a href="/" class="logo"><img src="../images/logo-img.png" alt="Home"></a></nav>
</header>
<!--header section ends-->




<div class="login">
  <div class="login-header">
    <h1>Jungle Restuarant Admin Login</h1>
  </div>
  <div class="login-form">
  <form:form action="/login" method="post">
    <h3>Phone number:</h3>
   <input type="text" name="id" id="id" placeholder="Enter Phone number"><br>
    <h3>Password:</h3>
    <input type="password" name="password" id="password" placeholder="Enter Password">
    

    <br>
    <input type="submit" value="Login" id="button" class="w3-button w3-red w3-round-large"/>
    <br>
    </form:form>
    ${message }
    
    <br>
   
  </div>
</div>


</body>
</html>