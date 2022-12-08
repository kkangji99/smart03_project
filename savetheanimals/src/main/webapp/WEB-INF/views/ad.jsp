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

<script type="text/javascript">
  function infoModal() {
	  Swal.fire(
			  '검색 총 0건',
			  '',
			  'info'
			)
}
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
         <li class="nav-item col-md-4" style="font-weight: bolder; font-size: 1.4em;" >
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
                  <!-- 검색결과 개수 표시 -->
            <c:choose>
               <c:when test="${list.size()<1000}">
                    <p class="col-12" style="padding-left: 5%; font-weight: bold;">
                       총  ${list.size()}건
                    </p>
               </c:when>
               <c:otherwise>
                   <p class="col-12" style="padding-left: 5%; font-weight: bold;">
                        총 <fmt:formatNumber value="${list.size()}" pattern="#,###" />건 
                   </p>
               </c:otherwise>
            </c:choose>
                <c:forEach items="${list}" var="vo" varStatus="status">
                   <div class="col-md-4 d-flex justify-content-center ftco-animate">
                     <div class="blog-entry align-self-stretch" style="display: inline-block;width: 290px;">
                        <a href="${cpath}/ad_info.do?ani_num=${vo.ani_num}" class="block-20 rounded"
                           style="background-image: url('${vo.aimg_path}'); "> 
                        </a>
                        <div class="text p-4">
                           <div class="meta mb-2">
                              <div style="font-size: 15px;">${vo.ani_kind}</div>
                              <div style="font-size: 15px;">${(vo.ani_datetime).substring(0,10)}</div>
                           </div>
                           <h3 class="heading">${vo.ani_occur_address}</h3>
                        </div>
                     </div>
                  </div>

                </c:forEach>
                 <script type="text/javascript">
                  $(function paging(totalData, currentPage) {
                     const dataPerPage = 10
                     const pageCount = 5
                  
                     const totalPage = Math.ceil(totalData / dataPerPage)
                     const pageGroup = Math.ceil(currentPage / pageCount)
                     
                     let last = pageGroup * pageCount
                     
                     if (last > totalPage)
                        last = totalPage
                     let first = last - (pageCount - 1)
                  
                     const next = last
                     const prev = first - 1
                  
                     if (totalPage < 1) {
                        first = last
                     }
                     const pages = $("#pages")
                     pages.empty()
                     if (first > 5) {
                        pages.append("<li>" +"<a onclick=\"GetTarget(" + (prev) +
                              "):\" style='margin-left: 2px'›prev</a></li>")
                     }
                     for (let j = first; j <= last;j++){
                        if (currentPage ==(j)) {
                           pages.append("<li>"+"<a onclick=\"GetTarget("+(j)+
                                 ");\" style='margin-left: 2px'›"+(j)+"</a></li>")
                        }
                        else if (j > 0) {
                           pages.append("<li>"+"<a onclick=\"GetTarget("+(j)+
                                 ");\" style='margin-left: 2px'›"+(j)+"</a></li>")
                        }
                     }
                     
                     if(next>5 && next<totalPage) {
                        pages.append("<li>"+"<a onclick=\"GetTarget("+(next)+
                              ");\" style='margin-left: 2px'›next</a></li>")
                     }
                  })   
               </script>
                
            </div>
         </div>

         <div class="tab-pane fade" id="dog" role="tabpanel" aria-labelledby="dog-tab">
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
                              accept=".jpg, .jpeg, .png" multiple style="padding-left: 25%; font-size: 1em;" required>
                           <label class="label" for="uploadimages">
                              <div id="uploadimages border border-primary">
                                 <div class="list"></div>
                              </div>
                           </label>
                           <div class="valid-feedback"></div>
                           <div class="invalid-feedback">이미지 선택</div>
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
                           	 총 <fmt:formatNumber value="${list_dog.size()}" pattern="#,###" />건 
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

         <div class="tab-pane fade" id="cat" role="tabpanel" aria-labelledby="cat-tab">
            <br>
            <fieldset>
               <div class="search-form">
                  <form name="SearchForm" method="get" action="${cpath}/searchCat.do">
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
                              accept=".jpg, .jpeg, .png" multiple style="padding-left: 25%; font-size: 1em;" required>
                           <label class="label" for="uploadimages">
                              <div id="uploadimages border border-primary">
                                 <div class="list"></div>
                              </div>
                           </label>
                           <div class="valid-feedback"></div>
                           <div class="invalid-feedback">이미지 선택</div>
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
                     <c:when test="${checkCat=='전'}">
                <!-- 검색결과 개수 표시 -->
                              <p class="col-12" style="padding-left: 5%; font-weight: bold;">
                                  총 <fmt:formatNumber value="${list_cat.size()}" pattern="#,###" />건 
                              </p>

                           <c:forEach items="${list_cat}" var="licat" varStatus="status">
                         <div class="col-md-4 d-flex justify-content-center ftco-animate">
                           <div class="blog-entry align-self-stretch" style="display: inline-block;width: 290px;">
                              <a href="${cpath}/ad_info.do?ani_num=${licat.ani_num}" class="block-20 rounded"
                                 style="background-image: url('${licat.aimg_path}'); "> 
                              </a>
                              <div class="text p-4">
                                 <div class="meta mb-2">
                                    <div style="font-size: 15px;">${licat.ani_kind}</div>
                                    <div style="font-size: 15px;">${(licat.ani_datetime).substring(0,10)}</div>
                                 </div>
                                 <h3 class="heading">${licat.ani_occur_address}</h3>
                              </div>
                           </div>
                        </div>
                      </c:forEach>

                     </c:when> 
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
                     <c:choose>
                        <c:when test="${searchCat.size()<1000}">
                           <p class="col-12" style="padding-left: 5%; font-weight: bold;">
                              총  ${searchCat.size()}건
                           </p>
                        </c:when>
                        <c:otherwise>
                           <p class="col-12" style="padding-left: 5%; font-weight: bold;">
                              총 <fmt:formatNumber value="${searchCat.size()}" pattern="#,###" />건
                           </p>
                        </c:otherwise>
                     </c:choose>
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