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
    body {
      font-family: 'Varela Round', sans-serif;
    }
    .modal-confirm {
      color: #636363;
      width: 325px;
    }
    .modal-confirm .modal-content {
      padding: 20px;
      border-radius: 5px;
      border: none;
    }
    .modal-confirm .modal-header {
      border-bottom: none;
      position: relative;
    }
    .modal-confirm h4 {
      text-align: center;
      font-size: 26px;
      margin: 30px 0 -15px;
    }
    .modal-confirm .form-control, .modal-confirm .btn {
      min-height: 40px;
      border-radius: 3px;
    }
    .modal-confirm .close {
      position: absolute;
      top: -5px;
      right: -5px;
    }
    .modal-confirm .modal-footer {
      border: none;
      text-align: center;
      border-radius: 5px;
      font-size: 13px;
    }
    .modal-confirm .icon-box {
      color: #fff;
      position: absolute;
      margin: 0 auto;
      left: 0;
      right: 0;
      top: -70px;
      width: 95px;
      height: 95px;
      border-radius: 50%;
      z-index: 9;
      background: #82ce34;
      padding: 15px;
      text-align: center;
      box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
    }
    .modal-confirm .icon-box i {
      font-size: 58px;
      position: relative;
      top: 3px;
    }
    .modal-confirm.modal-dialog {
      margin-top: 80px;
    }
    .modal-confirm .btn {
      color: #fff;
      border-radius: 4px;
      background: #82ce34;
      text-decoration: none;
      transition: all 0.4s;
      line-height: normal;
      border: none;
    }
    .modal-confirm .btn:hover, .modal-confirm .btn:focus {
      background: #6fb32b;
      outline: none;
    }
    .trigger-btn {
      display: inline-block;
      margin: 100px auto;
    }
      .marq {
          font-size: 36px;
          font-weight: bold;
          color: white;
      }
      .feedbackbtn{
          font-size: 36px;
          font-weight: bold;
          color: white;
      }
  </style>
</head>
<body>
    <marquee bgcolor="green"><div class="marq">Jungle Restaurant !! Thanks For Coming !!</div></marquee>
  <main class="page payment-page">
    <section class="payment-form dark">
      <div class="container">
        <div class="block-heading">
          <h2>Payment</h2>
          
        </div>
        <form>
          <div class="products">
            <div class="total">Please Click Proceed To Pay Your Bill !! Always Welcomes You!!
            </div>
            
          </div>
          <div class="card-details">
            <div class="row">

              <div class="form-group col-sm-12">
                <button type="button" class="btn btn-primary btn-block" onclick="paymentProcess()">Proceed</button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </section>
  </main>
    <center>
     <form class="feedbackbtn" action="/view/Feedback.jsp">
        <button class="feedback">FeedBack</a></button>
        <marquee bgcolor="green">Please Give Your Valuable FeedBack </marquee>
    </form>
    </center>

  <!-- Modal HTML -->
  

<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

<script src="../js/payment.js"></script>
 <script  src="../js/third_js.js"></script>
 <script src="../js/menu_js.js"></script>
</body>
</html>