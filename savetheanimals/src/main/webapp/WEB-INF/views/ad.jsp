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
    <li class="nav-item"  id="navbar-item" onclick="myFunction()" style="font-weight: bolder; font-size: 2em;  padding-right: 5rem; padding-left: 5rem;  border: 2px solid black;" >
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
         <div class="tab-pane fade show active" id="guide">
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
                   <p class="col-12" style="padding-left: 5%; font-weight: bold;">
                        총 <fmt:formatNumber value="${allAdSelect.size()}" pattern="#,###" />건 
                   </p>

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

   </div>   
   <!-- 페이징 -->
   	<div class="row mt-5">
		<div class="col text-center">
			<div class="block-27">
				<ul>
					<c:if test="${paging.showPrev}">
			        <li><a href="${cpath}/ad.do?curPage=1">&laquo;</a></li>
		            <li><a href="${cpath}/ad.do?curPage=${paging.curPage-1 }">&lt;</a></li>
		            </c:if>
		            <c:forEach begin="${paging.firstPage}"  end="${paging.lastPage}" var="i">
		                  <li><a href="${cpath }/ad.do?curPage=${i}">  
		                     <c:if test="${i eq paging.curPage }"> <span style="background:green; color:white; border-color:transparent;">${i}</span></c:if>
		                     <c:if test="${i ne paging.curPage }">${i}</c:if> 
		                  </a></li>
		            </c:forEach>
		            
					<c:if test="${paging.showNext}">
		            <li><a href="${cpath}/ad.do?curPage=${paging.curPage+1 }">&gt;</a></li>
		            <li><a href="${cpath}/ad.do?curPage=${paging.totalPageCount }">&raquo;</a></li>
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