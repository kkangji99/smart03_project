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
<script type="text/javascript">
function joinHello() {
	   var id = document.getElementById("mem_id").value;
	   var email = document.getElementById("mem_email").value;
	   
	   if(email.includes("@")&&email.split("@")[1]){
	      Swal.fire({
	           title: id+'님 반갑습니다 :-)',
	           //text: '저희 사이트를 이용해 주셔서 감사합니다',
	           imageUrl: 'resources/images/joinHelloCat.jpg',
	           imageWidth: 431.1,
	           imageHeight: 431.1,
	           imageAlt: 'image',
	         })
	   }
	}
</script>
</head>
<body>
   <!-- 회원가입 페이지 -->
   <%@includefile="header.jsp"%>
    
  <section class="hero-wrap hero-wrap-2"
      style="background-image: url('resources/images/bg_2.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5">
               <h1 class="mb-0 bread">회원가입</h1>
            </div>
         </div>
      </div>
   </section>

  <section class="ftco-section bg-light text-center">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-7" style="margin: auto;">
          <div class="wrapper">

            <div class="row no-gutters">
              <div class="col-md-12">
                <div class="contact-wrap w-100 p-md-5 p-4">
                  <form method="POST" id="contactForm" name="contactForm" action="${cpath}/join_submit.do" class="contactForm">
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
                          <input type="email" class="form-control text-center" name="mem_email" id="mem_email" placeholder="이메일">
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <input type="text" class="form-control text-center" name="mem_phone" id="mem_phone" placeholder="전화번호">
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <input type="password" class="form-control text-center" name="mem_pw" id="mem_pw" placeholder="비밀번호">
                        </div>
                      </div>
                      <div class="col-md-12">
                        <div class="form-group">
                          <input type="submit" value="확인" class="btn btn-primary" onclick="joinHello()">
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