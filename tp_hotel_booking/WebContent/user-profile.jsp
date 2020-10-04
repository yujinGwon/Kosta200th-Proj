<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="net.hotelbooking.vo.UserListVO"%>

<%
	UserListVO user = (UserListVO) request.getAttribute("vo");
%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>GARO ESTATE | property User profile Page</title>
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
<link href="css/animate.css" rel="stylesheet" media="screen" />
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
<link rel="stylesheet" href="/tp_hotel_booking/assets/css/wizard.css" />
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
							<span><i class="pe-7s-call"></i>+82 10-2780-0336</span> <span><i
								class="pe-7s-mail"></i>yung21@naver.com</span>
						</p>
					</div>
				</div>
				<div
					class="col-md-2 col-md-offset-5 col-sm-3 col-sm-offset-1 col-xs-12">
					<div class="header-half header-social">
						<ul class="list-inline">
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-vine"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram"></i></a></li>
						</ul>
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
				<a class="navbar-brand" href="./index.do"><img src="" alt="">로고이미지</a>
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
					<h1 class="page-title">
						Hello : <span class="orange strong">Kimaro kyoto</span>
					</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<!-- property area -->
	<div class="content-area user-profiel"
		style="background-color: #fcfcfc;">
		&nbsp;
		<div class="container">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1 profiel-container">
					<form action="UserModifyAction.do" method="post">
						<div class="profiel-header">
							<h3>
								<b>BUILD</b> YOUR PROFILE <br /> <small>This
									information will let us know more about you.</small>
							</h3>
							<hr />
						</div>

						<div class="clear">
							<div class="col-sm-2 col-sm-offset-1">
								<!-- 
                      ìë°í ì¬ì§ì´ ë¤ì´ ê° ê³³ì¸ë° ìë°í ì¬ì§ ë£ì ë íìí ê²½ë¡ ë°ì´í° columnì´ ìê¸° ëë¬¸ì ì£¼ìì²ë¦¬í¨ - 0604 07:12
                      <div class="picture-container">
                    <div class="picture">
                      <img
                        src="/tp_hotel_booking/assets/img/avatar.png"
                        class="picture-src"
                        id="wizardPicturePreview"
                        title=""
                      />
                      <input type="file" id="wizard-picture" />
                    </div>
                    <h6>Choose Picture</h6>
                  </div> -->
							</div>

							<div class="col-sm-3 padding-top-25">
								<div class="form-group">
									<label>Name <small>(required)</small></label> <input
										name="u_name" type="text" class="form-control"
										value=<%=user.getU_name()%> />
								</div>
								<div class="form-group">
									<label>Email <small>(required)</small></label> <input
										name="u_email" type="email" class="form-control"
										value=<%=user.getU_email()%> />
								</div>
							</div>
							<div class="col-sm-3 padding-top-25">
								<div class="form-group">
									<label>Password <small>(required)</small></label> <input
										name="u_pwd" type="password" class="form-control" />
								</div>
								<div class="form-group">
									<label>Confirm password : <small>(required)</small></label> <input
										name="u_pwdre" type="password" class="form-control" />
								</div>
							</div>
						</div>

						<div class="clear">
							<br />
							<hr />
							<br />
							<!-- 
                <div class="col-sm-5 col-sm-offset-1">
                  
                      íì´ì¤ë¶, í¸ìí°, ì¹ì¬ì´í¸ ì£¼ì ë¤ì´ ê°ë ê³³ ê·¸ë¬ë íì¬ íììë ê¸°ë¥ ì´ê¸° ëë¬¸ì ì£¼ìì²ë¦¬í¨.  - 0604 07:12
                       <div class="form-group">
                    <label>Facebook :</label>
                    <input
                      name="Facebook"
                      type="text"
                      class="form-control"
                      placeholder="https://facebook.com/user"
                    />
                  </div>
                  <div class="form-group">
                    <label>Twitter :</label>
                    <input
                      name="Twitter"
                      type="text"
                      class="form-control"
                      placeholder="https://Twitter.com/@user"
                    />
                  </div>
                  <div class="form-group">
                    <label>Website :</label>
                    <input
                      name="website"
                      type="text"
                      class="form-control"
                      placeholder="https://yoursite.com/"
                    />
                  </div>
                </div>
                 -->
							<div class="col-sm-3"></div>
							<div class="col-sm-6">
								<div class="form-group">
									<label>address :</label> <input name="u_address" type="text"
										class="form-control" value=<%=user.getU_address()%> />
								</div>
								<div class="form-group">
									<label>Phone :</label> <input name="u_phone" type="text"
										class="form-control" value=<%=user.getU_phone()%> />
								</div>
							</div>
						</div>

						<div class="col-sm-5 col-sm-offset-1">
							<br /> <input type="submit" class="btn btn-finish btn-primary"
								name="finish" value="Finish" />
						</div>

						<br />
					</form>



				</div>

			</div>
			<!-- end row -->

			<!-- DataTales Example -->
			
			
				<h3>
								<b>예약</b> 현황 <br /> <small>
									</small>
							</h3>
			<div class="card shadow mb-4">
				<!-- <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
                                </div> -->
				<div class="card-body">
					<div class="table-responsive">
						<table class="table" id="dataTable" width="100%" cellspacing="0">
							<thead>
								<tr>
									<th>num</th>
									<th>hotel</th>
									<th>room</th>
									<th>check in</th>
									<th>check out</th>
									<th>people</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="list" items="${list }">
									<tr>
										<td>${list.getB_no()}</td>
										<td>${list.getH_name()}</td>
										<td>${list.getR_name()}</td>
										<td>${list.getB_checkin()}</td>
										<td>${list.getB_checkin()}</td>
										<td>${list.getB_people()}</td>
									</tr>
									
								</c:forEach>

							</tbody>
						</table>
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
                        <span> (C) <a href="http://www.KimaroTec.com">KimaroTheme</a> , All rights reserved 2016
                        </span>
                    </div>
                    <div class="bottom-menu pull-right">
                        <ul>
                            <li><a class="wow fadeInUp animated" href="../uc/index.do" data-wow-delay="0.2s">Home</a></li>
                            <li><a class="wow fadeInUp animated" href="../uc/aboutus.do" data-wow-delay="0.3s">About Us</a></li>
                            <li><a class="wow fadeInUp animated" href="../hc/hotel.do" data-wow-delay="0.4s">Reservation</a></li>
                            <li><a class="wow fadeInUp animated" href="../dc/list.do" data-wow-delay="0.6s">Board</a></li>
                            <li><a class="wow fadeInUp animated" href="../uc/contact.do" data-wow-delay="0.6s">Contact</a></li>
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
	<script src="/tp_hotel_booking/assets/js/datatables.js"></script>


</body>
</html>
