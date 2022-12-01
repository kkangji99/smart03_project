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
	<!-- 반려생활길잡이 페이지 -->
	 <%@includefile="header.jsp"%>
	<!-- END nav -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/bg_2.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs mb-2">
						<span class="mr-2"><a href="index">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span>About us <i
							class="ion-ios-arrow-forward"></i></span>
					</p>
					<h1 class="mb-0 bread">반려 생활 길잡이</h1>
				</div>
			</div>
		</div>
	</section>

	<section>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<dl class="adandCon">
					<div class="conRight" id="contents" style="padding-top: 1em;">


						<div class="container">

							<p></p>


							<dl class="adandCon">
								<ul class="nav nav-pills" role="tablist">
									<li class="nav-item"><a class="nav-link active"
										data-toggle="pill" href="#home"> 1. 입양 전 고려사항</a></li>
									<li class="nav-item"><a class="nav-link"
										data-toggle="pill" href="#menu1"> 2. 사료 급여 방법</a></li>
									<li class="nav-item"><a class="nav-link"
										data-toggle="pill" href="#menu2"> 3. 예방접종과 건강검진</a></li>
									<li class="nav-item"><a class="nav-link"
										data-toggle="pill" href="#menu3"> 4. 외출시 필수사항</a></li>
								</ul>

								<div class="tab-content">
									<div id="home" class="container tab-pane active">
										<br>
										
										<div class="card-deck">
											<div class="card">
												<img class="card-img-top" src="resources/images/dcimg.png"
													alt="Card image" style="width: 100%; height: 250px">
												<div class="card-body text-center">

													<h5 style="font-weight: bolder;">평균 수명 10~15 세</h5>


													<p>충분히 경제적 여유가 있고, 반려 동물을 돌볼 시간이 있는지 잘 생각해봐야 합니다.</p>
												</div>
											</div>

											<div class="card">
												<img class="card-img-top" src="resources/images/alimg.png"
													alt="Card image" style="width: 100%; height: 250px">
												<div class="card-body text-center">
													<h5 style="font-weight: bolder;">알레르기 있는지 확인</h5>

													<p>반려동물로 인해 사람에게 가장 많이 생길 수 있는 질환은 피부, 호흡기 알레르기 질환입니다.</p>
												</div>
											</div>

											<div class="card">
												<img class="card-img-top" src="resources/images/htimg.png"
													alt="Card image" style="width: 100%; height: 250px">
												<div class="card-body text-center">
													<h5 style="font-weight: bolder;">건강관리 필수</h5>

													<p>반려동물 특성에 따른 예방접종을 실시하고, 질병이 발생한 경우 신속하게 수의학적 처치를
														제공하여야 합니다. 또한 적합한 음식과 깨끗한 물을 공급하여야 합니다.</p>
												</div>
											</div>
											<div class="card">
												<img class="card-img-top" src="resources/images/mhimg.png"
													alt="Card image" style="width: 100%; height: 250px">
												<div class="card-body text-center">
													<h5 style="font-weight: bolder;">많은 시간, 비용 필요</h5>

													<p>정말 반려동물과 가족이 될 준비가 되어있는지 스스로 충분히 시간을 가지고 생각해본 뒤,
														신중하게 결정해 주세요.</p>
												</div>
											</div>
										</div>
									</div>

									<div id="menu1" class="container tab-pane fade">
										<br>
										
										<h5>개</h5>
										<div class="adand_txt">
											<p>사료는 갑자기 바꾸지 말고 데려오기 전부터 먹던 사료를 당분간(10일 이상) 주도록 합니다.
												새로운 집에 적응하게 되는 기간은 보통 7일 정도 걸리고 이 기간 동안은 목욕이나 사료 변화, 이동 등의
												스트레스를 주는 것을 삼가도록 합니다. 배식 방법은 크게 두 가지로 나뉘는데 정해진 시간을 지키는 분할
												배식과 한 번에 충분한 양을 주고 스스로 찾아먹게끔 하는 자율배식입니다. 각각의 장단점이 있으므로 반려인의
												생활방식이나 강아지의 성격에 따라 적절한 방법을 찾아가야 합니다.</p>
										</div>
										<h5>고양이</h5>
										<div class="adand_txt">
											<p>사료 급이 횟수는 1일 2회 정도가 적당합니다. 육류는 닭 가슴살이 가장 좋으며 육류의 양은 전체
												급이의 3분의 1 정도가 좋습니다. 생선은 넙치처럼 살이 흰 종류가 좋으며 곡류는 균형 잡힌 영양섭취를 위해
												소량 먹입니다.</p>
										</div>
									</div>

									<div id="menu2" class="container tab-pane fade">
										<br>
										
										<div class="adand_txt">
											<p>
												개는 예방접종을 통해 치명적인 질병을 예방할 수 있습니다. 코로나 장염, 파보 장염을 비롯해 홍역, 간염,
												인플루엔자, 켄넬코프 등 다양한 전염병이 있습니다. 이에 대한 예방책으로 생후 6 주령부터 종합예방접종과
												코로나 예방접종을 시작으로 2~3주 간격으로 예방접종을 진행​해야 합니다.<br>
												<br> 고양이의 첫 백신 접종 시기는 생후 8주가 가장 좋으며, 이후 3~5주 사이에 추가 접종을
												해야 합니다. 고양이 독감, 고양이 범백혈구 감소증 바이러스(FPV), 고양이 백혈병 바이러스(FeLV),
												칼리시 바이러스 등에 대한 예방접종을 해야 합니다.<br>
												<br> <span class="color_01">[개 예방접종 표]</span>
											</p>
											<table class="table table-hover" border="2;">
												<thead style="text-align: center;">
													<tr>
														<th>종류</th>
														<th>주기</th>
														<th>병명</th>
												</thead>


												<tbody>
													<tr>
														<th class="th_top" scope="row" rowspan="3">혼합예방주사<br>(DHPPL)
														</th>
														<td class="td_top cell_left"><strong>(기초접종)</strong>
															생후 6~8주에 1차 접종</td>
														<td class="td_top t_end cell_left" rowspan="3">-
															Canine Distemper(홍역)<br> - Hepatitis(간염)<br> -
															Parvovirus(파보장염)<br> - Parainfluenza(파라인플루엔자)<br>
															- Leptospira(렙토스피라) 혼합주사임
														</td>
													</tr>
													<tr>
														<td class="cell_left"><strong>(추가접종)</strong> 1차 접종 후
															2~4주 간격으로 2~4회</td>
													</tr>
													<tr>
														<td class="cell_left"><strong>(보강접종)</strong> 추가접종 후
															매년 1회 주사</td>
													</tr>
													<tr>
														<th scope="row" rowspan="3">코로나바이러스성 장염<br>(Coronavirus)
														</th>
														<td class="cell_left"><strong>(기초접종)</strong> 생후
															6~8주에 1차 접종</td>
														<td class="t_end" rowspan="3">-</td>
													</tr>
													<tr>
														<td class="cell_left"><strong>(추가접종)</strong> 1차 접종 후
															2~4주 간격으로 1~2회</td>
													</tr>
													<tr>
														<td class="cell_left"><strong>(보강접종)</strong> 추가접종 후
															매년 1회 주사</td>
													</tr>
													<tr>
														<th scope="row" rowspan="3">기관·기관지염<br>(Kennel
															Cough)
														</th>
														<td class="cell_left"><strong>(기초접종)</strong> 생후
															6~8주에 1차 접종</td>
														<td class="t_end" rowspan="3">-</td>
													</tr>
													<tr>
														<td class="cell_left"><strong>(추가접종)</strong> 1차 접종 후
															2~4주 간격으로 1~2회</td>
													</tr>
													<tr>
														<td class="cell_left"><strong>(보강접종)</strong> 추가접종 후
															매년 1회 주사</td>
													</tr>
													<tr>
														<th scope="row" rowspan="2">광견병</th>
														<td class="cell_left"><strong>(기초접종)</strong> 생후 3개월
															이상 1회 접종</td>
														<td class="t_end" rowspan="2">-</td>
													</tr>
													<tr>
														<td class="cell_left"><strong>(보강접종)</strong> 6~12개월
															간격으로 주사</td>
													</tr>
												</tbody>
											</table>
											<span class="color_01"></span> <br> <span
												class="color_01">[고양이 예방접종 표]</span>
											<table class="table table-hover" border="2;">

												<thead style="text-align: center;">
													<tr>
														<th>종류</th>
														<th>주기</th>
														<th>병명</th>
												</thead>
												<tbody>
													<tr>
														<th class="th_top" scope="row" rowspan="3">혼합예방주사<br>(CVRP)
														</th>
														<td class="td_top cell_left"><strong>(기초접종)</strong>
															생후 6~8주에 1차 접종</td>
														<td class="td_top t_end cell_left" rowspan="3">-
															Calicivius(칼리시바이러스 감염증)<br> - Rhinotrachritis(전염성
															비기관지염)<br> - Panleukemia(범백혈구 감소증) 혼합주사임
														</td>
													</tr>
													<tr>
														<td class="cell_left"><strong>(추가접종)</strong> 1차 접종 후
															2~4주 간격으로 2~3회</td>
													</tr>
													<tr>
														<td class="cell_left"><strong>(보강접종)</strong> 추가접종 후
															매년 1회 주사</td>
													</tr>
													<tr>
														<th scope="row" rowspan="3">고양이 백혈병<br>(Feline
															Leukemia)
														</th>
														<td class="cell_left"><strong>(기초접종</strong>) 생후
															9~11주에 1차 접종</td>
														<td class="t_end" rowspan="3">-</td>
													</tr>
													<tr>
														<td class="cell_left"><strong>(추가접종)</strong> 1차 접종 후
															2~4주 간격으로 1~2회</td>
													</tr>
													<tr>
														<td class="cell_left"><strong>(보강접종)</strong> 추가접종 후
															매년 1회 주사</td>
													</tr>
													<tr>
														<th scope="row" rowspan="3">전염성 복막염<br>(FIP)
														</th>
														<td class="cell_left"><strong>(기초접종)</strong> 생후
															16~18주에 1차 접종</td>
														<td class="t_end" rowspan="3">-</td>
													</tr>
													<tr>
														<td class="cell_left"><strong>(추가접종)</strong> 1차 접종 후
															2~3주 간격으로 1회</td>
													</tr>
													<tr>
														<td class="cell_left"><strong>(보강접종)</strong> 추가접종 후
															매년 1회 주사</td>
													</tr>
													<tr>
														<th scope="row" rowspan="2">광견병</th>
														<td class="cell_left"><strong>(기초접종)</strong> 생후 3개월
															이상 1회 접종</td>
														<td class="t_end" rowspan="2">-</td>
													</tr>
													<tr>
														<td class="cell_left"><strong>(보강접종)</strong> 1년 간격으로
															주사</td>
													</tr>
												</tbody>
											</table>
											<span class="color_01"></span>
											<p></p>
										</div>
										<h5>건강검진</h5>
										<div class="adand_txt">
											<p>
												생후 6~8주 사이에는 예방접종을 시작하고 예방접종이 끝난 뒤에는 질환이 생겼을 때 검사와 치료를
												진행합니다. 개와 고양이는 보통 7 세령 부터 건강검진을 시작합니다. 7세는 사람으로 치면 40세 정도의
												중·장년기이므로 생애 첫 건강검진을 실시하는 게 좋습니다.<br> 이때부터는 최소 일 년에 한 번
												건강검진을 하는 것을 추천합니다.<br>
												<br> 개, 고양이의 1년은 사람의 5년과 같습니다. 일 년에 한 번도 검진을 자주 하는 것이
												아니므로 일 년에 한번은 꼭 하는 것이 좋고, 노령성 질병을 가지고 있다면 6개월 간격으로 검진하는 것을
												추천합니다.<br>
												<br> 고양이는 4세부터 신장질환, 갑상선 이상 등 질병에 걸릴 확률이 높아지는 것으로 나타났고
												개는 7세 이상일 경우에 심장질환, 신장질환, 부신피질 기능 항진증, 유선종양, 자궁 축농증, 백내장 발생이
												급격히 늘 수 있습니다. 사람과 마찬가지로 예방이 중요하기 때문에 질병을 조기에 발견할 수 있도록 정기적인
												건강검진이 필요합니다.
											</p>
										</div>
									</div>
									<div id="menu3" class="container tab-pane fade">
										<br>
										
										<h5>인식표</h5>
										<div class="adand_txt">
											<p>
												평소 인식표를 착용하는 습관을 들여 줍시다. 잠깐의 실수로 반려동물이 집을 나가버렸을 때, 반려인의 정보가
												담긴 인식표는 상당한 도움이 됩니다.<br> → 외출 시 인식표 미부착의 경우 1차 위반 5만원,
												2차 10만원, 3차 20만원의 과태료가 부과됩니다.<br>
												<br> <strong>어떤 인식표를 착용해야 할까요?</strong><br> ①가벼워야
												한다. ②동물이 불편함을 느껴선 안된다. ③털이 걸리거나 피부에 무리가 가서는 안된다.<br>
												<br> <strong>인식표에 들어가야 할 내용은?</strong><br> ①보호자의
												이름 ②동물등록번호 ③전화번호
											</p>
										</div>
										<h5>배변봉투</h5>
										<div class="adand_txt">
											<p>
												반려견과 외출 시 공중위생을 위해 배설물(소변의 경우에는 공동주택의 엘리베이터, 계단 등 건물 내부의
												공용공간 및 평상, 의자 등 사람이 눕거나 앉을 수 있는 기구 위의 것으로 한정함)이 생기면 바로 수거해야
												합니다.<br> → 이를 위반하면 1차 위반 시 5 만원, 2차 7 만원, 3차 10 만원의
												과태료가 부과됩니다.
											</p>
										</div>
										<h5>목줄</h5>
										<div class="adand_txt">
											<p>
												소유자가 반려견을 동반하고 외출하는 경우 목줄 또는 가슴 줄을 하거나 이동장치를 사용해야 합니다. 목줄 또는
												가슴 줄은 해당 동물을 효과적으로 통제할 수 있고, 다른 사람에게 위해를 주지 않도록 길이가 2미터 이내여야
												합니다.<br> → 이를 위반하면 1차 위반 시 20 만원, 2차 30 만원, 3차 50 만원의
												과태료가 부과됩니다.
											</p>
										</div>
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