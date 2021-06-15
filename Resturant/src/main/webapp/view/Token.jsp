<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="../css/Token.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
</head>
<body>
<div class="navbar">
  <button type="button" class="btn btn-danger" onclick="logout()">LOG OUT</button>
   <a href="/">Home</a>
   </div>
  <div class="heading"><h1>Welcome To Jungle Restaurant</h1></div>
<div class="verify">

<form action="/phonenumber" method="post">
<input type="text" id="phone" name="phone" readonly><br><br>
<input type="submit" id="button" class="btn btn-primary" value="Confirm Phone Number To Continue"/>
</form>
</div>

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

		


	<script src="../js/token.js"></script>

</body>
</html>