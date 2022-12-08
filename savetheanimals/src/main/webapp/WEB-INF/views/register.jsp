<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
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
	<%@includefile="header.jsp"%>
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
									<form method="POST" id="contactForm" class="needs-validation" action="${cpath}/register.do"
										novalidate enctype="multipart/form-data">
										<div class="row col-md-12">
											<div class="col-md-6">
												<div>
													<div class="col-md-12">
														<div class="form-group">
															<select class="custom-select" name="ani_color" id="colors"
																required>
																<option>털색</option>
																<option value="흰색">흰색</option>
																<option value="검정색">검정</option>
																<option value="갈색">갈색</option>
																<option value="회색">회색</option>
																<option value="혼합색">혼합</option>
															</select>
															<div class="valid-feedback"></div>
															<div class="invalid-feedback">털색 선택</div>
														</div>
													</div>
													<div class="col-md-12">
														<div class="form-group">
															<input type="text" class="form-control" name="ani_phone"
																id="number" placeholder="연락처" required>
															<div class="valid-feedback"></div>
															<div class="invalid-feedback">연락처 입력</div>
														</div>
													</div>
													<div class="col-md-12 mb-3">
														<div class="form-group">
															<div class="custom-checkbox"
																style="display: flex; justify-content: space-evenly;">
																목격<input type="checkbox" id="notice" name="ani_cate_code"
																	onclick="oneSituation(this)" value="ani_witness"> 보호<input
																	type="checkbox" id="shelter" name="ani_cate_code"
																	onclick="oneSituation(this)"value="ani_protect"> 유실<input
																	type="checkbox" id="lost" name="ani_cate_code"
																	onclick="oneSituation(this)"value="ani_lose">
															</div>
														</div>
													</div>
												</div>
												<div class="col-md-12 mb-3">
													<div class="form-group">
														</label> <input onfocus="(this.type = 'date')"
															class="form-control required" name="ani_datetime"
															placeholder="목격/보호/유실 일자" id="date" required>
														<div class="valid-feedback"></div>
														<div class="invalid-feedback">목격/보호/유실 일자 선택</div>
													</div>
												</div>

												<div class="col-md-12">
													<div class="form-group">
														<input type="text" class="form-control" name="ani_occur_address"
															id="place" placeholder="목격/보호/유실 장소" required>
														<div class="valid-feedback"></div>
														<div class="invalid-feedback">장소 입력</div>
													</div>
												</div>
											</div>
											<div class="col-md-6 text-center">
												<div class="form-group">
													<div id="uploadimages border border-primary">
														
													</div>
													<input type="file" id="files" placeholder="이미지 선택"
														class="form-control filesImgs required" name="aimg_name" 
														accept=".jpg" multiple
														style="padding-left: 25%; font-size: 14px;" required>
													<div class="valid-feedback"></div>
													<div class="invalid-feedback">이미지 선택</div>
												</div>

											</div>
											<div class="col-md-6">
												<div class="col-md-12 mb-3">
													<div class="form-group">
														<select class="custom-select" id="ani_age" name = "ani_age">
															<option selected>나이</option>
															<option value="5">0~5</option>
															<option value="10">5~10</option>
															<option value="15">10~15</option>
															<option value="20">15~20</option>
														</select>
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="col-md-12 mb-3">
													<div class="form-group">
														<select class="custom-select" id="ani_kind" name = "ani_kind">
															<option selected>품종</option>
															<option value="5">0~5</option>
															<option value="10">5~10</option>
															<option value="15">10~15</option>
															<option value="20">15~20</option>
														</select>
													</div>
												</div>
											</div>

											<div class="col-md-6 mb-3">
												<div class="form-group">
													<input type="text" class="form-control" name="ani_protect_address"
														id="shelterPlace" placeholder="보호 장소">
												</div>
											</div>
											<div class="col-md-4 mb-3">
												<div class="form-group">
													<div class="custom-checkbox"
														style="display: flex; justify-content: space-evenly;">
														<b>성별</b> 암컷<input type="checkbox" id="male" name="ani_gender"
															onclick="oneGender(this)" value='암컷'> 수컷<input
															type="checkbox" id="female" name="gender"
															onclick="oneGender(this)" value='수컷'> 미상 <input
															type="checkbox" id="unknown" name="gender"
															onclick="oneGender(this)" value='미상'>
													</div>
												</div>
											</div>
											<div class="col-md-4 mb-3">
												<div class="form-group">
													<div class="custom-checkbox"
														style="display: flex; justify-content: space-evenly;">
														<b>축종</b> 강아지 <input type="checkbox" id="dog" name="ani_livestock"
															onclick="kind('dog')" value='개'> 고양이<input
															type="checkbox" id="cat" name="ani_livestock"
															onclick="kind('cat')" value='고양이'> 미상<input type="checkbox"
															id="unknown" name="ani_livestock" onclick="kind('unknown')" value='미상'>
													</div>
												</div>
											</div>
											<div class="col-md-4 mb-3">
												<div class="form-group">
													<div class="custom-checkbox"
														style="display: flex; justify-content: space-evenly;">
														<b>중성화여부</b> 예<input type="checkbox" id="neutered"
															name="ani_neutered" onclick="oneNeutered(this)" value="예"> 아니요<input
															type="checkbox" id="notneutered" name="ani_neutered"
															onclick="oneNeutered(this)" value='아니오'> 미상<input
															type="checkbox" id="unknown" name="ani_neutered"
															onclick="oneNeutered(this)" value='미상'>
													</div>
												</div>
											</div>

											<div class="col-md-12 mb-3">
												<div class="form-group">
													<textarea name="ani_uniqueness" class="form-control" id="message"
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
						
						<!-- </div> -->
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>
	<%@includefile="footer.jsp"%>

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

<script>


function kind(id)
{       
    //도시
    var kind = document.getElementById(id);
    var kindOption = kind.text;
    var subkind = document.getElementById("ani_kind");
    var subOptions = {
          dog : ["전체","강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구",
              "도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구",
              "양천구","영등포구","용산구","은평구","종로구","중구","중랑구"],
              
          cat :  ["전체","강서구","금정구","남구","동구","동래구","부산진구","북구","사상구",
              
              "사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"]
    }
    
    switch (kindOption) {
    case "개":
      var subOption = subOptions.dog;
      break;
   case "고양이":
      var subOption = subOptions.cat;
      break;
   
   default:
      break;
   }
    //도시 초기화
    subkind.options.length = 0;
    
    for(var i=0; i<subOption.length;i++){
       var option = document.createElement('option');
       option.innerText = subOption[i];
       subkind.append(option);
    }
    subOption= subkind.options[subkind.selectedIndex].text;
    
    console.log(mainOption);
    return mainOption;
}
</script> 
</html>