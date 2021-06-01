<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inventaroy Page</title>
<link rel="stylesheet" href="../css/Inventory.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.navbar {
  z-index: 1;
}

.navbar {
  overflow: hidden;
  background-color: #333;
  position: fixed;
  top: 0;
  width: 100%;
}
.navbar a {
  float:left;
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
</style>
   
</head>
<body>
 <div class="navbar">
    <a href="/">Home</a>
    </div>

<form:form action="/insertfood" modelAttribute="addItem">
       <div class="table">
		<table  class="table table-hover">
			<tr>
				<td>Food ID :</td>
				<td><form:input name="fid" path="fid" /></td>
			</tr>
			<tr>
				<td>Food Name :</td>
				<td><form:input path="fName" /></td>
			</tr>
			<tr>
				<td>Food Price :</td>
				<td><form:input path="fPrice" /></td>
			</tr>
			
			<tr>
				<td></td>
				<td><input type="reset" class="btn btn-warning" value="Clear"></td>
				<td><input type="submit" class="btn btn-primary" name="update" value="Update Food"></td>
		        <td><input type="submit" class="btn btn-danger" name="delete" value="Remove Food"></td>
		        <td><input type="submit" class="btn btn-success" name="submit" value="Add Food"></td>
			</tr>
		</table>
		</div>
		
	</form:form>
	
	<br><br>
	
	
<div>${addMsg}</div>


</body>
</html>