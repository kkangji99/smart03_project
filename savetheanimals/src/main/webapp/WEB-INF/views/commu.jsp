<%@page import="kr.animal.entity.Post"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Save the Animals</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>

</head>
<body>
	<!-- 커뮤니티 페이지 -->
	 <%@includefile="header.jsp"%>
	<!-- END nav -->
	<section class="hero-wrap hero-wrap-2" style="background-image: url('resources/images/bg_2.jpg');"
		data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row no-gutters slider-text align-items-end">
				<div class="col-md-9 ftco-animate pb-5">
					<h1 class="mb-0 bread">커뮤니티</h1>
				</div>
			</div>
		</div>
	</section>
	
	<section class="ftco-section bg-light">
		<div class="container">
			<c:if test="${not empty loginMember}">
				<div class="col-md-12" style="width:1090px; text-align:right; margin-bottom:15px;">
					<button type="submit" class="btn btn-primary" style="width:100px; font-size:1em;"
				 		onclick="location.href='${cpath}/commu_write.do'">글쓰기</button> 
				</div>
			</c:if>
		
			<div class="container table-fixed">
                  <table class="table table-hover">
                     <thead class="thead-light">
							<tr>
								<th scope="col" style="width: 12%; text-align: center;">게시글번호</th>
	                            <th scope="col" style="width: 20%; text-align: center;">카테고리</th>
	                            <th scope="col" style="width: 26%; text-align: center;">제목</th>
	                            <th scope="col" style="width: 22%; text-align: center;">날짜 /시간</th>
	                            <th scope="col" style="width: 10%; text-align: center;">회원 아이디</th>
	                            <th scope="col" style="width: 10%; text-align: center;"></th>
	                        </tr>
						</thead>
						<tbody>
						<% int i=1;%>
						<c:forEach items="${post}" var="vo" varStatus="status">
				    		<tr>
								<th scope="row" style="text-align: center;"><%=i %></th>
								<td style="text-align: center;">${vo.post_cate_code}</td>
								<td style="text-align: center;"><a href="${cpath}/commu_info.do?post_num=${vo.post_num}" >${vo.post_title}</a></td>
								<td style="text-align: center;">${vo.post_datetime}</td>
								<td style="text-align: center;">${memid[status.index].mem_id}</td>
								<%i++; %>
								
								<td>
	                              <c:if test="${vo.post_mem_num == loginMember.mem_num}">
	                              	<form action="${cpath}/post_delete.do" method="post">
	                              		<input type="hidden" name="post_num" value="${vo.post_num}">
										<input type="submit" value="삭제" class="btn btn-secondary" style="width:65px; height:32px; font-size:12px;">
									</form>
	                              </c:if>
	                            </td>
	                             
							</tr>
			    		</c:forEach>
						</tbody>
					</table>
				</div>
		
			
			<div class="row mt-5">
				<div class="col text-center">
					<div class="block-27">
						<ul>
							<li><a href="#">&lt;</a></li>
							<li class="active"><span>1</span></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">&gt;</a></li>
						</ul>
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
	<script rc="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="resources/js/google-map.js"></script>
	<script src="resources/js/main.js"></script>

</body>

</html>