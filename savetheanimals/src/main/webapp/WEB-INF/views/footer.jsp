<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
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
	<!-- 푸터 메뉴 -->
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
							<li><a href="${cpath}/index.do" class="py-2 d-block">Home</a></li>
							<li><a href="${cpath}/ad.do" class="py-2 d-block">공고 보기</a></li>
							<li><a href="${cpath}/register_page.do" class="py-2 d-block">등록 하기</a></li>
							<li><a href="${cpath}/about.do" class="py-2 d-block">반려 생활 길잡이</a></li>
							<li><a href="${cpath}/commu.do" class="py-2 d-block">커뮤니티</a></li>
						</ul>
					</div>

				</div>
			</div>
		</footer>
</body>
</html>