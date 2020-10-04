<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOTEL RESERVATION | Home page</title>
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

<link rel="stylesheet" href="/tp_hotel_booking\assets\css\normalize.css">
<link rel="stylesheet"
	href="/tp_hotel_booking\assets\css\font-awesome.min.css">
<link rel="stylesheet" href="/tp_hotel_booking\assets\css\fontello.css">
<link
	href="/tp_hotel_booking\assets\fonts\icon-7-stroke\css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link href="/tp_hotel_booking\assets\fonts\icon-7-stroke\css\helper.css"
	rel="stylesheet">
<link href="/tp_hotel_booking\assets\css\animate.css" rel="stylesheet"
	media="screen">
<link rel="stylesheet"
	href="/tp_hotel_booking\assets\css\bootstrap-select.min.css">
<link rel="stylesheet"
	href="/tp_hotel_booking\bootstrap\css\bootstrap.min.css">
<link rel="stylesheet"
	href="/tp_hotel_booking\assets\css\icheck.min_all.css">
<link rel="stylesheet"
	href="/tp_hotel_booking\assets\css\price-range.css">
<link rel="stylesheet"
	href="/tp_hotel_booking\assets\css\owl.carousel.css">
<link rel="stylesheet" href="/tp_hotel_booking\assets\css\owl.theme.css">
<link rel="stylesheet"
	href="/tp_hotel_booking\assets\css\owl.transitions.css">
<link rel="stylesheet" href="/tp_hotel_booking\assets\css\style.css">
<link rel="stylesheet"
	href="/tp_hotel_booking\assets\css\responsive.css">
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
				<a class="navbar-brand" href="./index.do"><img src="" alt="">로고이미지</a>
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
					<h1 class="page-title">회사 문의</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<!-- property area -->
	<div class="content-area recent-property padding-top-40"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2944.4208187660543!2d126.87867068624382!3d37.47845018111327!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357b61e3a9ebfbc9%3A0xe91dfb691d40350f!2z7Iug7ZWc7J2064W47ZSM66CJ7Iqk!5e0!3m2!1sko!2skr!4v1591150793628!5m2!1sko!2skr"
						width="750" height="250" frameborder="0" style="border: 0;"
						allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
					<hr>
					<div class="" id="contact1">
						<div class="row">
							<div class="col-sm-4">
								<h3>
									<i class="fa fa-map-marker"></i> 회사 주소
								</h3>
								<p>
									서울특별시 <br>금천구, <br>가산디지털단지, <br> <strong>Korea</strong>
								</p>
							</div>
							<!-- /.col-sm-4 -->
							<div class="col-sm-4">
								<h3>
									<i class="fa fa-phone"></i> 회사 전화
								</h3>
								<p class="text-muted">대충 전화 하라는 내용</p>
								<p>
									<strong>+33 555 444 333</strong>
								</p>
							</div>
							<!-- /.col-sm-4 -->
							<div class="col-sm-4">
								<h3>
									<i class="fa fa-envelope"></i> 전자 메일
								</h3>
								<p class="text-muted">사이트 문의 메일</p>
								<ul>
									<li><strong><a href="mailto:">hotel@delruna.com</a></strong>
									</li>
								</ul>
							</div>
							<!-- /.col-sm-4 -->
						</div>
						<hr>
						<!-- /.row -->
					</div>
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
						<li><a class="wow fadeInUp animated" href="./list.do"
							data-wow-delay="0.6s">Board</a></li>
						<li><a class="wow fadeInUp animated" href="../uc/contact.do"
							data-wow-delay="0.6s">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<script src="/tp_hotel_booking/assets/js/modernizr-2.6.2.min.js"></script>

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

	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
	<script src="/tp_hotel_booking/assets/js/gmaps.js"></script>
	<script src="/tp_hotel_booking/assets/js/gmaps.init.js"></script>
	<script src="/tp_hotel_booking/assets/js/main.js"></script>
</body>
</html>