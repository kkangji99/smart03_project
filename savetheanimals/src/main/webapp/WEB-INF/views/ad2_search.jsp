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
    <li class="nav-item " style="font-weight: bolder;font-size: 2em;  padding-right: 5rem; padding-left: 5rem; border: 2px solid black; border-radius:30%;">
      <a class="nav-link" href="${cpath}/ad2.do"><img src="resources/images/cat.gif" style="width: 2em; height: 2em;">고양이</a>
    </li>
  </ul>
</nav>


   <div class="container">
      
      <div class="tab-content" id="myTabContent">
         <div class="tab-pane fade show active" id="cat">
            <br>
            <fieldset>
               <div class="search-form">
                  <form name="SearchForm" method="post" action="${cpath}/searchCat.do" enctype="multipart/form-data">
                     <input type="hidden" name="listType" value=""> 
                     <input type="hidden" name="style" value="webzine"> 
                     <input type="hidden" name="code" value="cat">
                     <ul>
                        <li class="form-inline col-md-12 justify-content-center">
                        <select class="custom-select mb-3" name="ani_kind" id = "ani_kind_cat" onchange="Kind('ani_kind_cat')">
                              <option value="">전체</option>
                              <option value="46">믹스묘＋</option>
                              <option value="54">기타묘종＋</option>
                              <option value="95">나폴레옹＋</option>
                              <option value="96">나폴레옹 롱 헤어＋</option>
                              <option value="48">네벨룽＋</option>
                              <option value="49">노르웨이지안 포레스트 캣＋</option>
                              <option value="27">데본 렉스＋</option>
                              <option value="30">돈스코이＋</option>
                              <option value="42">라펌＋</option>
                              <option value="82">라펌 쇼트 헤어＋</option>
                              <option value="58">래그돌＋</option>
                              <option value="59">러시안 블루＋</option>
                              <option value="45">망스＋</option>
                              <option value="47">먼치킨＋</option>
                              <option value="83">먼치킨 롱 헤어＋</option>
                              <option value="43">메인 쿤＋</option>
                              <option value="94">민스킨＋</option>
                              <option value="10">발리니즈＋</option>
                              <option value="12">버만＋</option>
                              <option value="16">버미즈＋</option>
                              <option value="17">버밀라＋</option>
                              <option value="11">벵갈 캣＋</option>
                              <option value="13">봄베이＋</option>
                              <option value="14">브라질리안 쇼트 헤어＋</option>
                              <option value="80">브리티시 롱 헤어＋</option>
                              <option value="15">브리티시 쇼트 헤어＋</option>
                              <option value="60">사바나＋</option>
                              <option value="21">샤우지＋</option>
                              <option value="20">샤트룩스＋</option>
                              <option value="63">샴＋</option>
                              <option value="89">세렝게티＋</option>
                              <option value="22">세루빔＋</option>
                              <option value="62">셀키릭 랙스＋</option>
                              <option value="88">셀키릭 렉스 롱 헤어＋</option>
                              <option value="68">소말리＋</option>
                              <option value="67">소코키＋</option>
                              <option value="66">스노우슈＋</option>
                              <option value="61">스코티시 폴드＋</option>
                              <option value="76">스키프 토이 밥테일＋</option>
                              <option value="70">스털링＋</option>
                              <option value="69">스핑크스＋</option>
                              <option value="64">시베리안＋</option>
                              <option value="65">싱가푸라＋</option>
                              <option value="2">아메리칸 밥테일＋</option>
                              <option value="78">아메리칸 밥테일 쇼트 헤어＋</option>
                              <option value="4">아메리칸 쇼트 헤어＋</option>
                              <option value="5">아메리칸 와이어헤어＋</option>
                              <option value="3">아메리칸 컬＋</option>
                              <option value="79">아메리칸 컬 롱 헤어＋</option>
                              <option value="1">아비시니안＋</option>
                              <option value="7">아시안 세미롱 헤어＋</option>
                              <option value="8">아시안 쇼트 헤어＋</option>
                              <option value="52">오리엔탈 롱 헤어＋</option>
                              <option value="53">오리엔탈 쇼트 헤어＋</option>
                              <option value="9">오스트레일리안 미스트＋</option>
                              <option value="51">오조스 아줄리스＋</option>
                              <option value="84">오조스 아줄리스 롱 헤어＋</option>
                              <option value="50">옥시켓＋</option>
                              <option value="75">요크 쵸코렛＋</option>
                              <option value="32">유럽피언 쇼트 헤어＋</option>
                              <option value="85">이그저틱 쇼트 헤어＋</option>
                              <option value="31">이집션 마우＋</option>
                              <option value="38">자바니즈＋</option>
                              <option value="81">재패니스 밥테일 롱 헤어＋</option>
                              <option value="34">저먼 렉스＋</option>
                              <option value="37">제퍼니즈 밥테일＋</option>
                              <option value="19">찬틸리/티파니 캣＋</option>
                              <option value="77">친칠라 캣＋</option>
                              <option value="93">카호마니＋</option>
                              <option value="23">칼라포인스 쇼트 헤어＋</option>
                              <option value="18">캘리포니아 스팽글드 캣＋</option>
                              <option value="25">코니시 렉스＋</option>
                              <option value="39">코렛＋</option>
                              <option value="28">코리아 롱 헤어＋</option>
                              <option value="29">코리아 쇼트 헤어＋</option>
                              <option value="40">쿠릴리안 밥테일 롱 헤어＋</option>
                              <option value="41">쿠릴리안 밥테일 쇼트 헤어＋</option>
                              <option value="26">킴릭＋</option>
                              <option value="90">타이＋</option>
                              <option value="74">터키시 밴＋</option>
                              <option value="73">터키시 앙고라＋</option>
                              <option value="72">토이거＋</option>
                              <option value="71">통키니즈＋</option>
                              <option value="55">페르시안＋</option>
                              <option value="56">피터볼드＋</option>
                              <option value="86">픽시밥 롱 헤어＋</option>
                              <option value="57">핏시-밥＋</option>
                              <option value="35">하바나 브라운＋</option>
                              <option value="91">하이랜더＋</option>
                              <option value="92">하이랜드 쇼트 헤어＋</option>
                              <option value="44">히말라얀＋</option>
                        </select> &nbsp&nbsp 
                        
                        <script type="text/javascript" src="./js/addr_top.js"></script>
                              <select class="custom-select mb-3" name="ani_occur_address" id = "ani_occur_address_cat"
                            onchange="City('ani_occur_address_cat','ani_occur_address_sub_cat')">
                              <option value="">전체</option>
                              <option value="서울">서울특별시</option>
                              <option value="부산">부산광역시</option>
                              <option value="대구">대구광역시</option>
                              <option value="인천">인천광역시</option>
                              <option value="광주">광주광역시</option>
                              <option value="대전">대전광역시</option>
                              <option value="울산">울산광역시</option>
                              <option value="경기">경기도</option>
                              <option value="강원도">강원도</option>
                              <option value="충청북도">충청북도</option>
                              <option value="충청남도">충청남도</option>
                              <option value="전라북도">전라북도</option>
                              <option value="전라남도">전라남도</option>
                              <option value="경상북도">경상북도</option>
                              <option value="경상남도">경상남도</option>
                              <option value="세종">세종특별자치시</option>
                              <option value="제주">제주특별자치도</option>
                        </select> &nbsp&nbsp
                         
                        <select class="custom-select mb-3" id ="ani_occur_address_sub_cat"
                        onchange="SubCity('ani_occur_address_sub_cat')" name="ani_occur_address_sub">
                              <option value="">전체</option>
                        </select> &nbsp&nbsp 
                        
                        <select class="custom-select mb-3" name="ani_cate_code" id ="ani_cate_code_cat" onchange="Cate('ani_cate_code_cat')">
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
                              accept=".jpg" multiple style="padding-left: 40%; font-size: 1em;">
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
            <p class="col-12" style="padding-left: 5%; font-weight: bold;">비슷한 동물</p>
    				<c:forEach items="${searchCat}" var="cat" varStatus="status">
    					<c:forEach items="${data}" var="data2" varStatus="status">
                         <c:if test="${cat.ani_num eq data2 }">
                         <div class="col-md-4 d-flex justify-content-center ftco-animate">
                           <div class="blog-entry align-self-stretch" style="display: inline-block;width: 290px;">
                              <a href="${cpath}/ad_info.do?ani_num=${cat.ani_num}" class="block-20 rounded"
                                 style="background-image: url('${cat.aimg_path}'); "> 
                              </a>
                              <div class="text p-4">
                                 <div class="meta mb-2">
                                    <div style="font-size: 15px;">${cat.ani_kind}</div>
                                    <div style="font-size: 15px;">${(cat.ani_datetime).substring(0,10)}</div>
                                 </div>
                                 <h3 class="heading">${cat.ani_occur_address}</h3>
                              </div>
                           </div>
                        </div>
                        </c:if>
                        </c:forEach>
                      </c:forEach>
                      </div>
            <div class="row d-flex">   
               <c:choose>
                      <c:when test="${checkCat=='없'}">
                   <p class="col-12" style="padding-left: 5%; font-weight: bold;">
                              총 <fmt:formatNumber value="${searchCat.size()}" pattern="#,###" />건 
                      </p> <br>
                      <script type="text/javascript">
                      infoModal();
                      </script>
                  </c:when>
                     <c:otherwise>
                      <!-- 검색결과 개수 표시 -->
                           <p class="col-12" style="padding-left: 5%; font-weight: bold;">
                              총 <fmt:formatNumber value="${searchCat.size()}" pattern="#,###" />건
                           </p>
                           
                  
    
                     <c:forEach items="${searchCat}" var="cat" varStatus="status">
                         <div class="col-md-4 d-flex justify-content-center ftco-animate">
                           <div class="blog-entry align-self-stretch" style="display: inline-block;width: 290px;">
                              <a href="${cpath}/ad_info.do?ani_num=${cat.ani_num}" class="block-20 rounded"
                                 style="background-image: url('${cat.aimg_path}'); "> 
                              </a>
                              <div class="text p-4">
                                 <div class="meta mb-2">
                                    <div style="font-size: 15px;">${cat.ani_kind}</div>
                                    <div style="font-size: 15px;">${(cat.ani_datetime).substring(0,10)}</div>
                                 </div>
                                 <h3 class="heading">${cat.ani_occur_address}</h3>
                              </div>
                           </div>
                        </div>
                      </c:forEach>
                     </c:otherwise> 
               </c:choose> 

                
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