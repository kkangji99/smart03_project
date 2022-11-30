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

<style>
input[type=file]::file-selector-button {
	border: 2px solid white;
	padding: .2em .4em;
	border-radius: .2em;
	background-color: #00bd56;
	transition: 1s;
	color: white;
	border-radius: 5px;
}

.list img {
	height: 125px;
	float: left;
	width: 33%;
	padding: 2px;
	max-height: 250px;
}

#shelter{
   margin-left: 15px;
}}

.custom-select {
	height: calc(3.14rem + 2px);
}
</style>
<script>
   (function() {
      'use strict';
      window.addEventListener('load', function() {
         var forms = document.getElementsByClassName('needs-validation');
         var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
               if (form.checkValidity() === false) {
                  event.preventDefault();
                  event.stopPropagation();
               }
               form.classList.add('was-validated');
            }, false);
         });
      }, false);
   })();
   
   function oneGender(checkbox) {
         var checkgender = document.getElementsByName('gender')
         checkgender.forEach((item) => {
           if (item !== checkbox) item.checked = false
         })
       }

       function oneType(checkbox) {
         var checktype = document.getElementsByName('type')
         checktype.forEach((item) => {
           if (item !== checkbox) item.checked = false
         })
       }

       function oneNeutered(checkbox) {
         var checkneutered = document.getElementsByName('neutered')
         checkneutered.forEach((item) => {
           if (item !== checkbox) item.checked = false
         })
       }
</script>
</head>

