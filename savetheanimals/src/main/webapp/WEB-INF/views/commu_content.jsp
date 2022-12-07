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

.thought {
	width: 100%;
	background-image: linear-gradient(to right bottom, #e0fff0, #d0fce7, #bffadd, #aef7d4,
		#9cf4ca, #9df4cb, #9ff4cb, #a0f4cc, #b4f7d7, #c8fae1, #dafdec, #edfff6
		);
	border-radius: 30px;
	min-height: 40px;
	position: relative;
	align-items: center;
	justify-content: center;
	/* text-align: center; */
	border-collapse: collapse;
}

.thought:before, .thought:after {
	content: "";
	background-image: linear-gradient(to right bottom, #e0fff0, #d0fce7, #bffadd, #aef7d4,
		#9cf4ca, #9df4cb, #9ff4cb, #a0f4cc, #b4f7d7, #c8fae1, #dafdec, #edfff6
		);
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
	background-image: linear-gradient(to right bottom, #e0fff0, #d0fce7, #bffadd, #aef7d4,
		#9cf4ca, #9df4cb, #9ff4cb, #a0f4cc, #b4f7d7, #c8fae1, #dafdec, #edfff6
		);
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
		<div class="container">
			<div class="row justify-text-center">
				<div class="col-lg-12 ftco-animate">
					<!-- 커뮤니티 내용 -->
					<div class="thought row" style="display: inline;">
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
								<div class="container-table">
									<div class="mini-info row">
										<div class="content col-md-6"
											style="text-align: left; margin-top: 10%;">${postinfo.post_cate_code}</div>
										<div class="content col-md-6"
											style="text-align: right; margin-top: 10%;">${postinfo.post_datetime}</div>
									</div>
									<h2 style="text-align: center;">${postinfo.post_title}</h2>
									<div class="content ml-5 mr-5" style="text-align: center;">${postinfo.mem_id}</div>

									<br>

									<div class="content ml-5 mr-5"
										style="text-align: center; margin-bottom: 3%;">${postinfo.post_contents}</div>
									<div class="comImage justify-content-center">
										<img src="resources/images/image_6.jpg" class="center"
											style="width: 600px;">
									</div>
								</div>

							</c:otherwise>
						</c:choose>
					</div>

					<br> <br>
					<!-- 댓글 -->
					<div class="thought row">
						<div class="container pb-3">
							<%
								int i = 1;
							%>

							<c:forEach items="${allcomm}" var="com" varStatus="status">
								<div class="card pl-2 border border-0 rounded-pill mt-3 mb-3">

									<div class="card-body" style="padding: 0px 30px 0px 30px">
										<div class="row mt-2">
											<div class="col-md-6"
												style="text-align: left; height: 20px; width: 20px;">
												<a class="flaticon-pawprint-1"></a>
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
														<input type="submit" value="삭제" class="btn btn-success"
															style="font-size: 12px; color: rgba(103, 192, 103, 0.75); letter-spacing: 1px; line-height: 15px; 
															border: 2px solid rgba(103, 192, 103, 0.75); border-radius: 40px; background: transparent; transition: all 0.3s ease 0s;">
													</form>
												</c:if>
											</div>
										</div>

										<p>${com.comm_contents}</p>

										<div class="d-flex justify-content-between">
											<div class="d-flex flex-row align-items-center">
												<!-- insert icon much better -->
												<p class="small mb-0 ms-2">${memid[status.index].mem_id}</p>
											</div>
											<div class="d-flex flex-row align-items-center">
												<p class="small text-muted mb-0">${com.comm_datetime}</p>

												<p class="small text-muted mb-0">3</p>
											</div>
										</div>
									</div>
								</div>


							</c:forEach>

							<c:if test="${not empty loginMember}">
								<div class="container" style="margin: 10px 0px 10px 0px;">
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
														class="btn btn-outline-success"
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