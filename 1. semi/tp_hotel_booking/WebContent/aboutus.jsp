<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>HOTEL RESERVATION | Home page</title>
<meta name="description" content="GARO is a real-estate template" />
<meta name="author" content="Kimarotec" />
<meta name="keyword"
	content="html5, css, bootstrap, property, real-estate theme , bootstrap template" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800"
	rel="stylesheet" type="text/css" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<link rel="icon" href="favicon.ico" type="image/x-icon" />

<link rel="stylesheet" href="/tp_hotel_booking/assets/css/normalize.css" />
<link rel="stylesheet"
	href="/tp_hotel_booking/assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="/tp_hotel_booking/assets/css/fontello.css" />
<link
	href="/tp_hotel_booking/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet" />
<link href="/tp_hotel_booking/assets/fonts/icon-7-stroke/css/helper.css"
	rel="stylesheet" />
<link href="/tp_hotel_booking/assets/css/animate.css" rel="stylesheet"
	media="screen" />
<link rel="stylesheet"
	href="/tp_hotel_booking/assets/css/bootstrap-select.min.css" />
<link rel="stylesheet"
	href="/tp_hotel_booking/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="/tp_hotel_booking/assets/css/icheck.min_all.css" />
<link rel="stylesheet"
	href="/tp_hotel_booking/assets/css/price-range.css" />
<link rel="stylesheet"
	href="/tp_hotel_booking/assets/css/owl.carousel.css" />
<link rel="stylesheet" href="/tp_hotel_booking/assets/css/owl.theme.css" />
<link rel="stylesheet"
	href="/tp_hotel_booking/assets/css/owl.transitions.css" />
<link rel="stylesheet" href="/tp_hotel_booking/assets/css/style.css" />
<link rel="stylesheet"
	href="/tp_hotel_booking/assets/css/responsive.css" />
