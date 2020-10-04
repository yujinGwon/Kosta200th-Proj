<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

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
<link href="/tp_hotel_booking/css/animate.css" rel="stylesheet"
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
<link rel="stylesheet" href="/tp_hotel_booking/assets/css/wizard.css">
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
							<span><i class="pe-7s-call"></i> +82 10 2780 0336</span> <span><i
								class="pe-7s-mail"></i>yung21@naver.com</span>
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
				<a class="navbar-brand" href="../uc/index.do"><img src="" alt="">로고이미지</a>
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
					<h1 class="page-title">문의게시판 글 삭제</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->
	
		<div class="content-area submit-property"
		style="background-color: #FCFCFC;">
		&nbsp;
		<div class="container">
			<div class="clearfix">
				<div class="wizard-container">

					<div class="wizard-card ct-wizard-orange" id="wizardProperty">
						
							<div class="wizard-header">
								<h3>
									<b>문의 게시판</b> 입니다. <br> <small>
									호텔 및 방에 대한 문의나 예약 관련 문의를 남겨주세요.
									</small>
								</h3>
							</div>
	
	
<!-- 게시판 삭제 -->

<script type="text/javascript" src="dashboard.js"></script>	
<div class="container">
    <form action="./delete.do" method="post" name="frm">
    <input type="hidden" name="num" value="${vo.d_no1 }">
      <div class="col-sm-10">
        <label for="subject">이름</label>
        <input type="text" value="${vo.d_u_name }" class="form-control" id="name" name="d_u_name" readonly="readonly">
      </div>
      <div class="col-sm-10">
        <label for="writer">비밀번호</label>
        <input type="password" class="form-control" id="pass" name="d_pass" placeholder="변경 비밀번호를 입력하세요." >
      </div>
       <div class="col-sm-10">
        <label for="writer">제목</label>
        <input type="text" value="${vo.d_title}" class="form-control" id="title" name="d_title" readonly="readonly">
      </div>
      <div class="col-sm-10">
        <label for="content">내용</label>
        <textarea class="form-control" id="content" name="d_content" rows="3" readonly="readonly">${vo.d_content}</textarea>
      </div>
      <br><br><br><br><br><br><br><br><br><br><br><br><br>
      <div align="center">
      <button type="submit" class="btn btn-primary" onclick="return dashboardCheck()">삭제</button>
      <button type="button" class="btn btn-primary" onclick="location.href='javascript:history.go(-1)' ">뒤로</button>
      <button type="button" class="btn btn-primary" onclick="location.href='./list.do' ">목록</button>
      </div>
    </form>
</div>
<!-- 게시판 삭제 -->

<!-- Footer area-->

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

	<script src="/tp_hotel_booking/assets/js/vendor/modernizr-2.6.2.min.js"></script>
	<script src="/tp_hotel_booking/assets/js//jquery-1.10.2.min.js"></script>
	<script src="/tp_hotel_booking/bootstrap/js/bootstrap.min.js"></script>
	<script src="/tp_hotel_booking/assets/js/bootstrap-select.min.js"></script>
	<script src="/tp_hotel_booking/assets/js/bootstrap-hover-dropdown.js"></script>
	<script src="/tp_hotel_booking/assets/js/easypiechart.min.js"></script>
	<script src="/tp_hotel_booking/assets/js/jquery.easypiechart.min.js"></script>
	<script src="/tp_hotel_booking/assets/js/owl.carousel.min.js"></script>
	<script src="/tp_hotel_booking/assets/js/wow.js"></script>
	<script src="/tp_hotel_booking/assets/js/icheck.min.js"></script>

	<script src="/tp_hotel_booking/assets/js/price-range.js"></script>
	<script src="/tp_hotel_booking/assets/js/jquery.bootstrap.wizard.js"
		type="text/javascript"></script>
	<script src="/tp_hotel_booking/assets/js/jquery.validate.min.js"></script>
	<script src="/tp_hotel_booking/assets/js/wizard.js"></script>

	<script src="/tp_hotel_booking/assets/js/main.js"></script>

	<!-- Page level plugins -->
	<script
		src="/tp_hotel_booking/assets/js/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/tp_hotel_booking/assets/js/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="/tp_hotel_booking/assets/js/datatables2.js"></script>


</body>

</html>