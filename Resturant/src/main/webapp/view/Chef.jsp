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
<title>Order Details Page</title>
<link rel="stylesheet" href="../css/Chef.css">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
   <a href="/">Home</a>
  <a href="./view/login.jsp" id="logout" type="button"  class="btn btn-danger">LOG OUT</a>
 
   </div>


       <div class="Error">${msg}</div>

	   <c:forEach items="${details }" var="detail" varStatus="loopCount">
			

	       <table>
	            <colgroup>
                 <col span="1" style="width: 10%;">
                 <col span="1" style="width: 40%;">
                  <col span="1" style="width: 10%;">
                   <col span="1" style="width: 20%;">
                </colgroup>
			<tr>
			
				<th>Table No</th>
				<th>Food Name</th>
			    <th>Quantity</th>
					
			</tr>
		
			         <c:forEach items="${detail}" var="order">
	                 <c:set var="string" value="${userList[(loopCount.count)-1]}"/>
	                
					<c:if test="${fn:substring(string,22,65)  eq order.user_id}">
					<tr>
					<td><c:out value="${order.tableNo}"></c:out></td>
					<td><c:out value="${order.foodId}"></c:out></td>
					<td><c:out value="${order.quantity}"></c:out></td>
					
					</c:if>
		
			</c:forEach>
			<td><a href="/chef/finish/${fn:substring(string,22,65) }"><button class="btn btn-success">Completed</button></a></td>
			          </tr>
	</c:forEach>

	</table>





</body>
</html>