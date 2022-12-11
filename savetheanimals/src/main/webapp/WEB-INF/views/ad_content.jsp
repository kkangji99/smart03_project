<%@page import="kr.animal.entity.Animal"%>
<%@page import="java.util.List"%>
<%@page import="kr.animal.mapper.AdMapper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<link rel="stylesheet" href="resources/css/cursor.css">
<style type="text/css">
.info-row {
   border: double;
   border-radius: 25px;
}

.col img {
width: 50%;
    padding: 0.5em;
    max-height: 45vh;
    margin-bottom: 1em;
    border-radius: 20%;
    border-style: outset;
}



}

td {
   text-align: center;
   width: 60%;
}

#sticky {
   position: -webkit-sticky; /* Safari */
   position: sticky;
   bottom: 0;
   opacity: 0.5;
   height: 20vh;
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
      <div class="container" style="max-width: 50vw;">
         <c:choose>
            <c:when test="${empty AniInfo}">
               <div class="container-table" style="margin-top: 15px;">
                  <table class="table table-hover">
                     <tr>
                        <th>데이터 불러오기 실패!!!!!!!!!!!</th>
                     </tr>
                  </table>
               </div>
            </c:when>
            <c:otherwise>
               <div class="col" style="display: flex; justify-content: center;">
                  <img src="${AniInfo.aimg_path}" class="img-cont">
               </div>

               <div class="info-row">
                  <div class="col-lg-12">
                     <div class="information">
                        <table style="color: black; width: 100%; font-size: 1em;"
                           class="table table-hover font-weight-normal">
                           <%-- <tr>
                                    <th style="text-align: center; width: 40%;">공고번호</th>
                                    <td>${AniInfo.ani_num}</td>
                                 </tr> --%>
                           <tr>
                              <th style="text-align: center; width: 40%;">축종</th>
                              <td style="text-align: center;">${AniInfo.ani_livestock}</td>
                           </tr>
                           <tr>
                              <th style="text-align: center; width: 40%;">품종</th>
                              <td style="text-align: center;">${AniInfo.ani_kind}</td>
                           </tr>
                           <tr>
                              <th style="text-align: center;">털색</th>
                              <td style="text-align: center;">${AniInfo.ani_color}</td>
                           </tr>
                           <tr>
                              <th style="text-align: center;">성별</th>
                              <td style="text-align: center;">${AniInfo.ani_gender}</td>
                           </tr>
                           <tr>
                              <th style="text-align: center;">나이</th>
                              <td style="text-align: center;">${AniInfo.ani_age}</td>
                           </tr>
                           <tr>
                              <th style="text-align: center;">중성화 여부</th>
                              <td style="text-align: center;">${AniInfo.ani_neutered}</td>
                           </tr>
                           <tr>
                              <th style="text-align: center; overflow-wrap: break-word;">특이사항</th>
                              <td style="text-align: center;">${AniInfo.ani_uniqueness}</td>
                           </tr>
                           <tr>
                              <th style="text-align: center;">목격 /보호 /유실 장소 주소</th>
                              <td style="text-align: center;">${AniInfo.ani_occur_address}</td>
                           </tr>
                           <tr>
                              <th style="text-align: center;">목격 /보호 /유실 일자</th>
                              <td style="text-align: center;">${AniInfo.ani_datetime}</td>
                           </tr>
                           <tr>
                              <th style="text-align: center;">동물 보호 센터명</th>
                              <td style="text-align: center;">${AniInfo.ani_center_name}</td>
                           </tr>
                           <tr>
                              <th style="text-align: center;">보호 장소</th>
                              <td style="text-align: center;">${AniInfo.ani_protect_address}</td>
                           </tr>
                           <tr>
                              <th style="text-align: center;">연락처</th>
                              <c:set var="ani_phone" value="${AniInfo.ani_phone}"></c:set>
                              <c:choose>
                              
                                 <c:when test="${fn:contains(ani_phone, 'http')}">
                                    <td style="text-align: center;"><a href="${AniInfo.ani_phone}">${AniInfo.ani_phone}</a></td>
                                 </c:when>
                                 <c:otherwise>
                                 <td style="text-align: center;">${AniInfo.ani_phone}</td>
                                 </c:otherwise>
                              </c:choose>
                              
                           </tr>
                        </table>
                     </div>
                  </div>
               </div>
            </c:otherwise>
         </c:choose>
      </div>
   <div id="sticky">
      <div style="float: center"><img src="resources/images/pets_left.png" style="width:20vw; float: left">
      <img src="resources/images/pets_right.png" style="width: 20vw; float: right"></div>
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