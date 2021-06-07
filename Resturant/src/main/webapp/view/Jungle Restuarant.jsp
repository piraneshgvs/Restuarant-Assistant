<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jungle Restuarant</title>

    <!-- aos css cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css">

    <!-- google fonts cdn link  -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;400;500&family=Roboto:wght@100;300;400;500&display=swap" rel="stylesheet">

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="../css/Jungle Restuarant.css">

</head>
<body>
    
<!-- header section starts  -->

<header>

    <a href="#" class="logo"><img src="../images/logo-img.png" alt=""></a>

    <div id="menu-bar" class="fas fa-hamburger"></div>

    <nav class="navbar">
        <ul>
            <li><a class="active" href="#home">home</a></li>
            <li><a href="#about">about</a></li>
            <li><a href="#menu">menu</a></li>
            <li><a href="#popular">popular</a></li>
            <li><a href="#gallery">gallery</a></li>
            <li><a href="./view/Adminlogin.jsp">Staff</a></li>
            <li><a href="./view/index.jsp">Users</a></li>
        </ul>
    </nav>

</header>

<!-- header section ends -->

<!-- home section starts  -->

<section class="home" id="home">

    <div class="content" data-aos="fade-right">
        <h3>Welcome To Jungle Restuarant!!!!</h3>
        <p>We belive good food offer great smile</p>
        <a href="./view/index.jsp"><button class="btn">get started</button></a>
    </div>

    <div class="image" data-aos="fade-up">
        <img src="../images/home-img.png" alt="">
    </div>

</section>

<!-- home section ends -->

<!-- about section starts  -->

<section class="about" id="about">

    <div class="image" data-aos="fade-right"></div>

    <div class="content" data-aos="fade-left">
        <h3>a word about us</h3>
        <p>We are providing food to the people since 1960.</p>
        <p>The Reason why we popular because of our way of serving the food and maintaining hygiene throughout the Restuarant.</p>
    </div>

</section>

<!-- about section ends -->



<!-- popular section starts  -->

<section class="popular" id="popular">

<h1 class="heading"> most <span>popular</span> foods </h1>

<div class="box-container">

    <div class="box" data-aos="fade-right">
        <img src="../images/product1.jpg" alt="">
        <h3>Pizza</h3>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
        </div>
        <div class="price">Rs.150.00</div>
        <a href="../view/index.jsp"><button class="btn">add to cart</button></a>
    </div>

    <div class="box" data-aos="fade-left">
        <img src="../images/product2.jpg" alt="">
        <h3>Chicken Briyani</h3>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
          
        </div>
        <div class="price">Rs.120.00</div>
        <a href="../view/index.jsp"><button class="btn">add to cart</button></a>
    </div>

    <div class="box" data-aos="fade-right">
        <img src="../images/product3.jpg" alt="">
        <h3>Fish Fry</h3>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
        </div>
        <div class="price">Rs.250.00</div>
        <a href="../view/index.jsp"><button class="btn">add to cart</button></a>
    </div>

    <div class="box" data-aos="fade-left">
        <img src="../images/product4.jpg" alt="">
        <h3>Chappathi</h3>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
        </div>
        <div class="price">Rs.50.00</div>
        <a href="../view/index.jsp"><button class="btn">add to cart</button></a>
    </div>

</div>

</section>

<!-- popular section ends -->

<!-- gallery section starts  -->

<section class="gallery" id="gallery">

<h1 class="heading"> our food <span>gallery</span> </h1>

<div class="box-container">

    <div class="box" data-aos="fade-up">
        <img src="../images/im1.jpg" alt="">
        <h3>Burger</h3>
    </div>

    <div class="box" data-aos="fade-up">
        <img src="../images/img2.jpg" alt="">
        <h3>Briyani</h3>
    </div>

    <div class="box" data-aos="fade-up">
        <img src="../images/img3.jpg" alt="">
        <h3>Chappathi</h3>
    </div>

    <div class="box" data-aos="fade-up">
        <img src=".//images/img4.jpg" alt="">
        <h3>Noddles</h3>
    </div>

    <div class="box" data-aos="fade-up">
        <img src="../images/img5.jpg" alt="">
        <h3>Dosa</h3>
    </div>

    <div class="box" data-aos="fade-up">
        <img src="../images/img6.jpg" alt="">
        <h3>Pizza</h3>
    </div>

</div>

</section>

<!-- gallery section ends -->



<!-- footer section starts  -->

<div class="footer">

    <div class="box-container">

        <div class="box">
            <h3>contact info</h3>
            <p> <i class="fas fa-map-marker-alt"></i> mumbai, indai 400104 </p>
            <p> <i class="fas fa-envelope"></i> example@gmail.com </p>
            <p> <i class="fas fa-phone"></i> +123-456-7890 </p>
            <p> <i class="fas fa-phone"></i> +111-222-333 </p>
        </div>

        <div class="box">
            <h3>branch location</h3>
            <a href="#">india</a>
            <a href="#">USA</a>
            <a href="#">france</a>
            <a href="#">russia</a>
        </div>

        <div class="box">
            <h3>quick links </h3>
            <a href="#">home</a>
            <a href="#">about</a>
            <a href="#">menu</a>
            <a href="#">popular</a>
            <a href="#">gallery</a>
            <a href="#">order</a>
        </div>

        <div class="box">
            <h3>follow us</h3>
            <a href="#">instagram</a>
            <a href="#">facebook</a>
            <a href="#">twitter</a>
            <a href="#">linkedin</a>
        </div>

    </div>

   

</div>

<!-- footer section ends -->













<!-- aos js cdn link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>

<!-- jquery cdn link  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<!-- custom js file link  -->
<script src="../js/Jungle Restuarant.js"></script>

<!-- initializing aos  -->

<script>

    AOS.init({
        delay:400,
        duration:1000
    })

</script>

</body>
</html>