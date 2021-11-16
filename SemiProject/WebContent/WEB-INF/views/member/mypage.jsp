<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.vo.Member"%>
 <%
	Member loginUser= (Member)session.getAttribute("loginUser");
%>
<!doctype html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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
	
    <title>마이페이지</title>
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
       /*
    header {
	height : 70px; 
	background : #aacec2; padding : 30px;
	font-size : 15px; font-weight : bold;
	padding-top: 10px; padding-bottom: 0px; z-index:1;
	}
	
	header a {text-decoration : none; color : #404040;z-index:1; font-size:45px;}
	
	nav.bar li{display: inline-block; font-size: 20px; text-align : center;  padding-right: 100px;
	font-weight: bold; z-index:1;}
	
  	nav.bar{
  		height : 80px; background : #aacec2;  position:absolute;
  		position: sticky;
  		padding-top: 5px; padding-bottom: 0px; 
  		text-align : center; top: -20px;z-index:1;
  		padding-right: 0px;}
	
	.header-item a {text-align : center; text-decoration : none; color : #404040;
	
	display : block; padding : 10px 0px 0px 40px; line-height: 45px; text-align : center;}
	*/
    	.firstdiv{background:#6785FF; height:200px; font-size:40px; text-align:left; padding-left:20px; padding-top:60px;font-weight : bold; color:white;
    	}
    	
    #personalInf{
    	margin-left:18%; margin-right:18%; border-radius: 2em;
    }
    
    .borrowed{
    	background:#d2e2e9; height:100px; padding-left:160px; font-size:30px; padding-top:20px;font-weight : bold; color:#404040; border-bottom-right-radius:30px;
    }
    
    .personal{
    	font-size:20px;
    	}
    	
    
    .card img{
    	width:145px;
    }
    
    .imgdiv{
    	text-align:center; border-radius: 2em;
    	
    }
    
    .borrowed button{
    	margin-left:20px;
    	margin-top:-20px;
    	font-size:15px;
    	
    }
    
    .bookpage{ text-align : center;
    	margin-top:40px;
    }
    
    .bookp{ display:inline-block;
    }
    #ddaydiv{background: rgba(255, 0, 0, 0.5);}
    #dday{color:red;}
    .card-title{font-size:20px;}
    .card-body{text-align:center;}
    .card-body button{margin-top:10px;}
    div.card{border-radius: 2em; margin-top:10px; opacity: 0.8; margin-left:20px; margin-right:20px;}
    div.card:hover{box-shadow: 0 14px 28px rgba(0,0,0,0.25), 0 10px 10px rgba(0,0,0,0.22); transform:scale(1.08); top: 0; left: 0; opacity: 1;}
    
        #my_modal {
        display: none;
        width: 300px;
        padding: 20px 60px;
        background-color: #fefefe;
        border: 1px solid #888;
        border-radius: 3px;
    }

    #my_modal .modal_close_btn {
        position: absolute;
        top: 10px;
        right: 10px;
    }
    
    #pwDiv{
    	width:200px;
    	display:none;
    	
    }
    </style>
  </head>
  <body>
  
   <header>
        <!-- Header Start -->
        <div class="header-area">
            <div class="main-header header-sticky">
                <!-- Logo -->
                <div class="header-left">
                    <div class="logo">
                        <a href="index.html"><img src="assets/img/logo/logo.png" alt=""></a>
                    </div>
                    <div class="menu-wrapper  d-flex align-items-center">
                        <!-- Main-menu -->
                        <div class="main-menu d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="index.html">도서관 소개</a></li>
                                    <li><a href="about.html">도서 신청</a></li>
                                    <li><a href="services.html">도서 검색</a></li>
                                    <li><a href="<%= request.getContextPath() %>/reviewList.rv">독후감</a></li>
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
  <!-- <header><a href ="http://www.naver.com">   신우대학교</a>
		<input type ="submit" value = "로그인" style=" float:right; width : 80px; height : 40px;
		 background-color : #5D5E60; color : white; font-weight : bold; border-radius: 5px;" >
		<a href ="http://www.naver.com"></a>
	</header>
	
	<nav class='bar'>	
		<ul>
			<li class = "header-item"><a href ="http://www.naver.com">도서관 소개</a></li>
			<li class = "header-item"><a href ="http://www.naver.com">도서신청</a></li>
			<li class = "header-item"><a href ="http://www.naver.com">마이페이지</a></li>
		</ul>
	</nav>-->
  <div class="firstdiv">마이페이지</div>
  
  <div class="borrowed">대출한 도서목록 <button type="button" class="genric-btn info circle">더 보기</button></div>
  <p><p><br>
   <div class="jumbotron" id="personalInf">
   
   
