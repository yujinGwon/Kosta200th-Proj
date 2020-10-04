<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>HOTEL RESERVATION | Home page</title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!-- ////////////////////////////// -->
        <style type="text/css">
			.tm-search-form {
				height: 260px
			}
	
			#tm-section-search {
				position: relative;
				left: 50%;
				margin-left: -440px;
			}
			

		</style>
		 <!-- ////////////////////////////// -->
		        
        <!-- ////////////////////////////// -->

		<!-- load stylesheets -->
		<link rel="stylesheet" type="text/css" href="/tp_hotel_booking/assets/css/style.css">
	  	<link rel="stylesheet" type="text/css" href="/tp_hotel_booking/assets/css/datepicker.css"/>
	    <link rel="stylesheet" type="text/css" href="/tp_hotel_booking/assets/css/slick.css"/>
	    <link rel="stylesheet" href="/tp_hotel_booking/assets/css/templatemo-style.css"><!-- Templatemo style -->

        <!-- ////////////////////////////// -->



        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico  the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/normalize.css">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/fontello.css">
        <link href="/tp_hotel_booking/assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="/tp_hotel_booking/assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="/tp_hotel_booking/assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="/tp_hotel_booking/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/price-range.css">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/owl.theme.css">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/owl.transitions.css">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/style.css">
        <link rel="stylesheet" href="/tp_hotel_booking/assets/css/responsive.css">
        
        

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
                                <span><i class="pe-7s-call"></i> +82 10-2780-0336</span>
                                <span><i class="pe-7s-mail"></i> yung21@naver.com</span>
                            </p>
                        </div>
                    </div>
                    <!-- <div class="col-md-2 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
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
                    </div> -->
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
            </div><!-- /.container-fluid -->
        </nav>
        <!-- End of nav bar -->

        <div class="slider-area">
            <div class="slider">
                <div id="bg-slider" class="owl-carousel owl-theme">
 
                    <div class="item"><img src="/tp_hotel_booking/assets/img/slide1/hotel-001.jpg" alt="HotelMain1"></div>
                    <div class="item"><img src="/tp_hotel_booking/assets/img/slide1/hotel-002.jpg" alt="HotelMain2"></div>

                </div>
            </div>
            <div class="container slider-content">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <h2>3팀이 만든 호텔예약 사이트 입니다.</h2>
                        <p>kosta 자바웹개발 200기수의 중간 프로젝트 결과물 입니다. 다 내려놓고 호캉스를 즐기세요.~~~</p>
     

<!-- ///////////추가//////////// -->

	      <div class="row tm-banner-row" id="tm-section-search">
					<form action="../rc/main-roomlist.do" method="get"
						class="tm-search-form tm-section-pad-2">
						<div class="form-row tm-search-form-row">
							<div
								class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
								<label for="inputCity" ><font color="#878787"> 목적지 </font></label> <input
									name="h_location" type="text" class="form-control" id="inputCity"
									placeholder="Type your destination...">
							</div>
							<div class="form-group tm-form-group tm-form-group-1">
								<div
									class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
									<label for="inputRoom"> 객실 인원 </label> <select name="r_people"
										class="form-control tm-select" id="inputRoom">
										<option value="1" selected>1 명</option>
										<option value="2">2 명</option>
										<option value="3">3 명</option>
										<option value="4">4 명</option>
										<option value="5">5 명</option>
										<option value="6">6 명</option>
										<option value="7">7 명</option>
										<option value="8">8 명</option>
										<option value="9">9 명</option>
										<option value="10">10 명</option>
									</select>
								</div>
								
								<div
									class="form-group tm-form-group tm-form-group-pad tm-form-group-2">
									<label for="inputRoom">침대 타입</label> <select name="r_type"
										class="form-control tm-select" id="inputRoom">
										<option value="싱글" selected>싱글</option>
										<option value="더블">더블</option>
										<option value="트윈">트윈</option>								
									</select>
								</div>
								
								
							</div>
						</div>
						<!-- form-row -->
						<div class="form-row tm-search-form-row">
				
							<div
								class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
								<label for="inputCheckIn">체크인 날짜</label> <input
									name="check-in" type="text" class="form-control" id="inputCheckIn"
									placeholder="Check In">
							</div>
							<div
								class="form-group tm-form-group tm-form-group-pad tm-form-group-3">
								<label for="inputCheckOut">체크아웃 날짜</label> <input
									name="check-out" type="text" class="form-control"
									id="inputCheckOut" placeholder="Check Out">
							</div>
							<div
								class="form-group tm-form-group tm-form-group-pad tm-form-group-1">
								<label for="btnSubmit">&nbsp;</label>
								<button type="submit"
									class="btn btn-primary tm-btn tm-btn-search text-uppercase"
									id="btnSubmit">방 검색하기</button>
							</div>
						</div>
					</form>
				</div> <!-- row -->	

                 
