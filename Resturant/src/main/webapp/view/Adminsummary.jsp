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
<title>Summary Page</title>
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


.navbar #aaa {
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
</style>
</head>
<body>
<%
String username =(String) session.getAttribute("id");
if(username == null)
{
	response.sendRedirect("login.jsp");
}
%>

<div class="navbar">
   <a href="/" id="aa">Home</a>
    <a href="/view/login.jsp" id="aaa"  class="btn btn-danger">LOG OUT</a>
   <a href="/inventoryform" ><button id="aaa" class="btn btn-success">Inventory Page</button></a>
  
</div>
  <div class="date">  
  <form action="\adminsummary">  
  <label>Select your From Date:</label>
  <input  type="date" name="date">
   <label>Select your To  Date:</label>
  <input type="date" name="date1">
  
  <input class="btn btn-success" type="submit">
  </form>
  
  </div>
   <div class="date1">
     <label>FROM:</label>
     <input style="color:blue;"type="date" value="${date}" readonly>
     
     <label>TO:</label>
     <input style="color:blue;" type="date" value="${date1}" readonly>
     </div>
     <div class="value">
		<c:forEach items="${Total}" var="admin">
		<label>Grand Total = </label>
	    <c:out value="INR ${admin.total}"></c:out>
		</c:forEach>
     </div>
   <div class="error">${msg}</div>
 
		<table align="center">
		 
	
			<tr>
				
				<th>Food Name</th>
				<th>Quantity</th>
				<th>Amount</th>
				
			</tr>
		
			
			<c:forEach items="${summary}" var="admin">
	<tr>
					
					<td><c:out value="${admin.foodname}"></c:out></td>
					<td><c:out value="${admin.quantity}"></c:out></td>
					<td><c:out value="${admin.amount}"></c:out></td>
				
	</tr>		
			</c:forEach>
			
			
		</table >
		
	

	
</body>
</html>