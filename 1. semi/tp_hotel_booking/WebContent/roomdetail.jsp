<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>HOTEL RESERVATION | Home page</title>
<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword"
	content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

<link rel="stylesheet" href="/tp_hotel_booking/assets/css/normalize.css">
<link rel="stylesheet"
	href="/tp_hotel_booking/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="/tp_hotel_booking/assets/css/fontello.css">
<link
	href="/tp_hotel_booking/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link href="/tp_hotel_booking/assets/fonts/icon-7-stroke/css/helper.css"
	rel="stylesheet">
<link href="/tp_hotel_booking/assets/css/animate.css" rel="stylesheet"
	media="screen">
<link rel="stylesheet"
	href="/tp_hotel_booking/assets/css/bootstrap-select.min.css">
<link rel="stylesheet"
	href="/tp_hotel_booking/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="/tp_hotel_booking/assets/css/icheck.min_all.css">
<link rel="stylesheet"
	href="/tp_hotel_booking/assets/css/price-range.css">
<link rel="stylesheet"
	href="/tp_hotel_booking/assets/css/owl.carousel.css">
<link rel="stylesheet" href="/tp_hotel_booking/assets/css/owl.theme.css">
<link rel="stylesheet"
	href="/tp_hotel_booking/assets/css/owl.transitions.css">
<link rel="stylesheet"
	href="/tp_hotel_booking/assets/css/lightslider.min.css">
<link rel="stylesheet" href="/tp_hotel_booking/assets/css/style.css">
<link rel="stylesheet"
	href="/tp_hotel_booking/assets/css/responsive.css">
