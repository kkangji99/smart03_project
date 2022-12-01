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
   <!-- 유실동물 공고 상세 페이지 -->
 <%@includefile="header.jsp"%>
   <!-- END nav -->
   <section class="hero-wrap hero-wrap-2"
      style="background-image: url('resources/images/bg_2.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5">
               <p class="breadcrumbs mb-2">
                  <span class="mr-2"><a href="index">Home <i
                        class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a
                     href="blog">공고 <i class="ion-ios-arrow-forward"></i></a></span> <span>상세
                     내용 <i class="ion-ios-arrow-forward"></i>
                  </span>
               </p>
               <h1 class="mb-0 bread">공고 내용</h1>
            </div>
         </div>
      </div>
   </section>

   <section class="ftco-section ftco-degree-bg">
      <div class="container">
         <div class="row justify-text-center">
            <div class="col-lg-12 ftco-animate">
               <div class="conainer-images">
                  <div id="myImages" class="carousel slide "
                     style="max-width: 80%; max-height: 60%; margin: 0 auto"
                     data-ride="carousel">

                     <ol class="carousel-indicators">
                        <li data-target="myImages" data-slide-to="0" class="active"></li>
                        <li data-target="myImages" data-slide-to="1"></li>
                        <li data-target="myImages" data-slide-to="2"></li>
                        <li data-target="myImages" data-slide-to="3"></li>
                        <li data-target="myImages" data-slide-to="4"></li>
                        <li data-target="myImages" data-slide-to="5"></li>
                     </ol>

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner" role="listbox">
                        <!-- db conect -->
                        <img src="resources/images/image_1.jpg" alt="" class="img-fluid">
                     </div>

                     <!-- Left and right controls -->
                     <a class="left carousel-control" href="myImages" role="button"
                        data-slide="prev"> <span
                        class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                     </a> <a class="right carousel-control" href="myImages" role="button"
                        data-slide="next"> <span
                        class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                     </a>
                  </div>

                  <!-- Left and right controls -->
                  <a class="left carousel-control" href="#myCarousel" role="button"
                     data-slide="prev"> <span
                     class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                     <span class="sr-only">Previous</span>
                  </a> <a class="right carousel-control" href="#myCarousel"
                     role="button" data-slide="next"> <span
                     class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                     <span class="sr-only">Next</span>
                  </a>
               </div>
               <h2 class="mb-3 text-center">공고</h2>
               <div class="container-table">
                  <table class="table table-hover" >
                     <tr>
                        <th>공고번호</th>
                     </tr>
                     <tr>
                        <th>축종</th>
                     </tr>
                     <tr>
                        <th>픔종</th>
                     </tr>
                     <tr>
                        <th>털색</th>
                     </tr>
                     <tr>
                        <th>성별</th>
                     </tr>
                     <tr>
                        <th>나이</th>
                     </tr>
                       <tr><th>중성화 여부</th></tr>
        <tr><th>특이사항</th></tr>
        <tr><th>목격 / 보호 / 유실 장소 주소</th></tr>
        <tr><th>목격 / 보호 / 유실 일자</th></tr>
        <tr><th>동물 보호 센터명</th></tr>
        <tr><th>보호 장소</th></tr>
        <tr><th>연락처</th></tr>
        <tr><th>회원번호</th></tr>
        <tr><th>카테고리코드</th></tr>
   
                     
                     <tbody>
                     
                     
                     </tbody>
                  </table>
               </div>
            </div>
         </div>
      </div>
   </section>
   <!-- .section -->

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