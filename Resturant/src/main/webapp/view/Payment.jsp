<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>




<html>
<head>
  <title>Payment</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
 
  <link rel="stylesheet" href="../css/payment.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
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
  </div>

  
                 
              <div class="proceed">
                <button type="button" class="btn btn-success" onclick="paymentProcess()" style="font-size : 40px;">Tap To Pay</button>
              </div>
           
  
  
  
    
 

  <!-- Modal HTML -->
  

<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

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
	<script src="../js/payment.js"></script>
	
	
	
</body>
</html>