<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>신우대학교 전자도서관입니다 - 로그인</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="./js/jquery-3.6.0.min.js"></script>
    <link rel="manifest" href="site.webmanifest">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.css">
    <link rel="stylesheet" href="assets/css/flaticon.css">
    <link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
    <link rel="stylesheet" href="assets/css/gijgo.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/animated-headline.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/all.min.css">

    <style>
        #currentMenu {
            color: white;
            padding: 20px;
            font-size: 40px;
            font-weight: 700;
        }

        #login {
            margin: 20px;
        }

        .reqTitle {
            padding-top: 10px;
            padding-bottom: 3px;
            display: block;
        }

        .bottomBtn {
            float: right;
            padding-top: 20px;
        }
        .bottomBtn input {
            margin: 10px;
        }

        .noneList {
            list-style: none;
        }

        .fa-check-circle {
            color: #6785FF;
        }

        .section-top-border {
            padding: 40px;
        }
		#logintable{

		font-family: 'Gowun Dodum', sans-serif;
		
		}
	
		#logintable th{
			color: #D2E2E9;
			text-align: left;
			
		}
		#text{
			margin-top:-10px;
			color: #D2E2E9;
			text-align:right;
			font-size:3px;
			font-weight:bold;
		}
    </style>
</head>

<body>
	<!-- ? Preloader Start -->
	<div id="preloader-active">
		<div class="preloader d-flex align-items-center justify-content-center">
			<div class="preloader-inner position-relative">
				<div class="preloader-circle"></div>
				<div class="preloader-img pere-text">
					<img src="assets/img/logo/loder.png" alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Preloader Start -->
	<header>
		<!-- Header Start -->
		<div class="header-area">
			<div class="main-header header-sticky">
				<!-- Logo -->
				<div class="header-left">
					<div class="logo">
						<a href="index.html">
							<img src="images/shinwooLogo.PNG" alt="">
						</a>
					</div>
					<div class="menu-wrapper  d-flex align-items-center">
						<!-- Main-menu -->
						<div class="main-menu d-none d-lg-block">
							<nav>
								<ul id="navigation">
									<li><a href="index.html">도서관 소개</a></li>
									<li><a href="about.html">도서 신청</a></li>
									<li><a href="services.html">도서 검색</a></li>
									<li><a href="blog.html">독후감</a></li>
									<li><a href="contact.html">마이페이지</a></li>

								</ul>
							</nav>
						</div>
					</div>
				</div>
				<div class="header-right d-none d-lg-block">
					<a href="#" class="header-btn1">
						<img src="assets/img/icon/bell.png" alt="">
					</a>
					<button type="button" class="genric-btn primary circle" id="login">로그인</button>
				</div>
				<!-- Mobile Menu -->
				<div class="col-12">
					<div class="mobile_menu d-block d-lg-none"></div>
				</div>
			</div>
		</div>
		<!-- Header End -->
	</header>
	<main>
		<!--? Hero Start -->
		<div class="slider-area2 section-bg2 hero-overly" style="background-color: #6785FF; height: 150px;">
			<div class="slider-height2 d-flex align-items-center" style="background-color: #6785FF; height: 150px;">
				<h3 id="currentMenu">로그인</h3>
			</div>
		</div>
		<br>
		<br>
		<section>
			<center>
				<form action="<%= request.getContextPath() %>/login.me" method="post">
					<table id="logintable">
						<tr id="id" height="70px">
							<th>ID</th>
							<td>
								<input type="text" name="userNo" placeholder="학번입력" onfocus="this.placeholder = ''" onblur="this.placeholder = '학번입력'" required class="single-input">
							</td>
						</tr>
						<tr id="password">
							<th>Password</th>
							<td>
								<input type="password" name="userPwd" required class="single-input">
							</td>
						</tr>
						<tr>
							<td colspan="2" id="text">
								초기 비밀번호는 주민번호 앞자리 6자리 입니다.<br>
								<br>
								<div id="memberEnroll">
									<a onclick="location.href='<%= request.getContextPath() %>/findPwdForm.lo'" class="genric-btn link-border circle">비밀번호 찾기</a>

								</div>
							<td id="findPass">
								<br>
								<button class="genric-btn info-border circle" type="submit">로그인</button>
							</td>
						</tr>
					</table>
				</form>
			</center>
		</section>

	</main>
	<footer>
		<!-- Footer Start-->
		<div class="footer-area footer-padding">
			<div class="container">
				<div class="row d-flex justify-content-between">
					<div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
						<div class="single-footer-caption mb-50">
							<div class="single-footer-caption mb-30">
								<!-- logo -->
								<div class="footer-logo mb-35">
									<a href="index.html">
										<img src="images/shinwooLogo.PNG" alt="">
									</a>
								</div>
								<div class="footer-tittle">
									<div class="footer-pera">
										<p>(C)SHINWOO UNIVERSITY LIBRARY ALL RIGHTS RESERVED</p>
									</div>
								</div>
								<!-- social -->
								<div class="footer-social">
									<a href="#">
										<i class="fab fa-twitter"></i>
									</a>
									<a href="https://bit.ly/sai4ull">
										<i class="fab fa-facebook-f"></i>
									</a>
									<a href="#">
										<i class="fab fa-pinterest-p"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>Services</h4>
								<ul>
									<li><a href="#">- 주요 전화번호</a></li>
									<li><a href="#">- 개인정보처리방침</a></li>
									<li><a href="#">- 무단수집거부</a></li>
									<li><a href="#">- 원격지원</a></li>
									<li><a href="#">- 찾아오는길</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
						<div class="single-footer-caption mb-50">
							<div class="footer-tittle">
								<h4>Contect</h4>
								<ul>
									<li class="number"><a href="#">(02) 123-4567</a></li>
									<li><a href="#">shinwoo@universty.kr</a></li>
									<li><a href="#">서울시 강남구 역삼로</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- footer-bottom area -->
		<div class="footer-bottom-area section-bg2" data-background="assets/img/gallery/footer-bg.png">
			<div class="container">
				<div class="footer-border">
					<div class="row d-flex align-items-center">
						<div class="col-xl-12 ">
							<div class="footer-copy-right text-center">
								<p>
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
									Copyright &copy;
									<script>document.write(new Date().getFullYear());</script>
									All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by
									<a href="https://colorlib.com" target="_blank">Colorlib</a>
									<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer End-->
	</footer>
	<!-- Scroll Up -->
	<div id="back-top">
		<a title="1:1 문의" href="#">
			<i class="fas fa-question"></i>
		</a>
	</div>
	<!-- java script -->






	<!-- JS here -->

	<script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="./assets/js/popper.min.js"></script>
	<script src="./assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="./assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="./assets/js/owl.carousel.min.js"></script>
	<script src="./assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
	<script src="./assets/js/wow.min.js"></script>
	<script src="./assets/js/animated.headline.js"></script>
	<script src="./assets/js/jquery.magnific-popup.js"></script>

	<!-- Date Picker -->
	<script src="./assets/js/gijgo.min.js"></script>
	<!-- Nice-select, sticky -->
	<script src="./assets/js/jquery.nice-select.min.js"></script>
	<script src="./assets/js/jquery.sticky.js"></script>

	<!-- counter , waypoint,Hover Direction -->
	<script src="./assets/js/jquery.counterup.min.js"></script>
	<script src="./assets/js/waypoints.min.js"></script>
	<script src="./assets/js/jquery.countdown.min.js"></script>
	<script src="./assets/js/hover-direction-snake.min.js"></script>

	<!-- contact js -->
	<script src="./assets/js/contact.js"></script>
	<script src="./assets/js/jquery.form.js"></script>
	<script src="./assets/js/jquery.validate.min.js"></script>
	<script src="./assets/js/mail-script.js"></script>
	<script src="./assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="./assets/js/plugins.js"></script>
	<script src="./assets/js/main.js"></script>
	<script src="./assets/js/all.min.js"></script>

</body>

</html>