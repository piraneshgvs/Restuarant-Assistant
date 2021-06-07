<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <link rel="stylesheet" href="../css/index_style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Document</title>
</head>
<body>
 <div class="navbar">
   <a href="/">Home</a>
   </div>

  <div class="otpbox">
    <!-- Add two inputs for "phoneNumber" and "code" -->
    <label class="phone">Enter Your Phone Number : </label>
    <input type="tel" id="phoneNumber" class="textbox" placeholder="+91**********" onfocus="this.placeholder=''" onblur="this.placeholder='+91**********'"/><br>
    <button id="sign-in-button" class="button" onclick="submitPhoneNumberAuth()">
      <span>SEND CODE</span>
    </button><br> 
    <label class="phone">Enter Your Received OTP :</label> 
    <input type="text" id="code" class="textbox" placeholder="ENTER CODE" onfocus="this.placeholder=''" onblur="this.placeholder='ENTER CODE'"/><br>
    <button id="confirm-code" class="button" onclick="submitPhoneNumberAuthCode()">
   <span>CONFIRM</span> 
    </button>

   
   

    <!-- Add a container for reCaptcha -->
    <div id="recaptcha-container"></div>
  </div>
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