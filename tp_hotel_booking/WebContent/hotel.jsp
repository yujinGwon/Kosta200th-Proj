<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html><head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>HOTEL RESERVATION | Home page</title>
        <meta name="description" content="company is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
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

       <style>
        	th, td{
        		text-align:center;
        	}
        </style>

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
                        <h1 class="page-title">호텔 예약 페이지 입니다.</h1>               
                    </div>
                </div>
            </div>
        </div>
        <!-- End page header -->
        


        <div class="content-area blog-page padding-top-40" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">   
                <div class="row">
                    <div class="blog-lst col-md-12 pl0">
                    
                    	
                    	<!-- 여기서부터 호텔 섹션이 3개 반복되는 구간... -->	
                    	
                    	<c:forEach var="vo" items="${list}">
                        <section class="post">
                            <div class="text-center padding-b-50">
                                <h2 class="wow fadeInLeft animated">${vo.h_name}</h2>
                                <div class="title-line wow fadeInRight animated"></div>
                            </div>

                            <div class="row">
                                <div class="col-sm-6">
                                    <p class="author-category">
                                        <!-- By <a href="#">홍길동</a>
                                        in <a href="blog.html">Webdesign</a> -->
                                    </p>
                                </div>
                                <div class="col-sm-6 right" >
                                   <p class="date-comments">
                                        <!-- <a href="single.html"><i class="fa fa-calendar-o"></i> June 20, 2013</a>
                                        <a href="single.html"><i class="fa fa-comment-o"></i> 8 Comments</a> -->
                                    </p>
                                </div>
                            </div>
                            <div class="image wow fadeInLeft animated">
                                <a href="../rc/roomlist.do?h_id=1">
                                    <img src="/tp_hotel_booking/assets/img/hotel/${vo.h_img}" class="img-responsive" alt="Example blog post alt">
                                </a>
                            </div>
                            <p class="intro">${vo.h_desc}</p>
                            <p class="read-more">
                                <a href="../rc/roomlist.do?h_id=${vo.h_id}" class="btn btn-default btn-border">방 예약하기</a>
                            </p>
                        </section>                        
                        </c:forEach>
                     
                        <!-- 여기까지가 호텔 섹션이 3개 반복되는 구간... --> 
                        					<div class="card-body">
						<!-- 호텔 후기 -->
						<form action="/tp_hotel_booking/re/ReplyAction.do" method="post">
							<tr>
								<!--리뷰 작성 부분-->
								<td style="font-family: 돋음; font-size: 12">
									<div align="center">호텔 후기</div>
								</td>
								<td><input type="text" align="center" name="D_CONTENT"
									style="height: 150px; width: 1155px; border: groove;"
									maxlength="1024" /></td>
							</tr>
							<!-- 리뷰 끝  -->
							<tr>
								<input type="submit" calss="btn" value="등록"></input>
							</tr>
						</form>
						<div class="table-responsive">
							<table class="table" id="dataTable" width="100%" cellspacing="0">
								<thead>
									<tr>
										<th width="40">Name</th>
										<th>CONTENT</th>
										<th width="10%">DATE</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="vo" items="${ reList }">
										<tr>
											<td width="40"%>${vo.d_u_name }</td>
											<td>${vo.d_content }</td>
											<td width="10%">${vo.d_date }</td>
											<td><c:if test="${ sessionScope.email == vo.d_u_name }">
													<p>
														<a href="../re/ReservationDelete.do?d_no2=${vo.d_no2 }">삭제</a>
													</p>
												</c:if></td>
										</tr>
									</c:forEach>
								</tbody>
								</tbody>
							</table>
						</div>
					</div>
					<!-- 호텔 후기 -->
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
                            <li><a class="wow fadeInUp animated" href="./list.do" data-wow-delay="0.6s">Board</a></li>
                            <li><a class="wow fadeInUp animated" href="../uc/contact.do" data-wow-delay="0.6s">Contact</a></li>
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
        
	<!-- Page level plugins -->
	<script
		src="/tp_hotel_booking/assets/js/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/tp_hotel_booking/assets/js/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="/tp_hotel_booking/assets/js/datatables.js"></script>   
</body>
</html>