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

<link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
	<!-- 게시판 상세 페이지 -->
 <%@includefile="header.jsp"%>
  <!-- END nav -->
  <section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/bg_2.jpg');"
    data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
      <div class="row no-gutters slider-text align-items-end">
        <div class="col-md-9 ftco-animate pb-5">
          <h1 class="mb-0 bread">커뮤니티</h1>
        </div>
      </div>
    </div>
  </section>

	<section class="ftco-section ftco-degree-bg">
		<div class="container">
			<div class="row justify-text-center">
				<div class="col-lg-12 ftco-animate">
					<!-- 커뮤니티 내용 -->
					<c:choose>
						<c:when test="${empty postinfo}">
						<div class="container-table" style="margin-top:15px;">
		                  <table class="table table-hover" >
		                     <tr><th>데이터 불러오기 실패!!!!!!!!!!! </th></tr>
		                  </table>
		               	</div>
						</c:when>
						<c:otherwise>
						<div class="conainer-images">
		                  <div id="myImages" style="max-width: 80%; max-height: 60%; margin: 0 auto" data-ride="carousel">
		                    <div style="text-align:center">
		                       	<img src="resources/images/image_6.jpg" class="img-fluid" style="display:inline-block;width:400px; ">
		          			</div>
		                  </div>
		                </div>
						<div class="container-table" style="margin-top:15px;">
		                  <table class="table table-hover table-bordered">
		                     <tr>
		                     	<th>제목</th>
		                     	<td>${postinfo.post_title}</td>
		                     </tr>
		                     <tr>
		                     	<th>내용</th>
		                     	<td>${postinfo.post_contents}</td>
		                     </tr>
		                  </table>
		               	</div>
						</c:otherwise>
					</c:choose>
					
					<!-- 댓글 -->
					<div class="container">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>댓글번호</th>
									<th>내용</th>
									<th>날짜 /시간</th>
									<th>회원 아이디</th>
								</tr>
							</thead>
							<tbody>
							<% int i=1;
							%>
							<c:forEach items="${allcomm}" var="com" varStatus="status">
					    		<tr>
									<td><%=i %></td>
									<td>${com.comm_contents}</td>
									<td>${com.comm_datetime}</td>
									<td>${memid[status.index].mem_id}</td>
									<%i++; %>
								</tr>
				    		</c:forEach>
							</tbody>
						</table>
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