<body>
	<!-- 유실동물 등록 페이지 -->
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
				<ul class="navbar-nav ml-auto">
					<!--           <li class="nav-item"><a href="index" class="nav-link">Home</a></li> -->
					<li class="nav-item"><a href="ad" class="nav-link">유실동물 공고</a></li>
					<li class="nav-item active"><a href="register"
						class="nav-link">유실동물 등록</a></li>
					<li class="nav-item"><a href="commu" class="nav-link">커뮤니티</a></li>
					<li class="nav-item"><a href="about" class="nav-link">반려
							생활 길잡이</a></li>
					<li class="nav-item"><a href="login" class="nav-link">로그인</a></li>
					<li class="nav-item"><a href="join" class="nav-link">회원가입</a></li>
					<!-- <li class="nav-item"><a href="mypage" class="nav-link">마이 페이지</a></li> -->
				</ul>
			</div>
		</div>
	</nav>
	<!-- END nav -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/image_4.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs mb-2">
						<span class="mr-2"><a href="index">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>등록 <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-0 bread">등록</h1>
				</div>
			</div>
		</div>
	</section>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">등록</h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-12">
					<div class="wrapper">

						<div class="row no-gutters">
							<div class="col-md-12">
								<div class="contact-wrap w-100 p-md-5 p-4">
									<h3 class="mb-4" style="text-align: left;">정보</h3>
									<form method="POST" id="contactForm" class="needs-validation"
										novalidate>
										<div class="row col-md-12">
											<div class="row col-md-6">
												<div class="col-md-6">
													<!-- <div class="w3-panel w3-pale-green w3-round-xxlarge w3-border"> -->
													<div class="form-group">
														<select class="custom-select" name="colors"
															id="colors" required>
															<option>털색</option>
															<option value="white">흰색</option>
															<option value="black">검정</option>
															<option value="brown">갈색</option>
															<option value="gray">회색</option>
															<option value="mix">혼합</option>
														</select>
														<div class="valid-feedback"></div>
														<div class="invalid-feedback">털색 선택</div>
													</div>
												</div>
												<div class="col-md-6">
													<div class="form-group">
														<input type="text" class="form-control" name="number"
															id="number" placeholder="연락처" required>
														<div class="valid-feedback"></div>
														<div class="invalid-feedback">연락처 입력</div>
													</div>
												</div>
												<div class="col-md-12 mb-3">
													<div class="form-group">
														</label> <input onfocus="(this.type = 'date')"
															class="form-control required" name="date"
															placeholder="목격/보호/유실 일자" id="date" required>
														<div class="valid-feedback"></div>
														<div class="invalid-feedback">목격/보호/유실 일자 선택</div>
													</div>
												</div>

												<div class="col-md-12">
													<div class="form-group">
														<input type="text" class="form-control" name="place"
															id="place" placeholder="목격/보호/유실 장소" required>
														<div class="valid-feedback"></div>
														<div class="invalid-feedback">장소 입력</div>
													</div>
												</div>
											</div>
											<div class="col-md-6 mt-.5 mx-auto text-center">
												<div class="form-group">
													<div id="uploadimages border border-primary">
														<div class="list"></div>
													</div>
													<input type="file" id="files" placeholder="이미지 선택"
														class="form-control filesImgs required" name="image_file"
														accept=".jpg, .jpeg, .png" multiple
														style="padding-left: 25%; font-size: 14px;" required>
													<!-- <input type="button" id="clear" class="form-control p-0" value="clear"> -->
													<div class="valid-feedback"></div>
													<div class="invalid-feedback">이미지 선택</div>
												</div>
												<script>
                                            $(function () {
                                              var imagesPreview = function (input, placeToInsertImagePreview) {
                                                if (input.files) {
                                                  var filesAmount = input.files.length
                                                  if (filesAmount > 11) {
                                                    alert("ONLY 10 FILES")
                                                    imagesPreview.stopPropagation()
                                                    imagesPreview.preventDefault()
                                                  }
                                                  for (i = 0; i < 10; i++) {
                                                    var reader = new FileReader()
                                                    reader.onload = function (event) {
                                                      $($.parseHTML('<img>'))
                                                        .attr('src', event.target.result)
                                                        .appendTo(placeToInsertImagePreview)
                                                    }
                                                    reader.readAsDataURL(input.files[i])
                                                  }
                                                }
                                              }
                  
                                              $('#files').on('change', function () {
                                                imagesPreview(this, 'div.list')
                                              })
                                            })
                                          </script>
											</div>

											<div class="col-md-6 mb-3">
												<div class="form-group">
													<select class="custom-select" id="age">
														<option selected>나이</option>
														<option value="5">0~5</option>
														<option value="10">5~10</option>
														<option value="15">10~15</option>
														<option value="20">15~20</option>
													</select>
												</div>
											</div>

											<div class="col-md-6 mb-3">
												<div class="form-group">
													<input type="text" class="form-control" name="shelter"
														id="shelter" placeholder="보호 장소">
												</div>
											</div>
											<div class="col-md-4 mb-3">
												<div class="form-group">
													<div class="custom-checkbox"
														style="display: flex; justify-content: space-evenly;">
														<!-- <label class="label" for="gender" style=""></label> -->
														<b>성별</b><input type="checkbox" id="male" name="gender"
															onclick="oneGender(this)">암컷 <input
															type="checkbox" id="female" name="gender"
															onclick="oneGender(this)">수컷 <input
															type="checkbox" id="unknown" name="gender"
															onclick="oneGender(this)">미상
													</div>
												</div>
											</div>
											<div class="col-md-4 mb-3">
												<div class="form-group">
													<div class="custom-checkbox"
														style="display: flex; justify-content: space-evenly;">
														<b>축종</b><input type="checkbox" id="dog" name="type"
															onclick="oneType(this)">강아지 <input
															type="checkbox" id="cat" name="type"
															onclick="oneType(this)">고양이 <input
															type="checkbox" id="unknown" name="type"
															onclick="oneType(this)">미상
													</div>
												</div>
											</div>
											<div class="col-md-4 mb-3">
												<div class="form-group">
													<div class="custom-checkbox"
														style="display: flex; justify-content: space-evenly;">
														<!-- <label class="label" for="subject"></label> -->
														<b>중성화여부</b><input type="checkbox" id="neutered"
															name="neutered" onclick="oneNeutered(this)">여 <input
															type="checkbox" id="notneutered" name="neutered"
															onclick="oneNeutered(this)">부 <input
															type="checkbox" id="unknown" name="neutered"
															onclick="oneNeutered(this)">미상
													</div>
												</div>
											</div>
											<div class="col-md-12 mb-3">
												<div class="form-group">
													<textarea name="message" class="form-control" id="message"
														cols="30" rows="4" placeholder="특이사항"
														style="resize: none;"></textarea>
												</div>
											</div>
										</div>
										<div class="col-md-12">
											<div class="form-group" style="text-align: center;">
												<div class="submitting">
													<input type="submit" class="btn btn-primary submit"
														value="확인" id="submit" />
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
						<div class="modal fade" id="myModal">
							<div class="modal-dialog modal-dialog-centered modal-xl">
								<div class="modal-content">
									<!-- Modal Header -->
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">×</button>
									</div>
									<!-- Modal body -->
									<div class="modal-body">
										<h2 class="modal-title" style="text-align: center;">등록
											되었습니다!</h2>
										<section class="ftco-section bg-light">
											<div class="container">
												<div class="row d-flex">
													<div class="col-md-4 d-flex ftco-animate">
														<div class="blog-entry align-self-stretch">
															<a href="blog_content" class="block-20 rounded"
																style="background-image: url('resources/images/image_1.jpg');">
															</a>
															<div class="text p-4">
																<div class="meta mb-2">
																	<div>
																		<a href="#">April 07, 2020</a>
																	</div>
																	\
																	<div>
																		<a href="#" class="meta-chat"><span
																			class="fa fa-comment"></span> 3</a>
																	</div>
																</div>
																<h3 class="heading">
																	<a href="#">Even the all-powerful Pointing has no
																		control about the blind texts</a>
																</h3>
															</div>
														</div>
													</div>
													<div class="col-md-4 d-flex ftco-animate">
														<div class="blog-entry align-self-stretch">
															<a href="blog_content" class="block-20 rounded"
																style="background-image: url('resources/images/image_2.jpg');">
															</a>
															<div class="text p-4">
																<div class="meta mb-2">
																	<div>
																		<a href="#">April 07, 2020</a>
																	</div>
																	<div>
																		<a href="#" class="meta-chat"><span
																			class="fa fa-comment"></span> 3</a>
																	</div>
																</div>
																<h3 class="heading">
																	<a href="#">Even the all-powerful Pointing has no
																		control about the blind texts</a>
																</h3>
															</div>
														</div>
													</div>
													<div class="col-md-4 d-flex ftco-animate">
														<div class="blog-entry align-self-stretch">
															<a href="blog_content" class="block-20 rounded"
																style="background-image: url('resources/images/image_3.jpg');">
															</a>
															<div class="text p-4">
																<div class="meta mb-2">
																	<div>
																		<a href="#">April 07, 2020</a>
																	</div>
																	<div>
																		<a href="#" class="meta-chat"><span
																			class="fa fa-comment"></span> 3</a>
																	</div>
																</div>
																<h3 class="heading">
																	<a href="#">Even the all-powerful Pointing has no
																		control about the blind texts</a>
																</h3>
															</div>
														</div>
													</div>

												</div>

											</div>
										</section>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
						<!-- </div> -->
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>

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