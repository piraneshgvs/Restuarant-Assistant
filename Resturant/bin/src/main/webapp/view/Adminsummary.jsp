<%@page import="com.example.demo.model.Ordersummary"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="../css/Adminsummary.css">   
<title>Insert title here</title>
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
.navbar .logo img{
  height:5rem;
}


.navbar a:hover {
  background: #ddd;
  color: black;
}

</style>
</head>
<body>

<div class="navbar">
		<a href="/" class="logo"><img src="../images/logo-img.png" alt="Home"></a>
		<a href="/view/Adminpage.jsp" id="aa" class="btn btn-success">Admin Home</a>
		<a href="/inventoryform" id="aa" class="btn btn-success">Inventory Page</a>
		<a href="/adminsummary" id="aa" class="btn btn-success" aria-disabled="true">AdminSummary Page</a>
		</div>
  <div class="date">  
  <form action="\adminsummary">  
  <label>Select your From Date:</label>
  <input type="date" name="date">
   <label>Select your To  Date:</label>
  <input type="date" name="date1">
  <input type="submit">
  </form>
  </div>
  

    
 
		<table class="table table-hover">
	
			<tr>
				
				<td><th>Food Name</th></td>
				<td><th>Quantity</th></td>
				<td><th>Amount</th></td>
				
			</tr>
		
			
			<c:forEach items="${summary}" var="admin">
	<tr>
					
					<td><th><c:out value="${admin.foodname}"></c:out></th></td>
					<td><th><c:out value="${admin.quantity}"></c:out></th></td>
					<td><th><c:out value="${admin.amount}"></c:out></th></td>
				
	</tr>		
			</c:forEach>
			<br>
			<br>
			
		</table >
		<table align="right">
		   
			<tr>
			<td><th>Grand Total</th></td>
			</tr>
		<c:forEach items="${Total}" var="admin">
	<tr>
					
					<td><th><c:out value="${admin.total}"></c:out></th></td>
					
				
	</tr>		
			</c:forEach>
	
	</table>
	
</body>
</html>