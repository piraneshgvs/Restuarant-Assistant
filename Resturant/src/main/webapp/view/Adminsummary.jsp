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
</head>
<body>
  <div class="hero-image">
  <img src=" ../images/pexels-pixabay-326279.jpg" alt="Notebook" style="width:100%;">
  <div class="content">
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
		    <marquee>
			 $ Grand Total $
			</marquee>
			<tr>
			<td><th>Grand Total</th></td>
			</tr>
		<c:forEach items="${Total}" var="admin">
	<tr>
					
					<td><th><c:out value="${admin.total}"></c:out></th></td>
					
				
	</tr>		
			</c:forEach>
	
	</table>
	</div>
	</div>
</body>
</html>