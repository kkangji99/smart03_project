<%@page import="kr.animal.entity.Animal"%>
<%@page import="java.util.List"%>
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>    
function Kind(){
    //ani_kind, mainCity, subCity, ani_type
    var kind = document.getElementById("ani_kind");
    var kindValue = kind.options[kind.selectedIndex].value;
    var kindText = kind.options[kind.selectedIndex].text;
   
    //console.log("kindText : "+kindText);
    return kindText;
}
function Type() {
    var type = document.getElementById("type");
    var typeValue = type.options[type.selectedIndex].value;
    var typeText = type.options[type.selectedIndex].text;
    
    console.log("typeText : "+typeText);
}
function City()
{       
    //도시
    var mainCity = document.getElementById("mainCity");
    var subCity = document.getElementById("subCity");
    var mainOption = mainCity.options[mainCity.selectedIndex].text;
    var subOptions = {
          
          seoul : ["전체","강남구","강동구","강북구","강서구","관악구","광진구","구로구","금천구","노원구",
              "도봉구","동대문구","동작구","마포구","서대문구","서초구","성동구","성북구","송파구",
              "양천구","영등포구","용산구","은평구","종로구","중구","중랑구"],
              
           busan :  ["전체","강서구","금정구","남구","동구","동래구","부산진구","북구","사상구",
              
              "사하구","서구","수영구","연제구","영도구","중구","해운대구","기장군"],
              
           deagu : ["전체","남구","달서구","동구","북구","서구","수성구","중구","달성군"],
           
          incheon : ["전체","계양구","남동구","동구","미추홀구","부평구","서구","연수구","중구","강화군","옹진군"],
          
          gwangju : ["전체","광산구","남구","동구","북구","서구"],
          
          deajeon : ["전체","대덕구","동구","서구","유성구","중구"],
          
          ulsan : ["전체","남구","동구","북구","중구","울주군"],
          
          gyeonggido : ["전체","가평군","고양시 덕양구","고양시 일산동구","고양시 일산서구","과천시",
              "광명시","광주시","구리시","군포시","김포시","남양주시","동두천시","부천시 원미구",
              "부천시 소사구","부천시 오정구","성남시 수정구","성남시 중원구","성남시 분당구",
              "수원시 장안구","수원시 권선구","수원시 팔달구","수원시 영통구","시흥시","안산시 단원구",
              "안산시 상록구","안양시 만안구","안양시 동안구","안성시","양주시","양평군","여주시","연천군",
              "오산시","용인시 처인구","용인시 기흥구","용인시 수지구","의왕시","의정부시","이천시","파주시",
              "평택시","포천시","하남시","화성시"],
           
          gangwondo : ["전체","춘천시", "원주시", "강충청남도릉시", "동해시", "태백시", "속초시", "삼척시", "홍천군", 
             "횡성군", "영월군", "평창군", "정선군", "철원군", "화천군", "양구군", "인제군", "고성군", "양양군" ],
           
          chungcheongbukdo : ["전체", "청주시 상당구", "청주시 서원구", "청주시 흥덕구", "청주시 청원구", "충주시", "제천시", 
             "보은군", "옥천군", "영동군", "증평군", "진천군", "괴산군", "음성군", "단양군" ],

         chungcheongnamdo : ["전체", "천안시 동남구", "천안시 서북구", "공주시", "보령시", "아산시", "서산시", "논산시", 
            "계룡시", "당진시", "금산군", "부여군", "서천군", "청양군", "홍성군", "예산군", "태안군" ],

         jeollabukdo: ["전체", "전주시 완산구", "전주시 덕진구", "군산시", "익산시", "정읍시", "남원시", "김제시",
            "완주군", "진안군", "무주군", "장수군", "임실군", "순창군", "고창군", "부안군" ],

         jeollanamdo :  ["전체", "목포시", "여수시", "순천시", "나주시", "광양시", "담양군", "곡성군", "구례군",
            "고흥군", "보성군", "화순군", "장흥군", "강진군", "해남군", "영암군", "무안군", "함평군", "영광군", "장성군", "완도군", "진도군", "신안군" ],
            
         gyeongsangbukdo : ["전체", "포항시 남구", "포항시 북구", "경주시", "김천시", "안동시", "구미시", "영주시", "영천시", 
            "상주시", "문경시", "경산시", "군위군", "의성군", "청송군", "영양군", "영덕군", "청도군", "고령군", "성주군", "칠곡군",
            "예천군", "봉화군", "울진군", "울릉군" ],
         
         gyeongsangnamdo : ["전체", "창원시 의창구", "창원시 성산구", "창원시 마산합포구", "창원시 마산회원구", "창원시 진해구", "진주시",
            "통영시", "사천시", "김해시", "밀양시", "거제시", "양산시", "의령군", "함안군", "창녕군", "고성군", "남해군", "하동군",
            "산청군", "함양군", "거창군", "합천군" ],

         sejong : ["전체"],
         
         jeju : ["전체", "서귀포시", "제주시" ]   

    }
    
    switch (mainOption) {
   case "서울특별시":
      var subOption = subOptions.seoul;
      break;
   case "부산광역시":
      var subOption = subOptions.busan;
      break;
   case "대구광역시":
      var subOption = subOptions.deagu;
      break;
   case "인천광역시":
      var subOption = subOptions.incheon;
      break;
   case "광주광역시":
      var subOption = subOptions.gwangju;
      break;
   case "대전광역시":
      var subOption = subOptions.deajeon;
      break;
   case "울산광역시":
      var subOption = subOptions.ulsan;
      break;
   case "경기도":
      var subOption = subOptions.gyeonggido;
      break;
   case "강원도":
      var subOption = subOptions.gangwondo;
      break;
   case "충청북도":
      var subOption = subOptions.chungcheongbukdo;
      break;
   case "충청남도":
      var subOption = subOptions.chungcheongnamdo;
      break;
   case "전라북도":
      var subOption = subOptions.jeollabukdo;
      break;
   case "전라남도":
      var subOption = subOptions.jeollanamdo;
      break;
   case "경상북도":
      var subOption = subOptions.gyeongsangbukdo;
      break;
   case "경상남도":
      var subOption = subOptions.gyeongsangnamdo;
      break;
   case "세종특별자치시":
      var subOption = subOptions.sejong;
      break;
   case "제주특별자치도":
      var subOption = subOptions.jeju;
      break;

   default:
      break;
   }
    //도시 초기화
    subCity.options.length = 0;
    
    for(var i=0; i<subOption.length;i++){
       var option = document.createElement('option');
       option.innerText = subOption[i];
       subCity.append(option);
    }
    subOption= subCity.options[subCity.selectedIndex].text;
    
    console.log("mainOption : "+mainOption);
    console.log("subOption : "+subOption);
}
function Search() {
   Kind();
}

