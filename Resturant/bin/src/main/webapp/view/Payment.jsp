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
  
</head>
<body>
    <marquee bgcolor="black"><div class="marq">Jungle Restaurant !! Thanks For Coming !!</div></marquee>
                 
              <div class="proceed">
                <button type="button" class="btn btn-success btn-block" onclick="paymentProcess()" style="font-size : 40px;">Proceed</button>
              </div>
           
  
  
    
     <form class="feedbackbtn" action="/view/Feedback.jsp">
        <button class="feedback">FeedBack</button>
        
    </form>
 

  <!-- Modal HTML -->
  

<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

<script src="../js/payment.js"></script>
 <script  src="../js/third_js.js"></script>
 <script src="../js/menu_js.js"></script>
</body>
</html>