<div class="card-deck">
  <div class="card">
     <div class="imgdiv"><img src="https://image.yes24.com/goods/102185287/L" class="card-img-top" alt="..." id="book1"></div>
    <div class="card-body">
      <h5 class="card-title" id="dday">아기곰의 재테크 불변의 법칙</h5>
      <p class="card-text" id="dday" align='center'>D-1<br>
      <button type="button"  class="genric-btn danger circle" onclick="confirm('아기곰의 재테크 불변의 법칙을(를) 반납하시겠습니까?')">반납하기</button>
      </p>
    </div>
  </div>
  <div class="card">
     <div class="imgdiv"><img src="https://image.yes24.com/goods/102266039/L" class="card-img-top" alt="..."></div>
    <div class="card-body">
      <h5 class="card-title">이토록 쉬운 경제학</h5>
      <p class="card-text" align='center'>D-2<br>
      <button type="button" class="genric-btn info circle" onclick="confirm('이토록 쉬운 경제학을(를) 반납하시겠습니까?')">반납하기</button></p>
    </div>
    
  </div>
  <div class="card">
  
     <div class="imgdiv"><img src="https://image.yes24.com/goods/7467677/L" class="card-img-top" alt="..."></div>
    
    <div class="card-body">
    
      <h5 class="card-title">오만과 몽상</h5>
     <p class="card-text" align='center'>D-3<br>
      <button type="button"  class="genric-btn info circle" onclick="confirm('오만과 몽상을(를) 반납하시겠습니까?')">반납하기</button></p>
    </div>
   
   </div>
</div>

   <p></p>
   
<div class="card-deck">
  <div class="card">
    <div class="imgdiv"><img src="https://image.yes24.com/goods/92275154/L" class="card-img-top" alt="..."></div>
    <div class="card-body">
      <h5 class="card-title">제리(cherry)</h5>
      <p class="card-text" align='center'>D-4<br>
      <button type="button"  class="genric-btn info circle" onclick="confirm('체리(cherry)을(를) 반납하시겠습니까?')">반납하기</button></p>
    </div>
   
  </div>
  <div class="card">
     <div class="imgdiv"><img src="https://image.yes24.com/goods/96394649/L" class="card-img-top" alt="..."></div>
    <div class="card-body">
      <h5 class="card-title">아귀도</h5>
      <p class="card-text" align='center'>D-5<br>
      <button type="button" class="genric-btn info circle" onclick="confirm('아귀도을(를) 반납하시겠습니까?')">반납하기</button></p>
    </div>
   
  </div>
  <div class="card">
     <div class="imgdiv"><img src="https://image.yes24.com/goods/75449287/L" class="card-img-top" alt="..."></div>
    <div class="card-body">
      <h5 class="card-title">심심할 때 우주 한 조각</h5>
      <p class="card-text" align='center'>D-6<br>
      <button type="button"  class="genric-btn info circle" onclick="confirm('심심할 때 우주 한 조각을(를) 반납하시겠습니까?')">반납하기</button></p>
    </div>
    
  </div>