<!-- /////////////////////// -->
               </div>
        	</div>
    	</div>
	</div>

        <!-- property area -->
        <div class="content-area recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        <!-- /.feature title -->
                        <h2>가장 저렴한 방</h2>
                        <p>현재 예약할 수 있는 방중에 가격이 가장 저렴한 방 입니다.</p>
                    </div>
                </div>

                <div class="row">
                    <div class="proerty-th">
                    
                    
                    	<c:forEach var="vo" items="${list}">
                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="../rc/roomdetail.do?r_id=${vo.r_id}" ><img src="/tp_hotel_booking/assets/img/room/${vo.r_img1}"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="../rc/roomdetail.do?r_id=${vo.r_id}">${vo.r_name}</a></h5>
                                                                      
                                    <div class="dot-hr">
                                     <c:choose>
	                                    <c:when test="${vo.r_able == 0}"><a href="./roomdetail.do?r_id=${vo.r_id}"><font color="red">예약중</font></a></c:when>
	                                    <c:when test="${vo.r_able == 1}"><a href="./roomdetail.do?r_id=${vo.r_id}"><font color="blue">예약가능</font></a></c:when>
                                    </c:choose>                                 
                                    </div>                                   
                                    
                                    <span class="pull-left"><b>객실인원 : </b>${vo.r_people} 명</span>
                                    <span class="proerty-price pull-right">${vo.r_cost} 원</span>
                                </div>
                            </div>
                        </div>
                        </c:forEach>                    

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-tree more-proerty text-center">
                                <div class="item-tree-icon">
                                    <!-- <i class="fa fa-th"></i> -->
                                </div>
                                <div class="more-entry overflow">
                                    <h5><a href="property-1.html" >결정하지 못하셨나요?</a></h5>
                                    <h5 class="tree-sub-ttl">모든 방을 보고 천천히 결정하세요.</h5>
                                    <a href="../rc/roomlistall.do">
                                    <button class="btn border-btn more-black" value="All properties">모든 방 보기</button>
                                    </a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!--Welcome area -->
      
        <!--TESTIMONIALS -->
       
        <!-- Count area -->
      
        <!-- boy-sale area -->      

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
                            <li><a class="wow fadeInUp animated" href="./list.do" data-wow-delay="0.6s">Board</a></li>
                            <li><a class="wow fadeInUp animated" href="../uc/contact.do" data-wow-delay="0.6s">Contact</a></li>
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
        <script src="/tp_hotel_booking/assets/js/main.js"></script>
        
     <!-- //////////추가/////////// -->   
         <script src="/tp_hotel_booking/assets/js/datepicker.min.js"></script>                <!-- https://github.com/qodesmith/datepicker -->
        
     
     <script> 
        
        /* DOM is ready
        ------------------------------------------------*/
        $(function(){

        	// Date Picker in Search form
            var pickerCheckIn = datepicker('#inputCheckIn');
            var pickerCheckOut = datepicker('#inputCheckOut');
        });

    </script>    
    
     <!-- //////////추가/////////// -->    
    </body>
</html>