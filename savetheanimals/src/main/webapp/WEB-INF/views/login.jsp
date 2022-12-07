<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
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
<script src="https://code.jquery.com/jquery-latest.js"></script> 


</head>
<body>
   <!-- 로그인  페이지 -->
   <%@includefile="header.jsp"%>


   <!-- END nav -->
   <section class="hero-wrap hero-wrap-2"
      style="background-image: url('resources/images/bg_2.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5">
               <h1 class="mb-0 bread">로그인</h1>
            </div>
         </div>
      </div>
   </section>

   <section class="ftco-section bg-light">
      <div class="container">
         <div class="row justify-content-center">
            <div class="col-md-12">
               <div class="wrapper">

                  <div class="row no-gutters">
                     <div class="col-md-7" style="margin: auto;">
                        <div class="contact-wrap w-100 p-md-5 p-4">
                           <form method="post" id="contactForm" name="contactForm"
                              action="${cpath}/login_submit.do" class="contactForm">
                              
                              <c:if test="${LoginFailMessage!=null}">
								<div id="myModal" class="modal">
							      <div class="modal-content">
							                <p style="text-align: center;"><span style="font-size: 14pt;"><b><span style="font-size: 24pt;">로그인 오류</span></b></span></p>
							                <p style="text-align: center; line-height: 1.5;"><br/></p>
							                <p style="text-align: center; line-height: 1.5;"><span style="font-size: 14pt;">아이디와 비밀번호를 다시 입력하세요.</span></p>
							                <p style="text-align: center; line-height: 1.5;"><br /></p>
							            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
							                <span class="pop_bt" style="font-size: 13pt;" >
							                     		닫기
							                </span>
							            </div>
							      </div>
							 
							    </div>
                                  <script type="text/javascript">
      
							        jQuery(document).ready(function() {
							                $('#myModal').show();
							        });
							        //팝업 Close 기능
							        function close_pop(flag) {
							             $('#myModal').hide();
							        };
							        
							      </script>
                                  
                              </c:if>
							 
                              <div class="row">
                                 <div class="col-md-12 text-center">
                                    <div class="form-group">
                                       <input type="text" class="form-control text-center"
                                          name="mem_id" id="mem_id" placeholder="아이디" required></input>
                                    </div>
                                 </div>
                                 <div class="col-md-12 text-center">
                                    <div class="form-group">
                                       <input type="password" class="form-control text-center"
                                          name="mem_pw" id="mem_pw" placeholder="비밀번호" required></input>
                                    </div>
                                 </div>

                                 <div class="col-md-12 text-center">
                                    <div class="form-group">
                                       <input type="submit" class="btn btn-primary" value="확인"></input>
                                    </div>

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