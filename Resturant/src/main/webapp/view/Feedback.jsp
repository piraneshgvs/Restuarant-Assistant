<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FeedBack</title>
    <link rel="stylesheet" href="../css/feedback.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   
</head>
<body>
    
    <div class="container">
        <div class="row">
                <h1>FeedBack Survey</h1>
        </div>
        <div class="row">
                <h4 style="text-align:center">We'd love to hear from you!</h4>
        </div>
        <form action="/feedback" method="post">
        <div class="row input-container">
              
                <div class="col">
                    <div class="styled-input wide">
                        <input type="text" name="feedbac"/>
                        <label>Message</label>
                    </div>
                </div>
                <div class="col">
                    <div class="btn-lrg submit-btn"><input value="Submit Feedback" type="submit"/></div>
                </div>
        </div>
        </form>
    </div>
    <a href="/inventoryform"><button type="button" class="btn btn-success">Inventory Page</button></a>
    <a href="/adminsummary"><button type="button" class="btn btn-success">AdminSummary Page</button></a>
</body>
</html>