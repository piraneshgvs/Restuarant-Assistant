<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restuarant</title>
    <link rel="stylesheet" href="../css/present.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Girassol&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css">  
</head>
<body>
    <section class="header">
        <nav>
            <a href="Jaga Restuarant.html"><img src="../images/logo.jpg"></a>
            <div class="nav-link" id="navlink">
                <i class="fa fa-times" onclick="hidemenu()"></i>
                <ul>
                     <li><a href="">ADMIN</a></li>
                    <li><a href="">CHEF</a></li>
                    <li><a href="./view/index.jsp">USERS</a></li>
                    <li><a href="./view/About.html">ABOUT</a></li>

                </ul>
            </div>
            <i class="fa fa-bars" onclick="showmenu()"></i>
        </nav> 
        <div class="text-box">
            <h1>Welcome To largest Jungle Restuarant</h1>
            <p>Choose your delicious food....High Quality Foods....Realife Jungle Experience</p>
            <a href="./view/Menu Duplicate.html" class="hero-btn">Explore Now</a>
        </div>

    </section>
    <!---------Food Style----------------------->
    <section class="food-style">
        <h1>Food Style</h1>
        <div class="row">
            <div class="food-col">
                <h3>INDIAN STYLE</h3>
                <p>Indian cuisine consists of a variety of regional and traditional cuisines native to the Indian subcontinent.</p>
            </div>
            <div class="food-col">
                <h3>CHINESE STYLE</h3>
                <p>Chinese food, rich and colorful, has diversified color, aromatic flavor, and excellent taste as its main features.</p> 
            </div>
        </div>

    </section>
    <!-----------------Footer-------------------->
    <section class="footer">
        <h4>About Us</h4>
        <p>
        <br>We are special in Chinese, French, Tandoori, Indian, Continental and Arabic cuisine. Join us for a delightful food at our multi-cuisine restaurant with your Family<br>
        <br>Take your pick and we will pamper you with fine dine experience to relish a menu specially designed by our chefs.</p>
        <div class="icon">
            <i class="fa fa-facebook-official"></i>
            <i class="fa fa-twitter"></i>
            <i class="fa fa-whatsapp"></i>
        </div>
        <p>Made by Scorpion King's</p>
    </section>
    <!----------Javascript for toggle menu------->
    <script>
        var navlink=document.getElementById("navlink");
        function showmenu(){
            navlink.style.right="0"
        }
        function hidemenu(){
            navlink.style.right="-200px"
        }
    </script>
</body>
</html>