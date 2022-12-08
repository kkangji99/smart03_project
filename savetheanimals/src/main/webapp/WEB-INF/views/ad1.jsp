<%@page import="kr.animal.entity.Animal"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<link rel="stylesheet" href="resources/css/adZoomIn.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>

<script type="text/javascript" src="resources/js/adSearch.js">/*검색용*/ </script>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>

<link rel="stylesheet" href="resources/js/pagination.js">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>

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
    <nav class="navbar navbar-expand-lg justify-content-center">
  <ul class="navbar-nav">
    <li class="nav-item"  id="navbar-item" onclick="myFunction()" style="font-weight: bolder; font-size: 2em;  padding-right: 5rem; padding-left: 5rem;" >
      <a class="nav-link" href="${cpath}/ad.do"><img src="resources/images/guide.gif" style="width: 2em; height: 2em;">
               안내</a>
    </li>
   
      <li class="nav-item" style="font-weight: bolder; font-size: 2em;  padding-right: 5rem; padding-left: 5rem;" >
      <a class="nav-link" href="${cpath}/ad1.do"> <img src="resources/images/dog.gif" style="width: 2em; height: 2em; align: center;">강아지</a>
    </li>
    <li class="nav-item " style="font-weight: bolder;font-size: 2em;  padding-right: 5rem; padding-left: 5rem;">
      <a class="nav-link" href="${cpath}/ad2.do"><img src="resources/images/cat.gif" style="width: 2em; height: 2em;">고양이</a>
    </li>
  </ul>
