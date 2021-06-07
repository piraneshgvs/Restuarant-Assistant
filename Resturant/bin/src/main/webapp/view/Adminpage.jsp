<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${title }</title>
  <link rel="stylesheet" href="../css/Adminpage.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(document).ready(function()
{
setInterval(function(){

$("#auto")
});

},2000);
</script>
</head>
<body>
<div class="navbar">
   <a href="/">Home</a>
   <a href="/inventoryform" id="aa" class="btn btn-success">Inventory Page</a>
   <a href="/adminsummary" id="aa" class="btn btn-success">AdminSummary Page</a>
   </div>
<div class="Main">

<h1>Feedback From Customers</h1>
<table border="1" align="center">
	
			<tr>
				<td><th>Phone Number</th></td>
				<td><th>Feedback</th></td>
				
			</tr>
            <c:forEach items="${listfeedback}" var="feed">
			<div id="auto">
	<tr>
					<td><th><c:out value="${feed.id}"></c:out></th></td>
					<td><th><c:out value="${feed.feedback}"></c:out></th></td>
					
	</tr>		
	</div>
			</c:forEach>

</table>

</div>
</body>
</html>