<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.example.demo.model.Orders"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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



<a href="/cheif/${1 }"><button type="button" ${enable }>Table 1</button></a>
<a href="/cheif/${2 }"><button type="button" ${enable }>Table 2</button></a>
<a href="/cheif/${3 }"><button type="button" ${enable }>Table 3</button></a>
<a href="/cheif/${4 }"><button type="button" ${enable }>Table 4</button></a>

	<table class="table table-hover" border="1">
	
			<tr>
			
				<td><th>Food Name</th></td>
				<td><th>Quntatity</th></td>
				
			</tr>
		
			
			<c:forEach items="${orderlist}" var="order">
	<tr>
					
					<td><th><c:out value="${order.foodName}"></c:out></th></td>
					<td><th><c:out value="${order.quantity}"></c:out></th></td>
					<td><th><c:out value="${order.tid}"></c:out></th></td>
					
	</tr>		
			</c:forEach>
			<tr><a href="/cheif/finish/${tableno }"><button  type="button" ${disable }>Completed</button></a></tr>
	
	</table>

<!-- <script type="text/javascript" src="../js/Cheif.js"></script> -->


</body>
</html>