</nav>

   <div class="container">
      
      <div class="tab-content" id="myTabContent">
         <div class="tab-pane fade show active" id="dog">
            <br>
            <fieldset>
               <div class="search-form">
                  <form name="SearchForm" method="get" action="${cpath}/searchDog.do">
                     <input type="hidden" name="listType" value=""> 
                     <input type="hidden" name="style" value="webzine"> 
                     <input type="hidden" name="code" value="dog">
                     <ul>
                        <li class="form-inline col-md-12 justify-content-center">
                        <select class="custom-select mb-3" name="ani_kind" id = "ani_kind_dog" onchange="Kind('ani_kind_dog')">
                           <option value="">전체</option>
                           <option value="354">믹스견＋</option>
                           <option value="353">기타견종＋</option>
                           <option value="1">골든 리트리버＋</option>
                           <option value="3">그레이트 덴＋</option>
                           <option value="4">그레이트 피레니즈＋</option>
                           <option value="2">그레이하운드＋</option>
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
                        <select class="custom-select mb-3" name="ani_occur_address" id = "ani_occur_address_dog"
                            onchange="City('ani_occur_address_dog', 'ani_occur_address_sub_dog')">
                              <option value="">전체</option>
                              <option value="서울">서울특별시</option>
                              <option value="부산">부산광역시</option>
                              <option value="대구">대구광역시</option>
                              <option value="인천">인천광역시</option>
                              <option value="광주">광주광역시</option>
                              <option value="대전">대전광역시</option>
                              <option value="울산">울산광역시</option>
                              <option value="경기">경기도</option>
                              <option value="강원">강원도</option>
                              <option value="충청북도">충청북도</option>
                              <option value="충청남도">충청남도</option>
                              <option value="전라북도">전라북도</option>
                              <option value="전라남도">전라남도</option>
                              <option value="경상북도">경상북도</option>
                              <option value="경상남도">경상남도</option>
                              <option value="세종">세종특별자치시</option>
                              <option value="제주">제주특별자치도</option>
                        </select> &nbsp&nbsp 
                        
                        <select class="custom-select mb-3" id ="ani_occur_address_sub_dog"
                        onchange="SubCity('ani_occur_address_sub_dog')" name="ani_occur_address_sub">
                              <option value="" id="detail_address">전체</option>
                        </select> &nbsp&nbsp 
                        
                        <select class="custom-select mb-3" name="ani_cate_code" id ="ani_cate_code_dog" onchange="Cate('ani_cate_code_dog')">
                              <option value="">전체</option>
                              <option value="ani_lose">실종신고</option>
                              <option value="ani_protect">구조신고</option>
                              <option value="ani_witness">목격신고</option>
                        </select> &nbsp&nbsp&nbsp&nbsp
                        <input type="submit" value="검색" class="btn btn-success">&nbsp&nbsp&nbsp&nbsp 
                        <input type="reset" value="다시" class="btn btn-success">
                     </ul>
                     
                     <div class="col-md-8 mx-auto text-center">
                        <div class="form-group" onclick="this.form.reset">
                            <input type="file" id="files" class="form-control filesImgs" name="image_file" 
                              accept=".jpg, .jpeg, .png" multiple style="padding-left: 40%; font-size: 1em;">
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
            <c:choose>
                  <c:when test="${checkDog=='전'}">
                  <!-- 검색결과 개수 표시 -->

                     <p class="col-12" style="padding-left: 5%; font-weight: bold;">
                               총 <fmt:formatNumber value="${dogAdSelect.size()}" pattern="#,###" />건 
                     </p>

                     <c:forEach items="${list_dog}" var="lidog" varStatus="status">
                      <div class="col-md-4 d-flex justify-content-center ftco-animate">
                        <div class="blog-entry align-self-stretch" style="display: inline-block;width: 290px;">
                           <a href="${cpath}/ad_info.do?ani_num=${lidog.ani_num}" class="block-20 rounded"
                              style="background-image: url('${lidog.aimg_path}'); "> 
                           </a>
                           <div class="text p-4">
                              <div class="meta mb-2">
                                 <div style="font-size: 15px;">${lidog.ani_kind}</div>
                                 <div style="font-size: 15px;">${(lidog.ani_datetime).substring(0,10)}</div>
                              </div>
                              <h3 class="heading">${lidog.ani_occur_address}</h3>
                           </div>
                        </div>
                     </div>
                </c:forEach>
                  </c:when>
                  <c:when test="${checkDog=='없'}">

                   <p class="col-12" style="padding-left: 5%; font-weight: bold;">
                           총 <fmt:formatNumber value="${searchDog.size()}" pattern="#,###" />건 
                      </p><br>
                      <script type="text/javascript">
                      	infoModal();
                      </script>
                  </c:when>
                  <c:otherwise>
                <!-- 검색결과 개수 표시 -->
                      <p class="col-12" style="padding-left: 5%; font-weight: bold;">
                              총 <fmt:formatNumber value="${searchDog.size()}" pattern="#,###" />건 
                      </p>

                     <c:forEach items="${searchDog}" var="dog" varStatus="status">
                   <div class="col-md-4 d-flex justify-content-center ftco-animate">
                     <div class="blog-entry align-self-stretch" style="display: inline-block;width: 290px;">
                        <a href="${cpath}/ad_info.do?ani_num=${dog.ani_num}" class="block-20 rounded"
                           style="background-image: url('${dog.aimg_path}'); "> 
                        </a>
                        <div class="text p-4">
                           <div class="meta mb-2">
                              <div style="font-size: 15px;">${dog.ani_kind}</div>
                              <div style="font-size: 15px;">${(dog.ani_datetime).substring(0,10)}</div>
                           </div>
                           <h3 class="heading">${dog.ani_occur_address}</h3>
                        </div>
                     </div>
                  </div>
                </c:forEach>
                  </c:otherwise> 
            </c:choose> 

                
            </div>
         </div>

         
      </div>

   <!-- 페이징 -->
   	<div class="row mt-5">
		<div class="col text-center">
			<div class="block-27">
				<ul>
					<c:if test="${paging.showPrev}">
			        <li><a href="${cpath}/ad1.do?curPage=1">&laquo;</a></li>
		            <li><a href="${cpath}/ad1.do?curPage=${paging.curPage-1 }">&lt;</a></li>
		            </c:if>
		            <c:forEach begin="${paging.firstPage}"  end="${paging.lastPage}" var="i">
		                  <li><a href="${cpath }/ad1.do?curPage=${i}">  
		                     <c:if test="${i eq paging.curPage }"> <span style="background:green; color:white; border-color:transparent;">${i}</span></c:if>
		                     <c:if test="${i ne paging.curPage }">${i}</c:if> 
		                  </a></li>
		            </c:forEach>
		            
					<c:if test="${paging.showNext}">
		            <li><a href="${cpath}/ad1.do?curPage=${paging.curPage+1 }">&gt;</a></li>
		            <li><a href="${cpath}/ad1.do?curPage=${paging.totalPageCount }">&raquo;</a></li>
		            </c:if>
		           </ul>
    		</div>
		</div>
	</div> 
   </div>

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