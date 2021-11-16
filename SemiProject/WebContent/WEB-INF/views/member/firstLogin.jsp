<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.vo.Member"%>
<%
	Member m = (Member)request.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html class="no-js">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>신우대학교 전자도서관입니다 - 회원 등록</title>
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
		#enrollTable{

	
		width:500px; height:600px;
		margin:auto;
	
		}
	
		.category{
			font-weight:bold;
			font-family: 'Gowun Dodum', sans-serif;
			width: 150px;
		}
		#notice{
			text-align:center;
			font-size:3px;
			font-family: 'Gowun Dodum', sans-serif;
		}
		.red{color:red;}
		input:read-only{background-color:#dedede}
		.confirm{
			text-align:center;
			font-size:3px;
			font-family: 'Gowun Dodum', sans-serif;
		}
		#memberEnroll{
			text-align:center;
		}
	
	
    </style>
</head>

<body onload="alert('최초로 로그인하셨습니다. 정보입력이 필요합니다.')">
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
                        <a href="index.html"><img src="images/shinwooLogo.PNG" alt=""></a>
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
                                    
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="header-right d-none d-lg-block">
                    <a href="#" class="header-btn1"><img src="assets/img/icon/bell.png" alt=""></a>
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
                <h3 id="currentMenu">최초 등록</h3>
            </div>
        </div>
        <br><br>

	
		<form action='<%= request.getContextPath() %>/firstLogin.me' method='post' ">
    	<table id ="enrollTable">
    		<tr>
    			<td class="category">학번</td>
    			<td colspan="2"><div id="studentNo"><%= m.getMemberId() %></div></td>
    			<input type="hidden" name="memberId" value="<%= m.getMemberId() %>">
    		</tr>
    		<tr>
    			<td class="category">이름</td>
    			<td><div id="name"><%= m.getMemberName() %></div></td>
    		</tr>
    		<tr>
    			<td class="category">학과</td>
    			<td><div id="major"> <%= m.getDepartment() %></div></td>
    		</tr>
    		<tr>
    			<td class="category">비밀번호<span class="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</span></td>
    			<td>
    				<div class="mt-10">
					<input type="password" name="password" id ="password"
					onfocus="this.placeholder = ''"  required
					class="single-input">
					</div>
					<div id="notice">비밀번호는 영문, 숫자, 특수문자(!,@,#,$,%,^,&,*) 포함 8자리 이상 입력해주세요.'</div>								
    			</td>
    		</tr>
    		<tr>
    			<td class="category">비밀번호 확인<span class="red">&nbsp;&nbsp;*</span></td>
    			<td>
    			<div class="mt-10">
					<input type="password" name="passConfirm" id ="passConfirm"
					 onblur="confirm();" required
					class="single-input" >
				</div><div class="confirm" id = "notice2"></div></td>
    		</tr>
    		<tr>
    			<td class="category">전화번호</td>
    			<td>
	    			<div class="single-element-widget mt-30">
						<div class="phone" id="number1">
							<select name="number1">
								<option value="010" selected>010</option>
								<option value="011">011</option>
								<option value="016">016</option>
								<option value="018">018</option>
								<option value="019">019</option>
							</select>
						</div>
					</div>&nbsp;&nbsp;
					<div class="mt-10">
						<input type="text" name="number2" placeholder="- 제외"
						onfocus="this.placeholder = ''" onblur="this.placeholder = '- 제외'"
						class="single-input">
					</div>
				</td>
    		</tr>
    		<tr>
    			<td class="category">이메일 <span class="red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*</span></td>
    			<td>
    				<div class="input-group-icon mt-10">
						<div class="icon"><i class="fa fa-thumb-tack" aria-hidden="true"></i></div>
					<input type="text" name="email1"  required class="single-input">
					</div>
					<!-- <div class="input-group-icon mt-10">
						<div class="icon"><i class="fa fa-thumb-tack" aria-hidden="true"></i></div>
					<input type="text" name="email1"  required class="single-input">
					</div>-->
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
				<div>
					<select class="address" id="address1" name="address1">
						<option value="강원도">강원</option>
						<option value="경기도">경기</option>
						<option value="경상남도">경남</option>
						<option value="경상북도">경북</option>
						<option value="광주광역시">광주</option>
						<option value="대구광역시">대구</option>
						<option value="대전광역시">대전</option>
						<option value="부산광역시">부산</option>
						<option value="서울특별시">서울</option>
						<option value="울산광역시">울산</option>
						<option value="인천광역시">인천</option>
						<option value="전라남도">전남</option>
						<option value="전라북도">전북</option>
						<option value="제주특별자치도">제주</option>
						<option value="충청남도">충남</option>
						<option value="충청북도">충북</option>
					</select>&nbsp;&nbsp;
					<span class="mt-10">
						<input type="text" name="address2" placeholder="도로명 주소 입력"
						onfocus="this.placeholder = ''" onblur="this.placeholder = '도로명 주소 입력'"
						class="single-input">
					</span>
					</div>
				</td>
				
			</tr>
			<tr>
				<td colspan="3">
				<br><br>
				<div id="memberEnroll">
					<button type="submit" class="genric-btn info circle" onclick= "submitAlarm();">초기설정완료</button>
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
                                    <a href="index.html"><img src="images/shinwooLogo.PNG" alt=""></a>
                                </div>
                                <div class="footer-tittle">
                                    <div class="footer-pera">
                                        <p>(C)SHINWOO UNIVERSITY LIBRARY ALL RIGHTS RESERVED</p>
                                    </div>
                                </div>
                                <!-- social -->
                                <div class="footer-social">
                                    <a href="#"><i class="fab fa-twitter"></i></a>
                                    <a href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                    <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-4 col-sm-6">
                        <div class="single-footer-caption mb-50">
                            <div class="footer-tittle">
                                <h4>Services </h4>
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
                                    <script>document.write(new Date().getFullYear());</script> All rights reserved |
                                    This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a
                                        href="https://colorlib.com" target="_blank">Colorlib</a>
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
        <a title="1:1 문의" href="#"><i class="fas fa-question"></i></a>
    </div>
    
    
    <!-- java script -->
	<script>
	
	function selectEmail(ele){ 
  		var $ele = $(ele); 
  		var $email2 = $('input[name=email2]'); //
  		if($ele.val() == "etc"){ 
  			$email2.attr('readonly', false); 
  			$email2.val(''); 
  		} else { 
  			$email2.attr('readonly', true); 
  			$email2.val($ele.val()); 
  		} 
  	}
 
	function confirm(){
		var pass = document.getElementByName('password');
		var pass2 = document.getElementByName('passConfirm');
		var notice = document.getElementById('notice2');

		
		if(pass2.value ==''|| pass2.value.length ==0){
			notice.innerText = '';
		}else if(pass.value != pass2.value){
			notice.innerText = '비밀번호가 일치하지 않습니다.';
			notice.style.color = 'red';
		}else{
			notice.innerText = '비밀번호가 일치합니다.';
			notice.style.color = 'green';
		}
	} 

	 /* 	$("#password").change(function(){
		    checkPassword($('#password').val());
		});
		function checkPassword(password){
		    
		    if(!/^(?=.*[a-zA-Z])(?=.*[!@#$%^*])(?=.*[0-9]).{8,25}$/.test(password)){            
		        $('#notice').text('알맞은 비밀번호 입니다.');
		        $('#passConfirm').focus();
		        return false;
		    }    
		
		}
		
	
		
		 $('#password').on('blur', function(){
			if($('#passConfirm').val() == ''){
				$('#notice2').text('비밀번호를 한 번 더  입력하세요');		
			}else if($('#password').val() != $('#passConfirm').val()){
				$('#notice2').text('비밀번호가 일치하지 않습니다.').css('color', 'red');
			}else {
				$('#notice2').text('비밀번호가 서로 일치합니다.').css('color', 'green');
			}
		});
		 */
		function submitAlarm(){
			if($('#password').val() == ''){
				alert('비밀번호를 입력해주세요');
				$('#password').focus();
				return false;
			}
			if($('#password').val() != $('#passConfirm').val()){
				alert('비밀번호가 일치하지 않습니다.');
				$('#password').val("");
				$('#passConfirm').val("");
				$('#password').focus();
				return false;
			}
			if($('#email').val() == ''){
				alert('이메일이 입력되지 않았습니다.');
				$('#email').val("");
				$('#email').focus();
				return false;
				
			}
		} 
	
	</script>

  	
  	
  	
    
    
    
    
    
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