$(document).on('click', 'a[href="#"]', function(e){
	e.preventDefault();
});
</script>    
</head>

<body>
 	<%@includefile="header.jsp"%>
	
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('resources/images/bg_2.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5">
					<p class="breadcrumbs mb-2">
						<span class="mr-2">
						<i class="ion-ios-arrow-forward"></i>
						</span> 
					</p>
					<h1 class="mb-0 bread">공고 보기</h1>
				</div>
			</div>
		</div>
	</section>

	<br>

	<div class="container">
      <ul class="nav nav-tabs" id="myTab" role="tablist">
         <li class="nav-item col-md-4 justify-content-center" style="font-weight: bolder; font-size: 1.4em;">
            <a class="nav-link active" id="guide-tab" data-toggle="tab" href="#guide" role="tab" aria-controls="guide" aria-selected="true">
               <img src="resources/images/guide.gif" style="width: 2em; height: 2em;">
               안내
            </a>
         </li>
         <li class="nav-item col-md-4" style="font-weight: bolder; font-size: 1.4em;">
            <a class="nav-link" id="dog-tab" data-toggle="tab" href="#dog" role="tab" aria-controls="dog" aria-selected="false">
               <img src="resources/images/dog.gif" style="width: 2em; height: 2em; align: center;"> 
               강아지
            </a>
         </li>
         <li class="nav-item col-md-4" style="font-weight: bolder; font-size: 1.4em;">
            <a class="nav-link" id="cat-tab" data-toggle="tab" href="#cat" role="tab" aria-controls="cat" aria-selected="false">
               <img src="resources/images/cat.gif" style="width: 2em; height: 2em;">
               고양이
            </a>
         </li>
      </ul>

		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="guide" role="tabpanel" aria-labelledby="guide-tab">
				<div class="form-inline">
					<img class="card-img-center" src="resources/images/dog01.gif" alt="Card image" style="width: 20vw;; height: 20vh;"> 
					<img class="card-img-center" src="resources/images/cat01.gif" alt="Card image" style="width: 18vw; height: 20vh;">
					<h3 style="font-weight: bolder;">유실 동물 발견시 신고하세요!</h3>
                       <div class="card-body text-center">
						<ul style="list-style-type: none;">
							<li>
								<h5 class="notice">유실/유기동물 발견시 관할 시ㆍ군ㆍ구청과 해당 유기동물 보호시설에 신고해야 합니다.</h5>
							</li>
							<li>
								<h5 class="notice">Save the Animal에서는 개인 보호중인 동물도 등록 가능합니다.</h5>
							</li>
						</ul>
					</div>
				</div>			
				
				<div class="row d-flex">	
					
		    		<c:forEach items="${list}" var="vo" varStatus="status">
			    		<div class="col-md-4 d-flex ftco-animate">
							<div class="blog-entry align-self-stretch">
								<a href="ad_content" class="block-20 rounded"
									style="background-image: url('${list_img[status.index].aimg_path}');"> </a>
								<div class="text p-4">
									<div class="meta mb-2">
										<div style="font-size: 15px;">${vo.ani_kind}</div>
										<div>${vo.ani_datetime}</div>
									</div>
									<h3 class="heading">${vo.ani_occur_address}</h3>
								</div>
							</div>
						</div>
		    		</c:forEach>
		    		
		    		
				</div>
			</div>

			<div class="tab-pane fade" id="dog" role="tabpanel" aria-labelledby="dog-tab">
				<br>
				<fieldset>
					<div class="search-form">
					
						<form name="SearchForm" method="get" action="#">
							<input type="hidden" name="listType" value=""> 
							<input type="hidden" name="style" value="webzine"> 
							<input type="hidden" name="code" value="dog">
							<ul>
								<li class="form-inline col-md-12 justify-content-center">
								<select class="custom-select mb-3" name="ani_kind">
									<option value="">----- 전체-----</option>
									<option value="">-전체견종-</option>
									<option value="">-------------------------------</option>
									<option value="1">골든 리트리버＋</option>
									<option value="3">그레이트 덴＋</option>
									<option value="4">그레이트 피레니즈＋</option>
									<option value="2">그레이하운드＋</option>
									<option value="353">기타견종＋</option>
									<option value="6">닥스훈트＋</option>
									<option value="7">달마시언＋</option>
									<option value="8">도베르만＋</option>
									<option value="114">도사＋</option>
									<option value="350">동경견＋</option>
									<option value="9">라사 압소＋</option>
									<option value="11">라이카＋</option>
									<option value="10">래브라도 리트리버＋</option>
									<option value="12">로트바일러＋</option>
									<option value="15">말티즈＋</option>
									<option value="17">미니어쳐 핀셔＋</option>
									<option value="354">믹스견＋</option>
									<option value="18">바셋 하운드＋</option>
									<option value="20">버니즈 마운틴 독＋</option>
									<option value="118">베들링턴 테리어＋</option>
									<option value="14">벨지언 세퍼드 독＋</option>
									<option value="76">보더 콜리＋</option>
									<option value="23">보르조이＋</option>
									<option value="21">보스턴 테리어＋</option>
									<option value="22">복서＋</option>
									<option value="25">불 테리어＋</option>
									<option value="24">불독＋</option>
									<option value="27">브리터니 스패니얼＋</option>
									<option value="28">비글＋</option>
									<option value="29">비숑 프리제＋</option>
									<option value="31">사모예드＋</option>
									<option value="32">삽살개＋</option>
									<option value="33">샤 페이＋</option>
									<option value="34">세인트 버나드 독＋</option>
									<option value="36">셔틀랜드 쉽독＋</option>
									<option value="37">슈나우저＋</option>
									<option value="131">스코티쉬 테리어＋</option>
									<option value="41">시 츄＋</option>
									<option value="39">시바＋</option>
									<option value="40">시베리안 허스키＋</option>
									<option value="44">아메리칸 코커 스패니얼＋</option>
									<option value="43">아메리칸 핏 불 테리어＋</option>
									<option value="46">아키타＋</option>
									<option value="47">아프간 하운드＋</option>
									<option value="48">알래스칸 맬러뮤트＋</option>
									<option value="129">오스트레일리언 실키 테리어＋</option>
									<option value="51">올드 잉글리시 쉽독＋</option>
									<option value="53">요크셔 테리어＋</option>
									<option value="71">웨스트 하이랜드 화이트 테리어＋</option>
									<option value="54">웰시 코기＋</option>
									<option value="357">이탈리언 코로소 독＋</option>
									<option value="55">잉글리시 세터＋</option>
									<option value="56">잉글리시 코커 스패니얼＋</option>
									<option value="216">잭 러셀 테리어＋</option>
									<option value="35">저먼 세퍼드 독＋</option>
									<option value="38">제퍼니즈 스피츠＋</option>
									<option value="60">제퍼니즈 친＋</option>
									<option value="57">진돗개＋</option>
									<option value="58">차우 차우＋</option>
									<option value="59">치와와＋</option>
									<option value="150">캐리 블루 테리어＋</option>
									<option value="61">캐벌리어 킹 찰스 스패니얼＋</option>
									<option value="334">코튼 드 툴리어＋</option>
									<option value="62">콜리＋</option>
									<option value="158">티베튼 스패니얼＋</option>
									<option value="30">파피용＋</option>
									<option value="64">퍼그＋</option>
									<option value="65">페키니즈＋</option>
									<option value="362">페터데일 테리어＋</option>
									<option value="66">포메라니언＋</option>
									<option value="92">포인터(포인팅 독)＋</option>
									<option value="68">폭스 테리어＋</option>
									<option value="50">푸들＋</option>
									<option value="160">풀리＋</option>
									<option value="69">풍산개＋</option>
									<option value="70">프랜치 불독＋</option>
									<option value="91">휘펫＋</option>
								</select> &nbsp&nbsp 
								
								<script type="text/javascript" src="./js/addr_top.js"></script> 
								<select class="custom-select mb-3" name="sci" onchange="change(this.selectedIndex);">
									<option value="" selected="">전체</option>
									<option value="서울특별시">서울특별시</option>
									<option value="부산광역시">부산광역시</option>
									<option value="대구광역시">대구광역시</option>
									<option value="인천광역시">인천광역시</option>
									<option value="광주광역시">광주광역시</option>
									<option value="대전광역시">대전광역시</option>
									<option value="울산광역시">울산광역시</option>
									<option value="경기도">경기도</option>
									<option value="강원도">강원도</option>
									<option value="충청북도">충청북도</option>
									<option value="충청남도">충청남도</option>
									<option value="전라북도">전라북도</option>
									<option value="전라남도">전라남도</option>
									<option value="경상북도">경상북도</option>
									<option value="경상남도">경상남도</option>
									<option value="세종특별자치시">세종특별자치시</option>
									<option value="제주특별자치도">제주특별자치도</option>
								</select> &nbsp&nbsp 
								
								<select class="custom-select mb-3" name="sco">
								<option value="">전체</option>
								</select> &nbsp&nbsp 
								
								<select class="custom-select mb-3" name="sgu">
									<option value="">전체(구분)</option>
									<option value="L">실종신고</option>
									<option value="K">구조신고</option>
									<option value="S">목격신고</option>
								</select> &nbsp&nbsp&nbsp&nbsp 
								
								<input type="submit" value="검색" class="btn btn-success">&nbsp&nbsp&nbsp&nbsp 
								<input type="reset" value="다시" class="btn btn-success">
							</ul>
							
							<div class="col-md-8 mx-auto text-center">
								<div class="form-group" onclick="this.form.reset">
									<input type="file" id="files" class="form-control filesImgs" name="image_file" 
										accept=".jpg, .jpeg, .png" multiple style="padding-left: 40%; padding-top:0.7em; font-size: 1em;" > 
									<label class="label" for="uploadimages">
										<div id="uploadimages border border-primary">
											<div class="list"></div>
										</div>
									</label>
									
								</div>
								<script>
									$(function() {
										var imagesPreview = function(input,placeToInsertImagePreview) 
										{
											if (input.files) {
												var filesAmount = input.files.length
												if (filesAmount > 11) {
													alert("ONLY 10 FILES")
													imagesPreview.stopPropagation()
													imagesPreview.preventDefault()
												}
												for (i = 0; i < 10; i++) {
													var reader = new FileReader()
													reader.onload = function(event) 
													{
														$($.parseHTML('<img>')).attr('src',event.target.result)
															.appendTo(placeToInsertImagePreview)
													}
													reader.readAsDataURL(input.files[i])
												}
											}
										}
										$('#files').on('change',function() {
											imagesPreview(this, 'div.list')
										})
									})
								</script>
							</div>
						</form>
					</div>
				</fieldset>
				
			<div class="row d-flex">   
               
                <c:forEach items="${list}" var="vo" varStatus="status">
                   <div class="col-md-4 d-flex justify-content-center ftco-animate">
                     <div class="blog-entry align-self-stretch" style="display: inline-block;width: 290px;">
                        <a href="commu_content" class="block-20 rounded"
                           style="background-image: url('${list_img[status.index].aimg_path}');"> </a>
                        <div class="text p-4">
                           <div class="meta mb-2">
                              <div style="font-size: 15px;">${vo.ani_kind}</div>
                              <div>${vo.ani_datetime}</div>
                           </div>
                           <h3 class="heading">${vo.ani_occur_address}</h3>
                        </div>
                     </div>
                  </div>
                </c:forEach>
                
                
            </div>
			</div>

			<div class="tab-pane fade" id="cat" role="tabpanel" aria-labelledby="cat-tab">
				<br>
				<fieldset>
					<div class="search-form">
						<form name="SearchForm" method="get" action="#">
							<input type="hidden" name="listType" value=""> 
							<input type="hidden" name="style" value="webzine"> 
							<input type="hidden" name="code" value="cat">
							<ul>
								<li class="form-inline col-md-12 justify-content-center">
								<select class="custom-select mb-3" name="ani_kind">
									<option value="">-----전체-----</option>
									<option value="">----------------</option>
									<option value="54">기타묘종＋</option>
									<option value="95">나폴레옹＋</option>
									<option value="96">나폴레옹 롱헤어＋</option>
									<option value="48">네벨룽＋</option>
									<option value="49">노르웨이지안 포레스트 캣＋</option>
									<option value="27">데본 렉스＋</option>
									<option value="30">돈스코이＋</option>
									<option value="42">라펌＋</option>
									<option value="82">라펌 쇼트헤어＋</option>
									<option value="58">래그돌＋</option>
									<option value="59">러시안 블루＋</option>
									<option value="45">망스＋</option>
									<option value="47">먼치킨＋</option>
									<option value="83">먼치킨 롱헤어＋</option>
									<option value="43">메인 쿤＋</option>
									<option value="46">믹스묘＋</option>
									<option value="94">민스킨＋</option>
									<option value="10">발리니즈＋</option>
									<option value="12">버만＋</option>
									<option value="16">버미즈＋</option>
									<option value="17">버밀라＋</option>
									<option value="11">벵갈 캣＋</option>
									<option value="13">봄베이＋</option>
									<option value="14">브라질리안 쇼트헤어＋</option>
									<option value="80">브리티시 롱헤어＋</option>
									<option value="15">브리티시 쇼트헤어＋</option>
									<option value="60">사바나＋</option>
									<option value="21">샤우지＋</option>
									<option value="20">샤트룩스＋</option>
									<option value="63">샴＋</option>
									<option value="89">세렝게티＋</option>
									<option value="22">세루빔＋</option>
									<option value="62">셀키릭 랙스＋</option>
									<option value="88">셀키릭 렉스 롱헤어＋</option>
									<option value="68">소말리＋</option>
									<option value="67">소코키＋</option>
									<option value="66">스노우슈＋</option>
									<option value="61">스코티시 폴드＋</option>
									<option value="87">스코티시 폴드 롱헤어＋</option>
									<option value="76">스키프 토이 밥테일＋</option>
									<option value="70">스털링＋</option>
									<option value="69">스핑크스＋</option>
									<option value="64">시베리안＋</option>
									<option value="65">싱가푸라＋</option>
									<option value="2">아메리칸 밥테일＋</option>
									<option value="78">아메리칸 밥테일 쇼트헤어＋</option>
									<option value="4">아메리칸 쇼트헤어＋</option>
									<option value="5">아메리칸 와이어헤어＋</option>
									<option value="3">아메리칸 컬＋</option>
									<option value="79">아메리칸 컬 롱헤어＋</option>
									<option value="1">아비시니안＋</option>
									<option value="7">아시안 세미롱헤어＋</option>
									<option value="8">아시안 쇼트헤어＋</option>
									<option value="52">오리엔탈 롱헤어＋</option>
									<option value="53">오리엔탈 쇼트헤어＋</option>
									<option value="9">오스트레일리안 미스트＋</option>
									<option value="51">오조스 아줄리스＋</option>
									<option value="84">오조스 아줄리스 롱헤어＋</option>
									<option value="50">옥시켓＋</option>
									<option value="75">요크 쵸코렛＋</option>
									<option value="32">유럽피언 쇼트헤어＋</option>
									<option value="85">이그저틱 쇼트헤어＋</option>
									<option value="31">이집션 마우＋</option>
									<option value="38">자바니즈＋</option>
									<option value="81">재패니스 밥테일 롱헤어＋</option>
									<option value="34">저먼 렉스＋</option>
									<option value="37">제퍼니즈 밥테일＋</option>
									<option value="19">찬틸리/티파니 캣＋</option>
									<option value="77">친칠라 캣＋</option>
									<option value="93">카호마니＋</option>
									<option value="23">칼라포인스 쇼트헤어＋</option>
									<option value="18">캘리포니아 스팽글드 캣＋</option>
									<option value="25">코니시 렉스＋</option>
									<option value="39">코렛＋</option>
									<option value="28">코리아 롱 헤어＋</option>
									<option value="29">코리아 쇼트 헤어＋</option>
									<option value="40">쿠릴리안 밥테일 롱헤어＋</option>
									<option value="41">쿠릴리안 밥테일 쇼트헤어＋</option>
									<option value="26">킴릭＋</option>
									<option value="90">타이＋</option>
									<option value="74">터키시 밴＋</option>
									<option value="73">터키시 앙고라＋</option>
									<option value="72">토이거＋</option>
									<option value="71">통키니즈＋</option>
									<option value="55">페르시안＋</option>
									<option value="56">피터볼드＋</option>
									<option value="86">픽시밥 롱헤어＋</option>
									<option value="57">핏시-밥＋</option>
									<option value="35">하바나 브라운＋</option>
									<option value="91">하이랜더＋</option>
									<option value="92">하이랜드 쇼트헤어＋</option>
									<option value="44">히말라얀＋</option>
								</select> &nbsp&nbsp 
								
								<script type="text/javascript" src="./js/addr_top.js"></script> 
								<select class="custom-select mb-3" name="sci" onchange="change(this.selectedIndex);">
									<option value="" selected="">전체</option>
									<option value="서울특별시">서울특별시</option>
									<option value="부산광역시">부산광역시</option>
									<option value="대구광역시">대구광역시</option>
									<option value="인천광역시">인천광역시</option>
									<option value="광주광역시">광주광역시</option>
									<option value="대전광역시">대전광역시</option>
									<option value="울산광역시">울산광역시</option>
									<option value="경기도">경기도</option>
									<option value="강원도">강원도</option>
									<option value="충청북도">충청북도</option>
									<option value="충청남도">충청남도</option>
									<option value="전라북도">전라북도</option>
									<option value="전라남도">전라남도</option>
									<option value="경상북도">경상북도</option>
									<option value="경상남도">경상남도</option>
									<option value="세종특별자치시">세종특별자치시</option>
									<option value="제주특별자치도">제주특별자치도</option>
								</select> &nbsp&nbsp 
								<select class="custom-select mb-3" name="sco">
									<option value="">전체</option>
								</select> &nbsp&nbsp 
								<select class="custom-select mb-3" name="sgu">
									<option value="">전체(구분)</option>
									<option value="L">실종신고</option>
									<option value="K">구조신고</option>
									<option value="S">목격신고</option>
								</select> &nbsp&nbsp&nbsp&nbsp 
								<input type="submit" value="검색" class="btn btn-success">&nbsp&nbsp&nbsp&nbsp 
								<input type="reset" value="다시" class="btn btn-success">								
							</ul>
							
							<div class="col-md-8 mx-auto text-center">
								<div class="form-group" onclick="this.form.reset">
									<input type="file" id="files" class="form-control filesImgs" name="image_file"
										accept=".jpg, .jpeg, .png" multiple style="padding-left: 40%; padding-top:0.7em; font-size: 1em;" > 
									<label class="label" for="uploadimages">
										<div id="uploadimages border border-primary">
											<div class="list"></div>
										</div>
									</label>
								
								</div>
								<script>
									$(function() {
										var imagesPreview = function(input,placeToInsertImagePreview) 
										{
											if (input.files) {
												var filesAmount = input.files.length
												if (filesAmount > 11) {
													alert("ONLY 10 FILES")
													imagesPreview.stopPropagation()
													imagesPreview.preventDefault()
												}
												for (i = 0; i < 10; i++) {
													var reader = new FileReader()
													reader.onload = function(event) 
													{
														$($.parseHTML('<img>')).attr('src',event.target.result)
															.appendTo(placeToInsertImagePreview)
													}
													reader.readAsDataURL(input.files[i])
												}
											}
										}
										$('#files').on('change',function() {
											imagesPreview(this, 'div.list')
										})
									})
								</script>
							</div>
							
						</form>
					</div>
				</fieldset>
			</div>
			
		</div>

	</div>

	<section class="ftco-section bg-light">
		<div class="container">
			<div class="row mt-5">
				<div class="col text-center">
					<div class="block-27">
						<ul class="pagination justify-content-center" id="pagination">
							<li><a href="#">&lt;</a></li>
							<li class="active"><span>1</span></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&gt;</a></li>
						</ul>
					</div>
					<script>
						$('selector')
							.pagination(
									{
										items : 20,
										itemOnPage : 6,
										currentPage : 1,
										cssStyle : '',
										prevText : '<span aria-hidden="true">&laquo;</span>',
										nextText : '<span aria-hidden="true">&raquo;</span>',
										onInit : function() {
											// fire first page loading
										},
										onPageClick : function(page, evt) {
											// some code
										}
									});
					</script>
				</div>
			</div>
		</div>
	</section>

	<section>
		<%@includefile="footer.jsp"%>
	</section>

	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
	      <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
	      <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" />
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
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="resources/js/google-map.js"></script>
	<script src="resources/js/main.js"></script>

</body>

</html>