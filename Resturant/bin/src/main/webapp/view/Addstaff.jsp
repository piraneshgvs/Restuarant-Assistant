<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
 <table class="table table-hover">
    	<tr>
		<form:form action="/addstaff">
		        <td><th><input  name="name"></th></td>
				<td><th><input  name="phone"></th></td>
				<td><th><input type="password" name="password"></th></td>
				<td><th><input  name="staff_role"></th></td>
				<td><th><input type="submit"  value="ADD STAFF"></th></td>
		</form:form>
	    </tr>
	    </table>


</body>
</html>