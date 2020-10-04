<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<% request.setCharacterEncoding("utf-8"); %>

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
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="../uc/index.do"><img src="" alt="">로고 이미지</a>
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
            </div><!-- /.container-fluid -->
        </nav>
        <!-- End of nav bar -->

        <div class="page-head"> 
            <div class="container">
                <div class="row">
                    <div class="page-head-content">
                        <h1 class="page-title">방을 골라서 예약해주세요.</h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->

        <!-- property area -->
        <div class="properties-area recent-property" style="background-color: #FFF;">
            <div class="container">  
                <div class="row">
                     
                <div class="col-md-3 p0 padding-top-40">
                    <div class="blog-asside-right pr0">
                        <div class="panel panel-default sidebar-menu wow fadeInRight animated" >
                            <div class="panel-heading">
                                <h3 class="panel-title">Smart search</h3>
                            </div>
                            <div class="panel-body search-widget">
                            
                                <form action="./smart-roomlist.do" class=" form-inline">                             
                                   <fieldset>
										<div class="row">
											<div class="col-xs-6">
												<!-- selectpicker -->
												<select id="lunchBegins" class=""
													data-live-search-style="begins" title="인원 수" name="r_people">

													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
												</select>
											</div>
											<div class="col-xs-6">
												<!-- selectpicker show-tick form-control -->
												<select id="basic"
													class="" name="r_type">
													<option value="싱글">싱글</option>
													<option value="더블">더블</option>
													<option value="트윈">트윈</option>
												</select>
											</div>
										</div>
									</fieldset>

									<fieldset class="padding-5">
										<div class="row">
											<div class="col-xs-12">
												<label for="price-range">Price range (￦):</label> <input
													type="text" class="span2" value="" data-slider-min="0"
													data-slider-max="500000" data-slider-step="10000"
													data-slider-value="[0,0]" id="price-range" name="r_cost"><br />
												<b class="pull-left color">0</b> <b class="pull-right color">500,000</b>
											</div>
										</div>
									</fieldset>

									<fieldset class="padding-5">
										<div class="row">
											<div class="col-xs-6">
												<div class="checkbox">
													<label> <input type="checkbox" checked name="h_wifi" value="1">
														Free WiFi
													</label>
												</div>
											</div>

											<div class="col-xs-6">
												<div class="checkbox">
													<label> <input type="checkbox" name="h_parking" value="1"> Car-Parking
													</label>
												</div>
											</div>
										</div>
									</fieldset>

									<fieldset class="padding-5">
										<div class="row">
											<div class="col-xs-6">
												<div class="checkbox">
													<label> <input type="checkbox" name="h_swimming" value="1"> Swimming
														Pool
													</label>
												</div>
											</div>
											<div class="col-xs-6">
												<div class="checkbox">
													<label> <input type="checkbox" name="h_roomservice" value="1">
														Room-service
													</label>
												</div>
											</div>
										</div>
									</fieldset>

									<fieldset class="padding-5">
										<div class="row">
											<div class="col-xs-12">
												<div class="checkbox">
													<label> <input type="checkbox" name="h_bus" value="1"> Limousine
													</label>
												</div>
											</div>
										</div>
									</fieldset>

									<fieldset>
										<div class="row">
											<div class="col-xs-12">
												<input class="button btn largesearch-btn" value="Search"
													type="submit">
											</div>
										</div>
									</fieldset>
								</form>
							</div>
						</div>

                        <div class="panel panel-default sidebar-menu wow fadeInRight animated">
                            <div class="panel-heading">
                                <h3 class="panel-title"></h3>
                            </div>
                            <div class="panel-body recent-property-widget">
                                        <ul>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                               
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col-md-3 col-sm-3  col-xs-3 blg-thumb p0">
                                               
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                                
                                            </div>
                                        </li>
                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                                
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                               
                                            </div>
                                        </li>

                                        <li>
                                            <div class="col-md-3 col-sm-3 col-xs-3 blg-thumb p0">
                                              
                                            </div>
                                            <div class="col-md-8 col-sm-8 col-xs-8 blg-entry">
                                               
                                            </div>
                                        </li>

                                    </ul>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-9  pr0 padding-top-40 properties-page">
                    <div class="col-md-12 clear"> 
                        <div class="col-xs-10 page-subheader sorting pl0">
                            <ul class="sort-by-list">
                                <li class="active">                                   
                                </li>
                                <li class="">                                    
                                </li>
                            </ul><!--/ .sort-by-list-->                       
                        </div>

                        <div class="col-xs-2 layout-switcher">
                            <a class="layout-list" href="javascript:void(0);"> <i class="fa fa-th-list"></i>  </a>
                            <a class="layout-grid active" href="javascript:void(0);"> <i class="fa fa-th"></i> </a>                          
                        </div><!--/ .layout-switcher-->
                    </div>
					
					
                    <div class="col-md-12 clear"> 
                        <div id="list-type" class="proerty-th">
                        
                        	<!-- ... 실질적으로 여기서부터 건드려줘야 할듯... -->
                        	 <c:forEach var="vo" items="${ list }">
                            <div class="col-sm-6 col-md-4 p0">
                                    <div class="box-two proerty-item">   
                                        <div class="item-thumb">                                        	
                                            <a href="./roomdetail.do?r_id=${vo.r_id}" ><img src="/tp_hotel_booking/assets/img/room/${vo.r_img1}"></a>
                                        </div>
                                        
                                        <div class="item-entry overflow">
                                            <h5><a href="./roomdetail.do?r_id=${vo.r_id}"> ${vo.r_name}</a></h5>
                                            <div class="dot-hr"></div>
                                            <span class="pull-left"><b> 객실 인원 :</b> ${vo.r_people} 명 </span>
                                            <span class="proerty-price pull-right"> ${vo.r_cost} 원</span>
                                            <p style="display: none;">${vo.r_name} &nbsp; ${vo.r_no} 호실은 객실인원 ${vo.r_people} 명이고, 숙박비는 1박기준 ${vo.r_cost} 입니다. 편히 쉬세요.</p>
                                            <div class="property-icon">
                                                <img src="/tp_hotel_booking/assets/img/icon/bed.png"> ${vo.r_type} &nbsp;&nbsp;
                                                <c:choose>
                                                <c:when test="${vo.r_able == 0}"><a href="./roomdetail.do?r_id=${vo.r_id}"><font color="red">예약중</font></a></c:when>
                                                <c:when test="${vo.r_able == 1}"><a href="./roomdetail.do?r_id=${vo.r_id}"><font color="blue">예약가능</font></a></c:when>
                                                </c:choose>                                       
                                            
                                                <!-- <img src="/tp_hotel_booking/assets/img/icon/shawer.png">(2)|
                                                <img src="/tp_hotel_booking/assets/img/icon/cars.png">(1)  --> 
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                </c:forEach>
                        </div>
                    </div>
                    
<!--                     <div class="col-md-12"> 
                        <div class="pull-right">
                            <div class="pagination">
                                <ul>
                                    <li><a href="#">Prev</a></li>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">Next</a></li>
                                </ul>
                            </div>
                        </div>                
                    </div> -->
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

		<!-- Footer area--> 

	<script src="/tp_hotel_booking/assets/js/modernizr-2.6.2.min.js"></script>
	<script src="/tp_hotel_booking/assets/js/jquery-1.10.2.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
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