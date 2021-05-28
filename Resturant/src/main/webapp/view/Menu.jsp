<%@page import="com.example.demo.model.Foods"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>

<html lang="en">
<head>
<meta charset="ISO-8859-1">
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restuarant</title>
     <link rel="stylesheet" href="../css/Menu.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Girassol&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">

</head>
<body>
<section class="sub-header">
      
            <div class="nav-link" id="navlink">
                
                <button type="button" class="bto" onclick="logout()">LOG OUT</button>
          </div>
           <h1>Menu Item</h1>
           
           
        </section>
     
      

         
		<table class="table table-hover">
	
			<tr>
				<td><th>Food id</th></td>
				<td><th>Food Name</th></td>
				<td><th>Price</th></td>
				<td><th>Click Add to Cart</th></td>
			</tr>
		
			
			<c:forEach items="${products}" var="food">
	<tr>
					<td><th><c:out value="${food.fid}"></c:out></th></td>
					<td><th><c:out value="${food.fName}"></c:out></th></td>
					<td><th><c:out value="${food.fPrice}"></c:out></th></td>
					<td><th><a href="${pageContext.request.contextPath }/cart/buy/${food.fid}"><button type="button" class="btn btn-info">Add To Cart</button></a></th></td>
	</tr>		
			</c:forEach>
	
	</table>
	<div>${addMsg}</div>

		<a href="/summary"><button type="button" class="btn btn-success">Go to Cart</button></a>
		
		

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

		
</body>
</html>