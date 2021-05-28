<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart Page</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
</head>
<body>

	<h3 >Cart Page</h3>

	<form:form action="saveOrder" modelAttribute="addfood" method="post">
	
	<table class="table table-hover">
		<tr>
			<th>Option</th>
			<th>Id</th>
			<th>Name</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Sub Total</th>
		</tr>
		
		<c:set var="total" value="0"></c:set>
		<c:forEach var="item" items="${sessionScope.cart }">
			<c:set var="total"
				value="${total + item.product.fPrice * item.quantity }"></c:set>
	 
			<tr>
				<td align="center"><a  class="btn btn-danger"
					href="cart/remove/${item.product.fid }"
					onclick="return confirm('Are you sure?')">Remove</a></td>
				<td><form:input path="fid" value="${item.product.fid }"/></td>
				<td>${item.product.fName }</td>
				<td>${item.product.fPrice }</td>
				<td><input type="submit" value="-" onclick="form.action='/cart/alter-minus/${item.product.fid }';"><form:input path="fQua" value="${item.quantity }" /><input type="submit" value="+" onclick="form.action='/cart/alter-plus/${item.product.fid }';"></td>
				<td>${item.quantity * item.product.fPrice }</td>
			
			</tr>
		</c:forEach>
		<tr>
		<td class="btn btn-warning">Table Number</td>
		<td><input name="tableno" list="table" path="tabno"/> <datalist id="table" name="tablenumber">
                 <option value="1">1</option>
                 <option value="2">2</option>
                 <option value="3">3</option>
                 <option value="4">4</option>
                </datalist></td>
			<td colspan="6" align="right">Sum</td>
			<td><form:input path="fTot" value="${total }"/></td>
		</tr>
	</table>
	<input type="submit" class="btn btn-success" name="place" value="Place Order"/>  
	</form:form>
	<br>
	
	<br>
<a href="/view/Menu">Continue
		fooding</a>

<script src="../js/third_js.js"></script>
</body>
</html>