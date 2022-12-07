<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Save the Animals</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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

<style type="text/css">
section {
	/* background-image: linear-gradient(to bottom, #ffffff, #f9fbfe, #f0f8fd, #e5f5f8, #ddf2f0,
		#d4f0ea, #cdeee1, #c9ecd6, #bcebd0, #aeeaca, #9fe9c4, #8fe8bf); */
}
</style>

</head>
<body>
	<!-- 마이페이지 페이지 -->
	<%@includefile="header.jsp"%>
	<!-- END nav -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/image_4.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5">
					<h1 class="mb-0 bread">My Page</h1>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
	<c:choose>
	<c:when test="${empty loginMember}">
	</c:when>
	<c:otherwise>
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
				<h2 class="heading-section">${loginMember.mem_id}님 의 My Page 입니다.</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-8">
					<div class="contact-wrap w-80 p-md-5 p-4">
			           <form action="${cpath}/mypage_update.do" method="post">
								<div class="col-md-12 pb-2">
									<div class="form-group">
										<input type="hidden" name="mem_num" id="mem_num" value="${loginMember.mem_num}">
										아이디<input disabled type="text" class="form-control text-center"
											name="mem_id" id="mem_id" placeholder="${loginMember.mem_id}">
									</div>
								</div>
								<div class="col-md-12 pb-2">
									<div class="form-group">
										이름<input type="text" class="form-control text-center"
											name="mem_name" id="mem_name" placeholder="${loginMember.mem_name}">
									</div>
								</div>
								<div class="col-md-12 pb-2">
									<div class="form-group">
										이메일<input type="email" class="form-control text-center"
											name="mem_email" id="mem_email" placeholder="${loginMember.mem_email}">
									</div>
								</div>
								<div class="col-md-12 pb-2">
									<div class="form-group">
										전화번호<input type="text" class="form-control text-center"
											name="mem_phone" id="mem_phone" placeholder="${loginMember.mem_phone}">
									</div>
								</div>
								<div class="col-md-12 pb-2">
									<div class="form-group">
										비밀번호<input type="password" class="form-control text-center"
											name="mem_pw" id="mem_pw" placeholder="${loginMember.mem_pw}">
									</div>
								</div>
								<div class="row col-md-12 p-md-2 justify-content-center">
									<div class="form-group">
										<input type="submit" value="수정" class="btn btn-primary" style="font-size:15px;">
										<input type="reset" value="취소" class="btn btn-primary" style="font-size:15px;">
									</div>
								</div>
						</form>
					</div>
						
				</div>
			</div>
		</div>
		</c:otherwise>
		</c:choose>
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