<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.example.demo.model.Foodlist"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart Page</title>
<link rel="stylesheet" href="../css/third.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
  body {
 margin:0;
 }
.navbar {
  z-index: 1;
}

.navbar {
  overflow: hidden;
  background-color:  #FFD801;
  position: fixed;
  top: 0;
  width: 100%;
}

.navbar a {
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

.navbar a:hover {
  background: #ddd;
  color: black;
}
.navbar button:hover {
  background: #ddd;
  color: black;
}
.main {
  padding: 16px;
  margin-top: 30px;
 }

</style>

</head>

<body>
    <%
    String username =(String) session.getAttribute("phone");
    if(username == null)
   {
	response.sendRedirect("/view/index.jsp");
   }
  %>

   <div class="navbar">
    <a href="/" id="aa">Home</a>
    <a href="/view/Menu" id="aa" class="btn btn-success">Continue Fooding</a>
    
 
    <button type="button" class="btn btn-danger" onclick="logout()">LOG OUT</button>
  </div>
    <br>
    
    <div class="tech-slideshow">
  <div class="mover-1"></div>
 
  
</div>
    
	<sf:form name="form" action="saveOrder" modelAttribute="addfood" method="post">
	 <div id="view">
	 <div class="error">${message}</div>	
	<table class="table table-condensed">
	
		<tr>
			
			
			<th>Name</th>
			<th>Price</th>
			<th>Quantity</th>
			<th>Sub Total</th>
			<th>Remove</th>
		</tr>
		
		<c:set var="total" value="0"></c:set>
		<c:forEach var="item" items="${sessionScope.cart }">
			<c:set var="total"
				value="${total + item.product.fPrice * item.quantity }"></c:set>
	 
			<tr>
				
				
				<td>${item.product.fName }</td>
				<td>${item.product.fPrice }</td>
				<td><input type="submit" value="-" onclick="form.action='/cart/alter-minus/${item.product.fid }';"><sf:input path="fQua" value="${item.quantity }" /><input type="submit" value="+" onclick="form.action='/cart/alter-plus/${item.product.fid }';"></td>
				<td>${item.quantity * item.product.fPrice }</td>
				<td><a  class="btn btn-danger"
					href="cart/remove/${item.product.fid }"
					onclick="return confirm('Are you sure?')">Remove</a></td>
			
			</tr>
		</c:forEach>
		
	</table>
	</div>
	<div class="place">
	<table>
	<tr class="No">
		<th>Table Number = </th>
		<td><sf:input path="tableno" list="table" /> <datalist id="table" name="tablenumber">
                 <option value="1">1</option>
                 <option value="2">2</option>
                 <option value="3">3</option>
                 <option value="4">4</option>
                </datalist></td>
                 <td><sf:errors path="tableno" cssStyle="color:red;"></sf:errors>
           </tr>
          
         <tr class="bill"> 
			<th>Total Bill = </th>
			<td><input id="total" path="fTot" value="${total}" readonly/></td>
			
			
		</tr>
	
	</table>
	<input type="submit" class="btn btn-primary btn-lg btn-block" name="place" value="Place Order"/> 
	
	</div> 
	</sf:form>
			
	

	   <!-- The core Firebase JS SDK is always required and must be listed first -->
<script src="https://www.gstatic.com/firebasejs/8.4.3/firebase-app.js"></script>

<!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->
<script src="https://www.gstatic.com/firebasejs/8.4.3/firebase-auth.js"></script>

<script>
  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
  var firebaseConfig = {
    apiKey: "AIzaSyAMsPB_Bo91EvPkY44QYZygR8PUm787Jsc",
    authDomain: "first-project-2e8f1.firebaseapp.com",
    projectId: "first-project-2e8f1",
    storageBucket: "first-project-2e8f1.appspot.com",
    messagingSenderId: "723844954277",
    appId: "1:723844954277:web:7d122bced191080036b54c",
    measurementId: "G-9CRTRCXD8P"
  };
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
   
  
</script>	

	<script src="../js/app.js"></script>
	<script src="../js/third_js.js"></script>
	
	
	


</body>
</html>