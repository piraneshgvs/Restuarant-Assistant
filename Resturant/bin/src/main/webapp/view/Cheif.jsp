<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.example.demo.model.Orders"%>
        <%@page import="com.example.demo.model.OrderDetails"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/Cheif.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="navbar">
   <a href="/">Home</a>
   </div>




	<table class="table table-hover" border="1">
	
			<tr>
			
				<td><th>Table No</th></td>
				<td><th>Food Name</th></td>
					<td><th>Quantity</th></td>
					
			</tr>
		
			<c:forEach items="${details }" var="detail" varStatus="loopCount">
			<c:forEach items="${detail}" var="order">
	                 <c:set var="string" value="${userList[(loopCount.count)-1]}"/>
	                
					<c:if test="${fn:substring(string,22,65)  eq order.user_id}">
					<tr>
					<td><th><c:out value="${order.tableNo}"></c:out></th></td>
					<td><th><c:out value="${order.foodId}"></c:out></th></td>
					<td><th><c:out value="${order.quantity}"></c:out></th></td>
					
					</c:if>
				
		
			</c:forEach>
			<td><a href="/cheif/finish/${fn:substring(string,22,65) }"><button>Completed</button></a></td>
			</tr>
			<br>
	</c:forEach>
	</table>

<!-- <script type="text/javascript" src="../js/Cheif.js"></script> -->


</body>
</html>