</head>
<body>

	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!-- Body content -->

	<div class="header-connect">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-sm-8 col-xs-12">
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

	<nav class="navbar navbar-default">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navigation">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="./index.do"><img
					src="" alt="" />로고 이미지</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse yamm" id="navigation">
				<c:choose>
					<c:when test="${sessionScope.email == null }">
						<div class="button navbar-right">
							<button class="navbar-btn nav-button wow bounceInRight login"
								onclick=" location.href='/tp_hotel_booking/uc/login.do'" data-wow-delay="0.4s">로그인</button>
							<button class="navbar-btn nav-button wow fadeInRight"
								onclick=" location.href='/tp_hotel_booking/uc/register.do'" data-wow-delay="0.5s">회원가입</button>
						</div>
					</c:when>
					<c:when test="${sessionScope.email != null }">
						<div class="button navbar-right">
							<button class="navbar-btn nav-button wow bounceInRight login"
								onclick=" location.href='/tp_hotel_booking/uc/mypage.do'" data-wow-delay="0.4s">마이페이지</button>
							<button class="navbar-btn nav-button wow fadeInRight"
								onclick=" location.href='/tp_hotel_booking/uc/LogoutAction.do'" data-wow-delay="0.5s">로그아웃</button>
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
					<h1 class="page-title">About us</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<div class="content-area blog-page padding-top-40"
		style="background-color: #fcfcfc; padding-bottom: 0px;">
		<div class="container">
			<div class="row">
				<div class="blog-lst col-md-12 pl0">
					<section id="id-100" class="post single">
						<div class="post-header single">
							<div class="">
								<h2 class="wow fadeInLeft animated">고객과 함께 걸어가는 회사</h2>
								<div class="title-line wow fadeInRight animated"></div>
							</div>

							<div class="image wow fadeInRight animated">
								<img src="/tp_hotel_booking/assets/img/blog2.jpg"
									class="img-responsive" alt="Example blog post alt" />
							</div>
						</div>

						<div id="post-content"
							class="post-body single wow fadeInLeft animated">
							<p>
							<h2>감사의 말 전하며</h2>
							</p>
							<p>
								<strong>우리 3팀은</strong> 이번 프로젝트에 많은 시간을 쏟아부었습니다. 이번 과업을 달성하기 위해
								우리는 최상의 목표를 설정하고, 목표달성을 위해 한길만 바라보고 프로젝트에 매진하였습니다. 
								그 기간동안 많은 어려움이 있었지만 우리는 오로지 고객만족을 위하고 국가발전에 이바지한다는 마음가짐으로 역사에 유례를 찾아볼 수 없는
								놀라운 성과를 달성할 수 있었습니다.								
							</p>
							<p>
								이번 프로젝트를 함께 해준 현탁, 정모, 선미씨에게 감사의 마음을 전합니다. 이번 프로젝트를 통해서 많은 발전을 이루었기를 진심으로 기원합니다.
								그리고 각자의 길에서 원하는 바를 꼭 이루기를 진심으로 바랍니다. 또한 이 홈페이지를 찾아주신 고객분들에게 다시한번 머리숙여 감사의 말씀 전합니다. 
								우리 사이트의 호텔 예약 기능을 즐겁게 즐겨주시길 바랍니다. 호텔예약을 하시고 싶으시다면 <a href="../hc/hotel.do">호텔 보러가기</a> 로 
								이동해주시면 됩니다.
							</p>
							<p></p>
							<p></p>
							<h2>우리 서비스의 특장점</h2>
							<ol>
								<li>최상급 호텔의 방을 쉽고 간단하게 한번에 예약할 수 있습니다.</li>
								<blockquote>
								<p>우리 서비에서는 국내외 다양한 호텔의 예약서비스를 제공하고 있습니다. 
								원하는 조건으로 검색만 하시면 쉽게 해당 호텔에 대한 정보를 찾으실 수 있습니다.
								원하는 호텔의 방을 찾으셨다면 손쉽게 예약하기 버튼 클릭만으로 해당 방을 예약하실 수 있습니다.
								편안하고 즐거운 여러분의 호캉스가 될 수 있도록 저희가 함께하겠습니다.
								</p>
								</blockquote>
								<li>다양한 할인 혜택을 제공할 예정입니다.(추후 서비스 제공 예정)</li>
								<blockquote>
								<p>추후 다양한 호텔과의 제휴협력을 통하여 고객맞춤 할인 서비스를 제공할 예정입니다. 우리는 이를 위하여 현재
								국내외 다양한 호텔과 협업 방안에 대한 논의를 계속하고 있습니다. 언제든 고객이 원하실때 떠나실 수 있도록 실속있는 
								호텔 예약서비스를 제공할 수 있도록 최선을 다할 것 입니다.</p>
								</blockquote>
								<li>문의 게시판을 통해 신속한 답변을 받아보실 수 있습니다.(관리자 상시대기 예정)</li>	
								<blockquote>
								<p>호텔 및 저희 서비스에 궁금한점이 있으시다면 언제든 <a href="../dc/list.do">문의 게시판</a>에 문의 남겨주세요.
								신속하게 관리자가 확인 후에 답변 드리도록 하겠습니다. 
								</p>
								</blockquote>													
							</ol>														
						</div>
					</section>
				</div>
			</div>
		</div>
	</div>

	<!--TESTIMONIALS -->
	<div class="testimonial-area recent-property"
		style="background-color: #fcfcfc; padding-bottom: 0px;">
		<div class="container">
			<div class="row">
				<div
					class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
					<!-- /.feature title -->
					<h2>전하는 말</h2>
				</div>
			</div>

			<div class="row">
				<div class="row testimonial">
					<div class="col-md-12">
						<div id="testimonial-slider">
							<div class="item">
								<div class="client-text">
									<p>어서오세요. 우리 홈페이지를 방문해주셔서 감사합니다.</p>
									<h4>
										<strong>Mr.tak</strong><i>상무이사</i>
									</h4>
								</div>
								<div class="client-face wow fadeInRight" data-wow-delay=".9s">
									<img src="/tp_hotel_booking/assets/img/client-face1.png" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="client-text">
									<p>우리의 호텔예약서비스를 이용해주셔서 감사합니다.</p>
									<h4>
										<strong>Mr.jin </strong><i>회장</i>
									</h4>
								</div>
								<div class="client-face wow fadeInRight" data-wow-delay=".9s">
									<img src="/tp_hotel_booking/assets/img/client-face1.png" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="client-text">
									<p>열심히 만들었습니다.</p>
									<h4>
										<strong>Ohidul Islam, </strong><i>개발자</i>
									</h4>
								</div>
								<div class="client-face wow fadeInRight" data-wow-delay=".9s">
									<img src="/tp_hotel_booking/assets/img/client-face1.png" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="client-text">
									<p>입이 근질근질 합니다.</p>
									<h4>
										<strong>Mr.mo</strong><i>개발자</i>
									</h4>
								</div>
								<div class="client-face wow fadeInRight" data-wow-delay=".9s">
									<img src="/tp_hotel_booking/assets/img/client-face1.png" alt="" />
								</div>
							</div>
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

		<!-- Footer area-->



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

		<script src="/tp_hotel_booking/assets/js/main.js"></script>
</body>
</html>