</div>

   
   
   </div>
   <p><br>
   <div class="borrowed">신청한 도서목록</div></div>
   <p><br>
   
   
    
   <!-- 
    <div class="jumbotron" id="personalInf">
    
    <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">신청번호</th>
      <th scope="col">책 제목</th>
      <th scope="col">저자</th>
      <th scope="col">출판사</th>
      <th scope="col">승인여부</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>책 제목 1</td>
      <td>책 저자 1</td>
      <td>출판사 1</td>
       <td>승인 대기</td>
    </tr>
    <tr>
       <th scope="row">2</th>
      <td>책 제목 2</td>
      <td>책 저자 2</td>
      <td>출판사 2</td>
       <td>승인 대기</td>
    </tr>
    <tr>
       <th scope="row">3</th>
      <td>책 제목 3</td>
      <td>책 저자 3</td>
      <td>출판사 3</td>
       <td id="popup_open_btn"><u>미승인</u></td>
    </tr>
    <div id="my_modal">
    	<br>
    	<p><b>거절 사유</b><br> : 이미 소장하고 있는 책임.</p>
    	<br>
    <a class="modal_close_btn">닫기</a>
	</div>
    <script>
    function modal(id) {
        var zIndex = 9999;
        var modal = $('#' + id);

        // 모달 div 뒤에 희끄무레한 레이어
        var bg = $('<div>')
            .css({
                position: 'fixed',
                zIndex: zIndex,
                left: '0px',
                top: '0px',
                width: '100%',
                height: '100%',
                overflow: 'auto',
                // 레이어 색갈은 여기서 바꾸면 됨
                backgroundColor: 'rgba(0,0,0,0.4)'
            })
            .appendTo('body');

        modal
            .css({
                position: 'fixed',
                boxShadow: '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

                // 시꺼먼 레이어 보다 한칸 위에 보이기
                zIndex: zIndex + 1,

                // div center 정렬
                top: '50%',
                left: '50%',
                transform: 'translate(-50%, -50%)',
                msTransform: 'translate(-50%, -50%)',
                webkitTransform: 'translate(-50%, -50%)'
            })
            .show()
            // 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
            .find('.modal_close_btn')
            .on('click', function() {
                bg.remove();
                modal.hide();
            });
    }

    $('#popup_open_btn').on('click', function() {
        // 모달창 띄우기
        modal('my_modal');
    });
    </script>
    
    <tr>
       <th scope="row">3</th>
      <td>책 제목 3</td>
      <td>책 저자 3</td>
      <td>출판사 3</td>
       <td>미승인</td>
    </tr>
    <tr>
       <th scope="row">3</th>
      <td>책 제목 3</td>
      <td>책 저자 3</td>
      <td>출판사 3</td>
       <td>미승인</td>
    </tr>
    
  </tbody>
</table>

	<div class="bookpage">
	<nav aria-label="Page navigation example" class="bookp">
  	<ul class="pagination">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
  
</nav>
</div>
    </div>
    -->
    <p><br>
    <div class="borrowed">개인정보 수정</div>
        <p><br>
    <div class="jumbotron" id="personalInf">
  <h1 class="display-4">안녕하세요 <%= loginUser.getMemberName() %>님!</h1><p></p>
  <p class="lead">개인정보수정은 비밀번호 입력 후 변경 가능합니다.</p>  <div id="pwDiv"><input type="password" name="userPwd" id="userPwd" placeholder="비밀번호 입력"><input  type="button" id="goModify" value="확인""></div>
  <hr class="my-4"><br>
   <p class="personal">학번 : <%= loginUser.getMemberId() %></p><br>
   <%
   String phone = null;
   if(loginUser.getPhone() == null){
		phone = "미등록";
   }else{
	    phone = loginUser.getPhone();
   }
   %>
    <p class="personal">휴대전화 : <%= phone %></p><br>
    <p class="personal">이메일 : <%= loginUser.getEmail() %></p> <br><br>
  <a class="btn btn-primary btn-lg" role="button" href="javascript:confirmPw();">개인정보변경</a>
 
    
  <script>
  		function confirmPw(){
  			alert('개인정보수정을 위해 비밀번호가 필요합니다.\n확인을 누르고 비밀번호를 입력해주세요');
  			document.getElementById("pwDiv").style.display = 'block';
  			document.getElementById("userPwd").focus();
  		}
  		
  		$('#goModify').click(function(){
  			var userPassword = $('#userPwd');
  			$.ajax({
  				url:'checkPwd.me',
  				data:{userPwd : userPassword.val()},
  				success:function(data){
  					console.log(data);
  					if(data.trim()=='1'){
  						location.href='<%= request.getContextPath() %>/modifyForm.info';
  					}else{
  						alert('비밀번호가 틀립니다.');
  					}
  				},
  				error:function(data){
  					console.log(data);
  					
  				}
  			});
  		});
  </script>
  
</div>

</div>

 <div> 
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
                                    <a href="index.html"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
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
    <script>
        $(function () {
            var now = new Date();
            var year = now.getFullYear();
            var month = now.getMonth() + 1;
            var date = now.getDate();
            $('input[name=reqDate]').val(year + '-' + month + '-' + date);
            console.log(now);
        });
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

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  </body>
</html>