</head>
<body>
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!-- Body content -->

	<div class="header-connect">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-sm-8  col-xs-12">
					<div class="header-half header-call">
						<p>
							<span><i class="pe-7s-call"></i> +82 10-2780-0336</span> <span><i
								class="pe-7s-mail"></i> yung21@naver.com</span>
						</p>
					</div>
				</div>				
			</div>
		</div>
	</div>
	<!--End top header -->

	<nav class="navbar navbar-default ">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navigation">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="../uc/index.do"><img src="" alt="">로고
					이미지</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse yamm" id="navigation">
				<c:choose>
					<c:when test="${sessionScope.email == null }">
						<div class="button navbar-right">
							<button class="navbar-btn nav-button wow bounceInRight login"
								onclick=" location.href='/tp_hotel_booking/uc/login.do'"
								data-wow-delay="0.4s">로그인</button>
							<button class="navbar-btn nav-button wow fadeInRight"
								onclick=" location.href='/tp_hotel_booking/uc/register.do'"
								data-wow-delay="0.5s">회원가입</button>
						</div>
					</c:when>
					<c:when test="${sessionScope.email != null }">
						<div class="button navbar-right">
							<button class="navbar-btn nav-button wow bounceInRight login"
								onclick=" location.href='/tp_hotel_booking/uc/mypage.do'"
								data-wow-delay="0.4s">마이페이지</button>
							<button class="navbar-btn nav-button wow fadeInRight"
								onclick=" location.href='/tp_hotel_booking/uc/LogoutAction.do'"
								data-wow-delay="0.5s">로그아웃</button>
						</div>
					</c:when>
				</c:choose>

				<ul class="main-nav nav navbar-nav navbar-right">
					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="/tp_hotel_booking/uc/index.do">Home</a></li>
					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="/tp_hotel_booking/uc/aboutus.do">About Us</a></li>
					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="/tp_hotel_booking/hc/hotel.do">Reservation</a></li>
					<li class="wow fadeInDown" data-wow-delay="0.1s"><a class=""
						href="/tp_hotel_booking/dc/list.do">Board</a></li>
					<li class="wow fadeInDown" data-wow-delay="0.4s"><a
						href="/tp_hotel_booking/uc/contact.do">Contact</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<!-- End of nav bar -->

	<div class="page-head">
		<div class="container">
			<div class="row">
				<div class="page-head-content">
					<h1 class="page-title">방 상세보기 및 예약확정</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<!-- 여기서부터가 방 상세정보 나오는 곳인데... 여긴 반복할 필요는 없고, 전 페이지에서 r_id 가져와서 그에대한 정보를 뿌린다. -->
	<!-- 일단 방리스트 뿌리는 거부터 해결되면... 여기 작업 -->

	<!-- property area -->
	<div class="content-area single-property"
		style="background-color: #FCFCFC;">
		&nbsp;
		<div class="container">
			<div class="clearfix padding-top-40">
				<div class="col-md-8 single-property-content prp-style-2">
					<div class="">
						<div class="row">
							<div class="light-slide-item">
								<div class="clearfix">
									<div class="favorite-and-print">
										<a class="add-to-fav" href="#login-modal" data-toggle="modal">
											<i class="fa fa-star-o"></i>
										</a> <a class="printer-icon " href="javascript:window.print()">
											<i class="fa fa-print"></i>
										</a>
									</div>

									<c:forEach var="vo" items="${ list }">
										<ul id="image-gallery" class="gallery list-unstyled cS-hidden">
											<li
												data-thumb="/tp_hotel_booking/assets/img/room-detail/${vo.r_img2}">
												<img
												src="/tp_hotel_booking/assets/img/room-detail/${vo.r_img2}" />
											</li>
											<li
												data-thumb="/tp_hotel_booking/assets/img/room-detail/${vo.r_img3}">
												<img
												src="/tp_hotel_booking/assets/img/room-detail/${vo.r_img3}" />
											</li>
										</ul>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-md-4 p0">
					<c:forEach var="vo" items="${ list }">
						<aside
							class="sidebar sidebar-property blog-asside-right property-style2">
							<div class="dealer-widget">
								<div class="dealer-content">
									<div class="inner-wrapper">

										<div class="single-property-header">
											<h1 class="property-title">${vo.r_no}호실&nbsp;&nbsp;
												${vo.r_name}</h1>
											<span class="property-price">${vo.r_cost} 원</span>
										</div>

										<div class="property-meta entry-meta clearfix ">



											<div class="col-xs-4 col-sm-4 col-md-4 p-b-15">
												<span class="property-info icon-area"> <img
													src="/tp_hotel_booking/assets/img/icon/room-orange.png">
												</span> <span class="property-info-entry"> <span
													class="property-info-label">숙박인원</span> <span
													class="property-info-value">${vo.r_people} 명<b
														class="property-info-unit"></b></span>
												</span>
											</div>

											<div class="col-xs-4 col-sm-4 col-md-4 p-b-15">
												<span class="property-info-icon icon-bed"> <img
													src="/tp_hotel_booking/assets/img/icon/bed-orange.png">
												</span> <span class="property-info-entry"> <span
													class="property-info-label">침대 유형</span> <span
													class="property-info-value">${vo.r_type} 타입</span>
												</span>																			
											</div>
												<c:choose>
												<c:when test="${vo.r_able == 0}"><a href=""><font color="red">예약중</font></a></c:when>
	                             				<c:when test="${vo.r_able == 1}"><a href=""><font color="blue">예약가능</font></a></c:when>
	                             				</c:choose>	  
										</div>											  
									</div>									 
								</div>								  
							</div>						
							
							<!-- 로그인이 안되어있으면 로그인하기가 잇어야 하고,,
							로그인이 되어있고, r_able 이 0이면 뒤로가기가 있어야 되고...
							로그인이 되어있고, r_able 이 1이면 예약하기가 방 예약하기가 있어야 되고...  -->
							
 						<c:choose>
							 	<c:when test="${sessionScope.email == null }">
							 		<button class="navbar-btn nav-button wow bounceInRight login"
									onclick=" location.href='/tp_hotel_booking/uc/login.do'"
									data-wow-delay="0.4s">로그인</button>
							 	</c:when>
							 	
							 	<c:when test="${vo.r_able == 0}">
							 		<p class="read-more">
									<a href="javascript:history.back();"
										class="btn btn-default btn-border">뒤로가기</a>
									</p>
							 	</c:when>			
							 				 	
							 	<c:when test="${vo.r_able == 1}">
							 		<p class="read-more">
									<a href="/tp_hotel_booking/bc/BookingInsertAction.do?h_id=${param.h_id }&r_id=${param.r_id}"
										class="btn btn-default btn-border">방 예약하기</a>
									</p>
							 	</c:when>
	                    	</c:choose> 
	                    	
						</aside>
					</c:forEach>					
				</div>
			</div>
		</div>
	</div>


	<!-- Footer area-->
	<div class="footer-copy text-center">
		<div class="container">
			<div class="row">
				<div class="pull-left">
					<span> (C) <a href="http://www.KimaroTec.com">KimaroTheme</a>
						, All rights reserved 2016
					</span>
				</div>
				<div class="bottom-menu pull-right">
					<ul>
						<li><a class="wow fadeInUp animated" href="../uc/index.do"
							data-wow-delay="0.2s">Home</a></li>
						<li><a class="wow fadeInUp animated" href="../uc/aboutus.do"
							data-wow-delay="0.3s">About Us</a></li>
						<li><a class="wow fadeInUp animated" href="../hc/hotel.do"
							data-wow-delay="0.4s">Reservation</a></li>
						<li><a class="wow fadeInUp animated" href="../dc/list.do"
							data-wow-delay="0.6s">Board</a></li>
						<li><a class="wow fadeInUp animated" href="../uc/contact.do"
							data-wow-delay="0.6s">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<script src="/tp_hotel_booking/assets/js/vendor/modernizr-2.6.2.min.js"></script>
	<script src="/tp_hotel_booking/assets/js/jquery-1.10.2.min.js"></script>
	<script src="/tp_hotel_booking/bootstrap/js/bootstrap.min.js"></script>
	<script src="/tp_hotel_booking/assets/js/bootstrap-select.min.js"></script>
	<script src="/tp_hotel_booking/assets/js/bootstrap-hover-dropdown.js"></script>
	<script src="/tp_hotel_booking/assets/js/easypiechart.min.js"></script>
	<script src="/tp_hotel_booking/assets/js/jquery.easypiechart.min.js"></script>
	<script src="/tp_hotel_booking/assets/js/owl.carousel.min.js"></script>
	<script src="/tp_hotel_booking/assets/js/wow.js"></script>
	<script src="/tp_hotel_booking/assets/js/icheck.min.js"></script>
	<script src="/tp_hotel_booking/assets/js/price-range.js"></script>
	<script type="text/javascript"
		src="/tp_hotel_booking/assets/js/lightslider.min.js"></script>
	<script src="/tp_hotel_booking/assets/js/main.js"></script>

	<script>
                            $(document).ready(function () {

                                $('#image-gallery').lightSlider({
                                    gallery: true,
                                    item: 1,
                                    thumbItem: 9,
                                    slideMargin: 0,
                                    speed: 500,
                                    auto: true,
                                    loop: true,
                                    onSliderLoad: function () {
                                        $('#image-gallery').removeClass('cS-hidden');
                                    }
                                });
                            });
        </script>
</body>
</html>