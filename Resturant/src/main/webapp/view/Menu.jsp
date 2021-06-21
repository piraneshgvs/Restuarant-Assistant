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
    <title>Restaurant</title>
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
<style>
<style>
body {
margin:0;
}
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

.navbar a:hover {
  background: #ddd;
  color: black;
}
.navbar button:hover {
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
	response.sendRedirect("index.jsp");
  }
  %>
   <div class="navbar">
   <a href="/" id="aa">Home</a>
   <button type="button" class="btn btn-danger" onclick="logout()">LOG OUT</button>
   <a href="/summary" class="btn btn-success">Go to Cart</a>
   </div>
      
            
          <br>
    
     <div class="main">
  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
       <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img class="fill" src="../images/Main1.jpg" style="width:100%;"> 
      </div>

      <div class="item">
        <img class="fill" src="../images/Main2.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img class="fill"  src="../images/Main3.jpeg" alt="New york" style="width:100%;">
      </div>
      
      <div class="item">
        <img class=""  src="../images/Main4.png" alt="New york" style="width:100%;">
      </div>
      
    </div>
  </div>
  <br>
  <table class="table table-hover">
	
			<tr class="head">
				
				<td><th>Food Name</th></td>
				<td><th>Images</th></td>
				<td><th>Price</th></td>
				<td><th>Click Add to Cart</th></td>
			</tr>
		
			
			<c:forEach items="${products}" var="food">
	<tr class="food">
					
					<td><th><c:out value="${food.fName}"></c:out></th></td>
					<td><th><img width=200 height=150 src="data:image/jpg;base64,${food.image}" /></</th></td>
					<td><th><c:out value="${food.fPrice}"></c:out></th></td>
					<td><th><a href="${pageContext.request.contextPath }/cart/buy/${food.fid}"><button type="button" class="btn btn-info">Add To Cart</button></a></th></td>
	</tr>		
			</c:forEach>
	
	</table>
	</div>
	<div>${addMsg}</div>

	
		
		

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