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
   <!-- 회원가입 페이지 -->
   <%@includefile="header.jsp"%>
    

  <section class="ftco-section bg-light text-center">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-6 text-center mb-5">
          <h2 class="heading-section">회원가입</h2>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-md-7" style="margin: auto;">
          <div class="wrapper">

            <div class="row no-gutters">
              <div class="col-md-12">
                <div class="contact-wrap w-100 p-md-5 p-4">
                  <form method="POST" id="contactForm" name="contactForm" class="contactForm">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="form-group">
                          <input type="text" class="form-control text-center" name="mem_name" id="mem_name" placeholder="이름">
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <input type="text" class="form-control text-center" name="mem_id" id="mem_id" placeholder="아이디">
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <input type="email" class="form-control text-center" name="email" id="email" placeholder="이메일">
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <input type="text" class="form-control text-center" name="subject" id="subject" placeholder="전화번호">
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <input type="password" class="form-control text-center" name="password" id="password" placeholder="비밀번호">
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <input type="submit" value="확인" class="btn btn-primary">
                          <div class="submitting"></div>
                        </div>
                      </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
    </div>
  </section>

   <section>
      <footer class="footer">
         <div class="container">
            <div class="row">
               <div class="col-md-6 col-lg-5 mb-2">
                  <h2 class="footer-heading">Save the Animals</h2>
                  <p>A country's greatness and morality can be judged by its
                     attitude toward animals.</p>

               </div>

               <div class="col-md-6 col-lg-7 pl-lg-3 mb-2">
                  <h2 class="footer-heading">Quick Links</h2>
                  <ul class="list-unstyled">
                     <li><a href="index" class="py-2 d-block">Home</a></li>
                     <li><a href="ad" class="py-2 d-block">유실동물 공고</a></li>
                     <li><a href="register" class="py-2 d-block">유실동물 등록</a></li>
                     <li><a href="commu" class="py-2 d-block">커뮤니티</a></li>
                     <li><a href="about" class="py-2 d-block">반려 생활 길잡이</a></li>
                  </ul>
               </div>

            </div>
         </div>
      </footer>
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