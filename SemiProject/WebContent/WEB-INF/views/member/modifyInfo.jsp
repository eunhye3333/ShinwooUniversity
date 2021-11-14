<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="member.vo.Member" %>
<% 
	Member m = (Member)request.getAttribute("m"); 
	String phone = m.getPhone();
	String number1 = phone.substring(0, 3);
	String number2 = phone.substring(3);
	String address = m.getAddress();
	String address1 = address.split(" ")[0];
	String address2 = address.substring(address.indexOf(address1) + address1.length() + 1);
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>내 정보 수정</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<script type="text/javascript" src="/js/jquery-3.6.0.min.js"></script>
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
	
	#modifyTable {
		width: 40%;
		height: 600px;
		margin: auto;
	}
	
	.category {
		font-weight: bold;
		font-family: 'Gowun Dodum', sans-serif;
		width: 150px;
	}
	
	input:read-only {
		background-color: #dedede
	}
	
	#notice1 {
		text-align: center;
		font-size: 3px;
		font-family: 'Gowun Dodum', sans-serif;
	}
	
	#Btns {
		text-align: center;
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
							<img src="assets/img/logo/logo.png" alt="">
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
									<li class="active"><a href="contact.html">마이페이지</a></li>
									<li class="active"><a href="#"></a>
										<ul class="submenu">
											<li><a href="blog.html">대출도서목록</a></li>
											<li><a href="blog_details.html">신청도서목록</a></li>
											<li><a href="elements.html">내정보 수정</a></li>
										</ul></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
				<div class="header-right d-none d-lg-block">
					<a href="#" class="header-btn1">
						<img src="assets/img/icon/bell.png" alt="">
					</a>
					<button type="button" class="genric-btn primary circle" id="login">로그아웃</button>
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
				<h3 id="currentMenu">내 정보 수정</h3>
			</div>
		</div>
		<br> <br>

		<form id="modifyForm" action="<%=request.getContextPath()%>/modify.info" method="post" onsubmit="return send();">
			<table id="modifyTable">
				<tr>
					<td class="category">학번</td>
					<td colspan="2">
						<div id="studentNo"><%= m.getMemberId() %></div>
					</td>
				</tr>
				<tr>
					<td class="category">이름</td>
					<td colspan="2">
						<div id="name"><%= m.getMemberName() %></div>
					</td>
				</tr>
				<tr>
					<td class="category">학과</td>
					<td colspan="2">
						<div id="major"><%= m.getDepartment() %></div>
					</td>
				</tr>
				<tr>
					<td class="category">비밀번호</td>
					<td colspan="3">
						<div class="mt-10">
							<input type="password" name="password" onfocus="this.placeholder = ''" required class="single-input">
						</div>
						<span id="notice1">비밀번호를 변경하지 않으려면 빈칸으로 두세요.</span>

					</td>
				</tr>
				<tr>
					<td class="category">비밀번호 확인</td>
					<td colspan="3">
						<div class="mt-10">
							<input type="password" name="passConfirm" onfocus="this.placeholder = ''" required class="single-input">
						</div>
					</td>
				</tr>
				<tr>
					<td class="category">전화번호</td>
					<td width="1%">
						<div class="mt-10">
							<div class="phone" id="number1">
								<select name="number1">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="018">018</option>
									<option value="019">019</option>
								</select>
							</div>
						</div>
					</td>
					<td colspan="2">
						<div class="mt-10">
							<input type="text" name="number2" class="single-input" placeholder="- 제외" onfocus="this.placeholder = ''" onblur="this.placeholder = '- 제외'"
								   value="<%= number2 %>">
						</div>
					</td>
				</tr>
				<tr>
					<td class="category">이메일</td>
					<td colspan="2">
						<div>
							<input type="text" name="email1" required class="single-input">
						</div>
					</td>
					<td>
						<div>
							<select class="email" name="email2" onChange="selectEmail(this)">
								<option value="@naver.com">@naver.com</option>
								<option value="@gmail.com">@gmail.com</option>
								<option value="@daum.net">@daum.net</option>
								<option value="@nate.com">@nate.com</option>
								<option value="etc">기타</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td class="category">주소</td>
					<td>
						<div class="mt-10">
							<select class="address" name="address1">
								<option>시/도</option>
								<option value="강원도">강원도</option>
								<option value="경기도">경기도</option>
								<option value="경상남도">경상남도</option>
								<option value="경상북도">경상북도</option>
								<option value="광주광역시">광주광역시</option>
								<option value="대구광역시">대구광역시</option>
								<option value="대전광역시">대전광역시</option>
								<option value="부산광역시">부산광역시</option>
								<option value="서울특별시">서울특별시</option>
								<option value="울산광역시">울산광역시</option>
								<option value="인천광역시">인천광역시</option>
								<option value="전라남도">전라남도</option>
								<option value="전라북도">전라북도</option>
								<option value="제주특별자치도">제주특별자치도</option>
								<option value="충청남도">충청남도</option>
								<option value="충청북도">충청북도</option>
							</select>
						</div>
					</td>
					<td colspan="2">
						<div class="mt-10">
							<input type="text" name="address2" class="single-input" placeholder="도로명 주소 입력" onfocus="this.placeholder = ''" 
								   onblur="this.placeholder = '도로명 주소 입력'" value="<%= address2 %>">
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="6">
						<div class="mt-10">
							<br> <br>
							<div id="Btns">
								<input type="submit" class="genric-btn info circle" value="정보 수정 ">
								&nbsp;&nbsp;&nbsp;&nbsp;
								<input type="reset" class="genric-btn danger circle" value="수정 취소">
							</div>
						</div>
					</td>
				</tr>

			</table>
		</form>

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
										<img src="assets/img/logo/logo2_footer.png" alt="">
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
									<script>
										document
												.write(new Date().getFullYear());
									</script>
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
	<script>
		function selectEmail(ele) {
			var $ele = $(ele);
			var $email2 = $('input[name=email2]'); 
			if ($ele.val() == "etc") {
				$email2.attr('readonly', false);
				$email2.val('');
			} else {
				$email2.attr('readonly', true);
				$email2.val($ele.val());
			}
		}
		
		function send(){
			var pwd1 = document.getElementsByName('password');
			var pwd2 = document.getElementsByName('passConfirm'); 
			
			if(pwd1[0].value == pwd2[0].value){
				return true;
			} else{
				alert('비밀번호가 같지 않습니다.');
				pwd2.focus();
				return false;
			}
		}
		
		$(function() {
			$('select[name="number1"]').find('option:contains("<%= number1 %>")').attr("selected",true);
			$('select[name="address1"]').find('option:contains("<%= address1 %>")').attr("selected",true);
		});
	</script>

	<!-- JS here -->

	<script src="<%=request.getContextPath()%>/assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script src="<%=request.getContextPath()%>/assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/popper.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script src="<%=request.getContextPath()%>/assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script src="<%=request.getContextPath()%>/assets/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
	<script src="<%=request.getContextPath()%>/assets/js/wow.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/animated.headline.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.magnific-popup.js"></script>

	<!-- Date Picker -->
	<script src="<%=request.getContextPath()%>/assets/js/gijgo.min.js"></script>
	<!-- Nice-select, sticky -->
	<script src="<%=request.getContextPath()%>/assets/js/jquery.nice-select.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.sticky.js"></script>

	<!-- counter , waypoint,Hover Direction -->
	<script src="<%=request.getContextPath()%>/assets/js/jquery.counterup.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/waypoints.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.countdown.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/hover-direction-snake.min.js"></script>

	<!-- contact js -->
	<script src="<%=request.getContextPath()%>/assets/js/contact.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.form.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.validate.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/mail-script.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script src="<%=request.getContextPath()%>/assets/js/plugins.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/main.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/all.min.js"></script>

</body>
</html>