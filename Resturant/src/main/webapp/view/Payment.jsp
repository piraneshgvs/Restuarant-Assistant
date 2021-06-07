<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>




<html>
<head>
  <title>Payment</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <link rel="stylesheet" href="../css/payment.css">
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
.main {
  padding: 16px;
  margin-top: 30px;
 }
 

</style>
</head>
<body>

 <div class="navbar">
   <a href="/" id="aa">Home</a>
    <a href="./view/Adminlogin.jsp" id="aaa"  class="btn btn-danger">LOG OUT</a>
   <a href="./view/Adminsummary.jsp" ><button id="aaa" class="btn btn-success">AdminSummary Page</button></a>
  
</div>

  
                 
              <div class="proceed">
                <button type="button" class="btn btn-success btn-block" onclick="paymentProcess()" style="font-size : 40px;">Tap To Pay</button>
              </div>
           
  
  
    
    
 

  <!-- Modal HTML -->
  

<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

<script src="../js/payment.js"></script>
 <script  src="../js/third_js.js"></script>
 <script src="../js/menu_js.js"></script>
</body>
</html>