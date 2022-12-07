<%@page import="kr.animal.entity.Animal"%>
<%@page import="java.util.List"%>
<%@page import="kr.animal.mapper.AdMapper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Save the Animals</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/animate.css">
<link rel="stylesheet" href="resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="resources/css/owl.theme.default.min.css">
<link rel="stylesheet" href="resources/css/magnific-popup.css">
<link rel="stylesheet" href="resources/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="resources/css/jquery.timepicker.css">
<link rel="stylesheet" href="resources/css/flaticon.css">
<link rel="stylesheet" href="resources/css/style.css">
<style type="text/css">
p {
   line-height: 1.5;
}

/* Cards */
.card-column {
   width: 100%;
   float: left;
   padding: 4%;
   box-sizing: border-box;
}

.card {
   width: 92%;
   max-width: 400px;
   margin-left: auto;
   margin-right: auto;
   position: relative;
   background: #EB5160;
   color: #fff;
   cursor: pointer;
   margin-bottom: 60px;
}

.border {
   position: absolute;
   width: 100%;
   height: 100%;
   padding: 6px;
   border: 3px solid #ADF8D5;
   opacity: 0.5;
   left: -6px;
   top: -6px;
   background-image: linear-gradient(to right bottom, #e0fff0, #d0fce7, #bffadd, 
   #aef7d4, #9cf4ca, #9df4cb, #9ff4cb, #a0f4cc, #b4f7d7, #c8fae1, #dafdec, #edfff6);
}

.card h1 {
   position: relative;
   padding: 450px 0px 100px 100px;
   width: 90%;
}

.card>img {
   width: 90%;
   position: absolute;
   top: -6%;
   left: -6%;
}

.card-color-0 {
   background-color: #ADF8D5;
}

.thought {
   width: 100%;
   background-image: linear-gradient(to right bottom, #e0fff0, #d0fce7, #bffadd, 
   #aef7d4, #9cf4ca, #9df4cb, #9ff4cb, #a0f4cc, #b4f7d7, #c8fae1, #dafdec, #edfff6);
   border-radius: 30px;
   min-height: 40px;
   position: relative;
   align-items: center;
   justify-content: center;
   text-align: center;
   border-collapse: collapse;
}

.thought:before, .thought:after {
   content: "";
   background-image: linear-gradient(to right bottom, #e0fff0, #d0fce7, #bffadd, 
   #aef7d4, #9cf4ca, #9df4cb, #9ff4cb, #a0f4cc, #b4f7d7, #c8fae1, #dafdec, #edfff6);
   border-radius: 50%;
   display: block;
   position: absolute;
   z-index: -1;
}

.thought:before {
   width: 44px;
   height: 44px;
   top: -12px;
   left: 28px;
   box-shadow: -50px 30px 0 -12px #ADF8D5;
}

.thought:after {
   bottom: -10px;
   right: 26px;
   width: 30px;
   height: 30px;
   background-image: linear-gradient(to right bottom, #e0fff0, #d0fce7, #bffadd, #aef7d4, #9cf4ca, #9df4cb, #9ff4cb, #a0f4cc, #b4f7d7, #c8fae1, #dafdec, #edfff6);
}

</style>

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
               <h1 class="mb-0 bread">공고 상세 내용</h1>
            </div>
         </div>
      </div>
   </section>

   <section class="ftco-section ftco-degree-bg">
      <div class="container">
         <div class="row justify-text-center">
            <div class="col-lg-12 ftco-animate">
               <c:choose>
					<c:when test="${empty AniInfo}">
					<div class="container-table" style="margin-top:15px;">
	                  <table class="table table-hover" >
	                     <tr><th>데이터 불러오기 실패!!!!!!!!!!! </th></tr>
	                  </table>
	               	</div>
					</c:when>
					<c:otherwise>
                     <div class="row">
                        <div class="col-md-6">
                           <div class="card-column"
                              style="display: flex; justify-content: space-around; margin-top: 40px; margin-left: 55px;">
                              <div class="card card-color-0">
                                 <div class="border"></div>
                                 <img src="${AniInfo.aimg_path}" class="img-fluid"
                                    style="display: inline-block; width: 400px;">
                                 <h1>${AniInfo.ani_kind}</h1>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6">

                           <div class="information">
                              <div class="thought row">
                                 <table style="border: hidden; margin-top: 1rem;" class="table table-hover font-weight-normal rounded">
                                    <tr>
                                       <th style="text-align: center; width: 40%;">공고번호</th>
                                       <td>${AniInfo.ani_num}</td>
                                    </tr>
                                    <tr>
                                       <th style="text-align: center;">축종</th>
                                       <td>${AniInfo.ani_livestock}</td>
                                    </tr>
                                    <tr>
                                       <th style="text-align: center;">픔종</th>
                                       <td>${AniInfo.ani_kind}</td>
                                    </tr>
                                    <tr>
                                       <th style="text-align: center;">털색</th>
                                       <td>${AniInfo.ani_color}</td>
                                    </tr>
                                    <tr>
                                       <th style="text-align: center;">성별</th>
                                       <td>${AniInfo.ani_gender}</td>
                                    </tr>
                                    <tr>
                                       <th style="text-align: center;">나이</th>
                                       <td>${AniInfo.ani_age}</td>
                                    </tr>
                                    <tr>
                                       <th style="text-align: center;">중성화 여부</th>
                                       <td>${AniInfo.ani_neutered}</td>
                                    </tr>
                                    <tr>
                                       <th style="text-align: center; overflow-wrap: break-word;">특이사항</th>
                                       <td>${AniInfo.ani_uniqueness}</td>
                                    </tr>
                                    <tr>
                                       <th style="text-align: center;">목격 / 보호 / 유실 장소 주소</th>
                                       <td>${AniInfo.ani_occur_address}</td>
                                    </tr>
                                    <tr>
                                       <th style="text-align: center;">목격 / 보호 / 유실 일자</th>
                                       <td>${AniInfo.ani_datetime}</td>
                                    </tr>
                                    <tr>
                                       <th style="text-align: center;">동물 보호 센터명</th>
                                       <td>${AniInfo.ani_center_name}</td>
                                    </tr>
                                    <tr>
                                       <th style="text-align: center;">보호 장소</th>
                                       <td>${AniInfo.ani_protect_address}</td>
                                    </tr>
                                    <tr>
                                       <th style="text-align: center;">연락처</th>
                                       <td>${AniInfo.ani_phone}</td>
                                    </tr>
                                 </table>

                              </div>

                           </div>
                        </div>
                     </div>
                  </c:otherwise>
					
				</c:choose>
               
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
      <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
      <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
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
   <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
   <script src="resources/js/google-map.js"></script>
   <script src="resources/js/main.js"></script>

</body>

</html>