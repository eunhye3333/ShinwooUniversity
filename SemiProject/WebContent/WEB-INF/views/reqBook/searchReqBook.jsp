<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	%>
<!DOCTYPE html>

<html lang="ko">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>신청 도서 검색</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
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
	
	<style>
	.form-control {
		border: 1px solid black;
	}
	
	.selectBtn {
		margin-right: 20px;
		margin-left: 20px;
		margin-bottom: 10px;
	}
	
	#submitBtn{
		display:flex; 
		justify-content: center; 
		margin-top: 20px
	}
	</style>
</head>

<body>
	<div class="col-lg-4">
		<div class="blog_right_sidebar">
			<aside class="single_sidebar_widget search_widget">
				<div class="form-group">
					<div class="input-group mb-3">
						<input type="text" id="query" class="form-control" placeholder='검색할 도서를 입력하세요' onfocus="this.placeholder = ''" onblur="this.placeholder = '검색할 도서를 입력하세요'">
					</div>
				</div>
				<button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" type="button" id="search">도서 검색</button>
			</aside>
			<div id="searchList"></div>
			
			<nav class="blog-pagination justify-content-center d-flex">
				<ul class="pagination">
					<li class="page-item">
						<button type="button" class="page-link" aria-label="Previous" id="prevList"><i class="ti-angle-left"></i></button>
					</li>
					<li class="page-item">
						<button type="button" class="page-link" aria-label="Next" id="nextList"><i class="ti-angle-right"></i></button>
					</li>
				</ul>
			</nav>
			<div id="bookInfoInput"></div>
			<div id="submitBtn"></div>
<!-- 			<div style="text-align: center; margin-top: 20px"> -->
<!-- 				<button type="button" class="genric-btn success circle selectBtn" id="selectOne">선택</button> -->
<!-- 				<button type="button" class="genric-btn danger circle selectBtn" onclick="window.close()">취소</button> -->
<!-- 			</div> -->
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
	<script>
        pageNum = 1;
        
	    $(document).ready(function () {
	    	
	
	        $("#search").click(function () {
	        	ajaxList();
	        });
	        
	        $("#nextList").click(function () {
	            pageNum++;
	            ajaxList();
	            if(pageNum != 1){
	            	$("#prevList").attr('disabled', false);
	            }
	        });

	        $("#prevList").click(function () {
	            pageNum--;
	            ajaxList();
		    	if(pageNum == 1) {
		    		$("#prevList").attr('disabled', true);
		    	}
	        });
	
	       
	    });
	    
	    function ajaxList() {
	    	$("#searchList").html("");
	    	
            $.ajax({
                    method: "GET",
                    url: "https://dapi.kakao.com/v3/search/book?target=title",
                    data: {
                        query: $("#query").val(),
                        page: pageNum
                    },
                    headers: {
                        Authorization: "KakaoAK cb03e058b9749bc302799fdcb27d3d94"
                    }

                }).done(function (msg) {
                	$("#submitBtn").html('');
                	var count = msg.meta.pageable_count;
                	var lengthBook = 0;
                	if(count < 10){
                		lengthBook = count;
                	} else {
                		lengthBook = 10;
                	}
                	
                    for (var i = 0; i < lengthBook; i++) {
                    	var format = new Date(msg.documents[i].datetime);
                    	var redate = date_to_str(format);
                    	
                    	var title = msg.documents[i].title;
                    	var authors = msg.documents[i].authors;
                    	var publisher = msg.documents[i].publisher;
                    	var thumbnail = msg.documents[i].thumbnail;
                    	var contents = msg.documents[i].contents;
                    	
                    	
                        $("#searchList").append(
                        		"<input type='radio' name='selectBook' style='width:20px;height:20px;'>"
                        );
                        $("#searchList").append(
                        		"<input type='hidden' name='searchTitle' value='" + title + "'>"
                        );
                        $("#searchList").append(
                        		"<input type='hidden' name='searchAuthors' value='" + authors + "'>"
                        );
                        $("#searchList").append(
                        		"<input type='hidden' name='searchPub' value='" + publisher + "'>"
                        );
                        $("#searchList").append(
                        		"<input type='hidden' name='searchDate' value='" + redate + "'>"
                        );
                        
                        $("#searchList").append("<img src='" + thumbnail + "'/><br>");
                        $("#searchList").append(
                            "<h2><a href='" + msg.documents[i].url + "'>" + title + "</a><" +
                            "/h2>"
                        );
                        $("#searchList").append("<strong>저자:</strong> " + authors + "<br>");
                        $("#searchList").append(
                            "<strong>출판사:</strong> " + publisher + "<br>"
                        );
                        $("#searchList").append(
                            "<strong>출판일:</strong> " + redate + "<br>"
                        );
                        $("#searchList").append(
                            "<strong>책 소개:</strong> " + contents + "...<br>"
                        );
                        $("#searchList").append("<hr>");
                        
                    }
                    
//                     $("#submitBtn").append("<nav class='blog-pagination justify-content-center d-flex'>");
//                     $("#submitBtn").append("<ul class='pagination'>");
//                     $("#submitBtn").append("<li class='page-item'>");
//                     $("#submitBtn").append("<button type='button' class='page-link' aria-label='Previous' id='prevList'><i class='ti-angle-left'></i></button>");
//                     $("#submitBtn").append("</li>");
//                     $("#submitBtn").append("<li class='page-item'>");
//                     $("#submitBtn").append("<button type='button' class='page-link' aria-label='Next' id='nextList'><i class='ti-angle-right'></i></button>");
//                     $("#submitBtn").append("</li></ul></nav>");
                    $("#submitBtn").append("<div>");
                    $("#submitBtn").append("<button type='button' class='genric-btn success circle selectBtn' id='selectOne' onclick='sendVal();'>선택</button>");
                    $("#submitBtn").append("<button type='button' class='genric-btn danger circle selectBtn' onclick='window.close()'>취소</button>");
                    $("#submitBtn").append("</div>");
                    
                    
                });
		}
	    
	    function sendVal(){
	    	var inputs = $("#bookInfoInput").children()
           	opener.document.reqBook.bookTitle.value = inputs.eq(0).val();
           	opener.document.reqBook.author.value = inputs.eq(1).val();
           	opener.document.reqBook.publisher.value = inputs.eq(2).val();
           	opener.document.reqBook.releaseDate.value = inputs.eq(3).val();
           	
           	window.close();
		}
	    
	    $(document).on("click", "[name='selectBook']", function() {
	    	$("#bookInfoInput").html('');
	    	$("#bookInfoInput").append($(this).nextUntil("img"))
		});
	    
	    function date_to_str(format){
	    	var year = format.getFullYear();
	        var month = format.getMonth() + 1;
	        if(month<10) month = '0' + month;
	        var date = format.getDate();
	        if(date<10) date = '0' + date;

	        return year + "-" + month + "-" + date;
	    }

	</script>
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
</body>

</html>
