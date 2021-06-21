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
.Maintable {
  z-index: 1;
}
.Maintable{
 overflow: hidden;
  background-color:pink;
  position: absolute;
  bottom:0;
  width: 100%;
}

 #view{
   background-color: lightblue;
   position: fixed; 
   top: 50px; 
   margin-left:auto;
   margin-right: auto;
   bottom:250px; 
   overflow: auto; 
   width: 1360px;
  
 }
 
 

</style>

   
</head>
<body>
<%
String username =(String) session.getAttribute("id");
if(username == null)
{
	response.sendRedirect("/view/login.jsp");
}
%>

 <div class="navbar">
   <a href="/" id="aa">Home</a>
    <a href="./view/login.jsp" id="aaa"  class="btn btn-danger">LOG OUT</a>
   <a href="./view/Adminsummary.jsp" ><button id="aaa" class="btn btn-success">AdminSummary Page</button></a>
   </div>
   <div class="Maintable">
    <table class="table table-hover">
    <tr><td><th>Add the Food Item</th></td></tr>
    <tr>
    <td><th>Enter the Food Name</th></td>
    <td><th>Choose Food Image</th></td>
    <td><th>Enter the Food Price</th></td>
    </tr>
    	<tr>

		<form:form action="/addfood" enctype="multipart/form-data">
		        
				<td><th><input id="foodname" name="foodname"></th></td>
				<td><th><input type="file" id="images" name="images"></th></td>
				<td><th><input id="foodprice" name="foodprice"></th></td>
				<td><th><input type="submit" class="btn btn-success" value="ADD FOOD"></th></td>
		</form:form>
			</tr>
		  <tr><td><th>Edit the Food Item(Click the edit button to edit the food item)</th></td></tr>
    <tr>
    <td><th>Food ID</th></td>
    <td><th>Edit the Food Name</th></td>
    <td><th>Edit the Food Price</th></td>
    </tr>
				<tr>
					<form:form action="/updateform" method="post">
			    <td><th><input id="id" name="id" value="${foodid }" readonly></th></td>
				<td><th><input id="name" name="name" value="${foodname }"></th></td>
				<td><th><input id="price" name="price" value="${foodprice }"></th></td>
				<td><th><input type="submit" class="btn btn-success" value="UPDATE FOOD"></th></td>
		</form:form>
			</tr>
			</table>
			</div>
   
    <div id="view">
    <div class="innertube">
 <table class="table table-hover">
	
			<tr>
				<td><th>Food Name</th></td>
				<td><th>Food Price</th></td>
				<td><th>Edit</th></td>
				<td><th>Remove</th></td>
				<td><th>Available</th></td>
				<td><th>Unavailable</th></td>
			</tr>
		
		
			
			<c:forEach items="${allfoods }" var="food" varStatus="loopCount">
	<tr>

					<td><th><c:out value="${food.fName}"></c:out></th></td>
					<td><th><c:out value="${food.fPrice}"></c:out></th></td>
					<td><th><a href="${pageContext.request.contextPath }/item/edit/${food.fid}"><button type="button" class="btn btn-info">Edit</button></a></th></td>
					<td><th><a href="${pageContext.request.contextPath }/item/delete/${food.fid}"><button type="button" class="btn btn-danger">Delete</button></a></th></td>
        		     <td><th><a href="${pageContext.request.contextPath }/foodnotavailable/${food.fid}"><button type="button" class="btn btn-warning" <c:if test="${food.available =='no'}"><c:out value="disabled='disabled'"/></c:if> >NOT AVAILABLE</button></a></th></td>
        		   
			         <td><th><a href="${pageContext.request.contextPath }/foodavailable/${food.fid}"><button type="button" class="btn btn-success" <c:if test="${food.available =='yes'}"><c:out value="disabled='disabled'"/></c:if>>AVAILABLE</button></a></th></td>
			        
			</tr>
			</c:forEach>
	
	</table>
	<br><br>
	</div>
	</div>
	
	




</body>
</html>