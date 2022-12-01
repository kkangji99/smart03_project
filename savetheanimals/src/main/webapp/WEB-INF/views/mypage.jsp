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

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

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
	<!-- 마이페이지 페이지 -->
	<%@includefile="header.jsp"%>
	<!-- END nav -->
  <section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/image_4.jpg');"
    data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
      <div class="row no-gutters slider-text align-items-end">
        <div class="col-md-9 ftco-animate pb-5">
          <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index">Home <i
                  class="ion-ios-arrow-forward"></i></a></span> <span>My Page <i
                class="ion-ios-arrow-forward"></i></span>
          </p>
          <h1 class="mb-0 bread">My Page</h1>
        </div>
      </div>
    </div>
  </section>

  <section class="ftco-section bg-light">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-6 text-center mb-5">
          <h2 class="heading-section">My Page</h2>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-md-12">
          <div class="wrapper">

            <div class="row">
              <div class="col-md-12">
                <div class="contact-wrap w-100 p-md-5 p-4">
                  <div class="row col-md-12 justify-content-center">

                    <div class="row col-md-12 p-md-4">
                      <div class="col-md-3" style="text-align: center;">
                        아이디 :
                      </div>
                      <div class="col-md-3">
                        아이디 수정 안됨......
                      </div>
                      <!-- </div> -->
                      <!-- <div class=" row col-md-6"> -->
                      <div class="col-md-3" style="text-align: center;">
                        이름 :
                      </div>
                      <div class="col-md-3">
                        <input type="text" style="border-radius: 5px;">
                      </div>
                    </div>

                    <div class="row col-md-12 p-md-4">
                      <div class="col-md-3" style="text-align: center;">
                        전화번호 :
                      </div>
                      <div class="col-md-3">
                        <input type="text" style="border-radius: 5px;">
                      </div>
                      <!-- </div> -->
                      <!-- <div class=" row col-md-6"> -->
                      <div class="col-md-3" style="text-align: center;">
                        이메일 :
                      </div>
                      <div class="col-md-3">
                        <input type="text" style="border-radius: 5px;">
                      </div>
                    </div>

                    <div class="row col-md-6">
                      <div class="col-md-6" style="text-align: center;">
                        비밀번호 :
                      </div>
                      <div class="col-md-6">
                        <input type="text" style="border-radius: 5px;">
                      </div>
                    </div>

                    <div class="row col-md-12 p-md-4 p-4 justify-content-center">
                      <button type="button" id="edit" class="btn btn-primary">수정</button>
                      <!-- <button type="button" id="edit" class="btn btn-primary ml-3">수정</button> -->
                    </div>

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