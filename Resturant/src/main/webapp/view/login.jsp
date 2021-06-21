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
    <link rel="stylesheet" href="../css/login.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Login Page</title>
<style>

.navbar {
  z-index: 1;
}

.navbar {
  overflow: hidden;
  background-color: #FFD801;
  position: fixed;
  top: 0;
  width: 100%;
}

.navbar a {
  float:right;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}
.navbar button{
  float: right;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background: #ddd;
  color: black;
}

.navbar #aa {
  float:left;
  display: block;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}


.navbar #aa:hover {
  background: #ddd;
  color: black;
}
.main {
  padding: 16px;
  margin-top: 30px;
 }




</style>
</head>
<body>
 <div class="navbar">
    <a href="/" id="aa">Home</a>
   
    
 
  </div>
    

<style>
#button {width:250px;}

</style>







<div class="login">
  <div class="login-header">
    <h1>Jungle Restuarant Login</h1>
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