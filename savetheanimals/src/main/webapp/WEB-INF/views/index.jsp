<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Save the Animals</title>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
   href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap"
   rel="stylesheet">

<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="resources/css/animate.css">

<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/css/magnific-popup.css">


<link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="resources/css/jquery.timepicker.css">

<link rel="stylesheet" href="resources/css/flaticon.css">
<link rel="stylesheet" href="resources/css/style.css">
</head>

<body>
   <!-- 메인페이지 -->
  <%@includefile="header.jsp"%>
   <!-- END nav -->
   <div class="hero-wrap js-fullheight"
      style="background-image: url('resources/images/bg_1.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div
            class="row no-gutters slider-text js-fullheight align-items-center justify-content-center"
            data-scrollax-parent="true">
            <div class="col-md-11 ftco-animate text-center">
               <h1 class="mb-4">A country's greatness and morality can be
                  judged by its attitude toward animals.</h1>

            </div>
         </div>
      </div>
   </div>

   <section class="ftco-section bg-light ftco-no-pt ftco-intro">
      <div class="container">
         <div class="row">
            <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
               <div class="d-block services text-center">
                  <div class="icon d-flex align-items-center justify-content-center">
                     <span><img src="resources/images/finding.png"
                        style="height: 65px; width: 65px;"></span>
                  </div>
                  <div class="media-body">
                     <h3 class="heading">유실동물 공고</h3>
                     <p>"Not all homes should have a dog, but all dogs should have a home. 
                     Having faith which has never yet been broken except that of a truly faithful pet.”</p>
                     <a href="${cpath}/ad.do"
                        class="btn-custom d-flex align-items-center justify-content-center">
                        <span class="fa fa-chevron-right"></span><i class="sr-only">Read
                           more</i>
                     </a>
                  </div>
               </div>
            </div>
            <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
               <div class="d-block services text-center">
                  <div class="icon d-flex align-items-center justify-content-center">
                     <span><img src="resources/images/record.png"
                        style="height: 70px; width: 70px;"></span>
                  </div>
                  <div class="media-body">
                     <h3 class="heading">유실동물 등록</h3>
                     <p>"Saving one dog will not change the world, but surely for that one dog, 
                     the world will change forever."</p>
                     <a href="${cpath}/register.do"
                        class="btn-custom d-flex align-items-center justify-content-center">
                        <span class="fa fa-chevron-right"></span><i class="sr-only">Read
                           more</i>
                     </a>
                  </div>
               </div>
            </div>
            <div class="col-md-4 d-flex align-self-stretch px-4 ftco-animate">
               <div class="d-block services text-center">
                  <div class="icon d-flex align-items-center justify-content-center">
                     <span><img src="resources/images/forum.png"
                        style="height: 60px; width: 60px;"></span>
                  </div>
                  <div class="media-body">
                     <h3 class="heading">커뮤니티</h3>
                     <p>“Anyone can learn how to communicate with animals 
                     if they are open to the process and willing to practice.” </p>
                     <a href="${cpath}/commu.do"
                        class="btn-custom d-flex align-items-center justify-content-center">
                        <span class="fa fa-chevron-right"></span><i class="sr-only">Read
                           more</i>
                     </a>
                  </div>
               </div>
            </div>
            <!-- <div class="col-md-3 d-flex align-self-stretch px-4 ftco-animate">
          <div class="d-block services text-center">
            <div class="icon d-flex align-items-center justify-content-center">
              <span><img src="resources/images/pets-allowed.png" style="height: 60px; width:60px;"></span>
            </div>
            <div class="media-body">
              <h3 class="heading">반려 생활 길잡이</h3>
              <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
                there live the blind texts. Separated they live in Bookmarksgrove right.</p>
              <a href="register" class="btn-custom d-flex align-items-center justify-content-center"><span
                  class="fa fa-chevron-right"></span><i class="sr-only">Read more</i></a>
            </div>
          </div>
        </div> -->
         </div>
      </div>
   </section>


   </section>
   <section>
      <%@includefile="footer.jsp"%>
   </section>

   <!-- loader -->
   <div id="ftco-loader" class="show fullscreen">
      <svg class="circular" width="48px" height="48px">
      <circle class="path-bg" cx="24" cy="24" r="22" fill="none"
            stroke-width="4" stroke="#eeeeee" />
      <circle class="path" cx="24" cy="24" r="22" fill="none"
            stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
    </svg>
   </div>

   <script src="resources/js/jquery.min.js"></script>
   <script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
   <script src="resources/js/popper.min.js"></script>
   <script src="resources/js/bootstrap.min.js"></script>
   <script src="resources/js/jquery.easing.1.3.js"></script>
   <script src="resources/js/jquery.waypoints.min.js"></script>
   <script src="resources/js/jquery.stellar.min.js"></script>
   <script src="resources/js/jquery.animateNumber.min.js"></script>
   <script src="resources/js/bootstrap-datepicker.js"></script>
   <script src="resources/js/jquery.timepicker.min.js"></script>
   <script src="resources/js/owl.carousel.min.js"></script>
   <script src="resources/js/jquery.magnific-popup.min.js"></script>
   <script src="resources/js/scrollax.min.js"></script>
   <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
   <script src="resources/js/google-map.js"></script>
   <script src="resources/js/main.js"></script>

</body>

</html>