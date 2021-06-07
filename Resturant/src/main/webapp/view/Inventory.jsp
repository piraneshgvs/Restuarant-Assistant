<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.example.demo.model.Status"%>
   
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
.navbar .logo img{
  height:5rem;
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

#view{
padding-top:10%;
}
</style>

   
</head>
<body>

 <div class="navbar">
	<a href="/" class="logo"><img src="../images/logo-img.png" alt="Home"></a>
	<a href="/view/Adminlogin.jsp" id="aa" class="btn btn-success">Admin Home</a>
	<a href="/inventoryform" id="aa" class="btn btn-success">Inventory Page</a>
	<a href="/adminsummary" id="aa" class="btn btn-success" aria-disabled="true">AdminSummary Page</a>
    <table class="table table-hover">
    	<tr>
		<form:form action="/addfood">
				<td><th><input id="foodname" name="foodname"></th></td>
				<td><th><input id="foodprice" name="foodprice"></th></td>
				<td><th><input type="submit" value="ADD FOOD"></th></td>
		</form:form>
			</tr>
		
				<tr>
					<form:form action="/updateform" method="post">
				<td><th><input id="name" name="name" value="${foodname }"></th></td>
				<td><th><input id="price" name="price" value="${foodprice }"></th></td>
				<td><th><input id="id" name="id" value="${foodid }"></th></td>
				<td><th><input type="submit" value="UPDATE FOOD"></th></td>
		</form:form>
			</tr>
			</table>
    </div>
    <div id="view">
<input type="text" id="" name="phone" readonly>
 <table class="table table-hover">
	
			<tr>
				<td><th>Food Name</th></td>
				<td><th>Food Price</th></td>
				<td><th>Edit</th></td>
				<td><th>Remove</th></td>
			</tr>
		
		
			
			<c:forEach items="${allfoods }" var="food" varStatus="loopCount">
	<tr>

					<td><th><c:out value="${food.fName}"></c:out></th></td>
					<td><th><c:out value="${food.fPrice}"></c:out></th></td>
					<td><th><a href="${pageContext.request.contextPath }/item/edit/${food.fid}"><button type="button" class="btn btn-info">Edit</button></a></th></td>
					<td><th><a href="${pageContext.request.contextPath }/item/delete/${food.fid}"><button type="button" class="btn btn-danger">Remove</button></a></th></td>
        		    <c:set var="string" value="${variable[(loopCount.count)-1]}"></c:set>
        		    <td><th>${string}</th></td>
        		     <td><th><a href="${pageContext.request.contextPath }/foodnotavailable/${food.fid}"><button type="button" class="btn btn-warning" <c:if test="${string =='no'}"><c:out value="disabled='disabled'"/></c:if> >NOT AVAILABLE</button></a></th></td>
        		   
			         <td><th><a href="${pageContext.request.contextPath }/foodavailable/${food.fid}"><button type="button" class="btn btn-success">AVAILABLE</button></a></th></td>
			        
			</tr>
			</c:forEach>
	
	</table>
	<br><br>
	</div>
	
<div>${addMsg}</div>



</body>
</html>