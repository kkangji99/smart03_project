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
	<!-- 헤더 메뉴 -->
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index"><span
				class="flaticon-pawprint-1 mr-2"></span>Save the Animals</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="fa fa-bars"></span> Menu
			</button>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<c:choose>
					<c:when test="${empty mem_id}">
						<ul class="navbar-nav ml-auto">

							<li class="nav-item"><a href="ad" class="nav-link">공고 보기</a></li>
							<li class="nav-item"><a href="register" class="nav-link">등록
									하기 </a></li>
							<li class="nav-item"><a href="about" class="nav-link">반려
									생활 길잡이</a></li>
							<li class="nav-item"><a href="commu" class="nav-link">커뮤니티</a></li>
							<li class="nav-item"><a href="login" class="nav-link">로그인</a></li>
							<li class="nav-item"><a href="join" class="nav-link">회원가입</a></li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul class="navbar-nav ml-auto">

							<li class="nav-item"><a href="ad" class="nav-link">공고 보기</a></li>
							<li class="nav-item"><a href="register" class="nav-link">등록
									하기 </a></li>
							<li class="nav-item"><a href="about" class="nav-link">반려
									생활 길잡이</a></li>
							<li class="nav-item"><a href="commu" class="nav-link">커뮤니티</a></li>
							<li class="nav-item"><a href="mypage" class="nav-link">마이페이지</a></li>
						</ul>
					</c:otherwise>
				</c:choose>
			</div>

		</div>

	</nav>
</body>
</html>