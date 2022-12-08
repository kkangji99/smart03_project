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
<style type="text/css">
.container-table {
   margin-top: -6%;
}

textarea {
   border: none;
   outline: none;
   font-size: 0.95em;
   width: 100%;
}

.center {
   display: block;
   margin-left: auto;
   margin-right: auto;
   width: 50%;
}

.flaticon-pawprint-1:before {
   height: 25px;
   width: 25px;
}

.sexy_line{ 
    display:block;
    border:none;
    color:white;
    height:1px;
    background: #00000061;
}

</style>

</head>

<body>
   <!-- 게시판 상세 페이지 -->
   <%@includefile="header.jsp"%>
   <!-- END nav -->
   <section class="hero-wrap hero-wrap-2"
      style="background-image: url('resources/images/bg_2.jpg');"
      data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
         <div class="row no-gutters slider-text align-items-end">
            <div class="col-md-9 ftco-animate pb-5">
               <h1 class="mb-0 bread">
                  <a href="${cpath}/commu.do" style="color: white;"> 커뮤니티</a>
               </h1>
            </div>
         </div>
      </div>
   </section>

   <section class="ftco-section ftco-degree-bg">
      <div class="container" style="max-width: 1000px;">
         <div class="row justify-text-center">
            <div class="col-lg-12 ftco-animate">
               <!-- 커뮤니티 내용 -->
               <div class="information">
               	<c:choose>
               		<c:when test="${empty postinfo}">
                        <div class="container-table" style="margin-top: -6%">
                           <table class="table table-hover">
                              <tr>
                                 <th>데이터 불러오기 실패!!!!!!!!!!!</th>
                              </tr>
                           </table>
                        </div>
                     </c:when>
                     <c:otherwise>
                        <table style="color: black; width: 100%; font-size: 17px;"
                           class="table table-hover font-weight-normal">
                           
                           <tr>
                              <th style="text-align: center;">제목</th>
                              <td>${postinfo.post_title}</td>
                           </tr>
                           
                           <tr>
                              <th style="text-align: center;">작성자</th>
                              <td>${postinfo.mem_id}</td>
                           </tr>
                           <tr>
                              <th style="text-align: center; width: 40%;">카테고리</th>
                               <c:if test="${postinfo.post_cate_code eq 'post_free'}">
                                 <<td>자유게시판</td>
                              </c:if>
                              <c:if test="${postinfo.post_cate_code eq 'post_adop'}">
                                 <td>입양 정보</td>                              
                              </c:if>
                              <c:if test="${postinfo.post_cate_code eq 'post_review'}">
                                 <td>입양/재회 후기</td>                              
                              </c:if>
                              <c:if test="${postinfo.post_cate_code eq 'post_service'}">
                                 <td>봉사활동 정보</td>                              
                              </c:if>
                           </tr>
                           <tr>
                              <th style="text-align: center;">등록날짜</th>
                              <td>${postinfo.post_datetime}</td>
                           </tr>
                           <tr>
                           	 <th style="text-align: center;">내용</th>
                              <td>${postinfo.post_contents}</td>
                           </tr>
                           
                        </table>
                     </c:otherwise>
                  </c:choose>
               </div>

               <br>
               <!-- 댓글 -->
               <div class="row">
                  <div class="container pb-3">
                  <h5>댓글</h5>
                     <c:forEach items="${allcomm}" var="com" varStatus="status">
                        <div class="card pl-2 border border-0 rounded-pill mt-3 mb-3">

                         <div class="card-body" style="padding: 0px 30px 0px 30px">
	                         <div>
	                         <span class="sexy_line" style="margin-bottom: 5px;"></span>
	                     	</div>
                              <div class="row mt-2">
                                 <div class="col-md-6"
                                    style="text-align: left; height: 20px; width: 20px; font-size:17px;">
                                    <a class="flaticon-pawprint-1" style="margin-right:5px;"></a>
                                    ${memid[status.index].mem_id}<span class="small text-muted mb-0" style="font-size:15px; margin-left:5px;"> ${com.comm_datetime}</span>
                                 </div>
                                 <div class="col-md-6" style="text-align: right">
                                    <c:if
                                       test="${memid[status.index].mem_num == loginMember.mem_num}">
                                       <form action="${cpath}/com_delete.do" method="post">
                                          <input type="hidden" name="comm_mem_num"
                                             value="${loginMember.mem_num}"> <input
                                             type="hidden" name="comm_post_num"
                                             value="${postinfo.post_num}"> <input
                                             type="hidden" name="post_num"
                                             value="${postinfo.post_num}"> <input
                                             type="hidden" name="comm_num" value="${com.comm_num}">
                                          <input type="submit" value="삭제" class="btn btn-outline-secondary"
                                             style="font-size: 14px; border-radius: 40px;">
                                       </form>
                                    </c:if>
                                 </div>
                              </div>

                              <p style="color: black; margin-left:20px; margin-bottom:0px; font-size:18px;">${com.comm_contents}</p>

                           </div>
                        </div>
                     </c:forEach>
                     <c:if test="${not empty loginMember}">
                        <div class="container" style="margin: 10px 0px 10px 0px; height:10px;">
                           <!-- <h5>댓글 입력</h5> -->
                           <form action="${cpath}/com_submit.do" method="post">
                              <input type="hidden" name="comm_mem_num"
                                 value="${loginMember.mem_num}"> <input type="hidden"
                                 name="comm_post_num" value="${postinfo.post_num}"> <input
                                 type="hidden" name="post_num" value="${postinfo.post_num}">
                              <div class="row border rounded-pill"
                                 style="background: white;">
                                 <div class="col-md-10">
                                    <div class="form-group" style="margin: 15px;">
                                       <textarea name="comm_contents" id="comm_contents" cols="30"
                                          rows="2" required placeholder="댓글입력" style="resize: none;"></textarea>
                                    </div>
                                 </div>
                                 <div class="col-md-2">
                                    <div class="form-group mt-4">
                                       <input type="submit" value="확인"
                                          class="btn btn-outline-secondary"
                                          style="width: 50%; height: 20%; margin-left: 40px;">
                                       <div class="submitting"></div>
                                    </div>
                                 </div>
                              </div>
                           </form>
                        </div>
                     </c:if>
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