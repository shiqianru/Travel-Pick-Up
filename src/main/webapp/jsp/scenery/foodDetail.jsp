<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html lang="zxx" class="no-js">
	<head>
		<script type="text/javascript">
	    //适应 https 
		<%
	    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
	    %>
	  </script>
	  <base href="<%=basePath%>">
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="image/elements/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Blogger</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css/linearicons.css">
			<link rel="stylesheet" href="css/owl.carousel.css">
			<link rel="stylesheet" href="css/font-awesome.min.css">
			<link rel="stylesheet" href="css/nice-select.css">			
			<link rel="stylesheet" href="css/magnific-popup.css">
			<link rel="stylesheet" href="css/bootstrap.css">
			<link rel="stylesheet" href="css/main.css">
			 <style>
            .like{
            	display: block;
            	background-size: cover;
            	background-position: center;
            	background-repeat: no-repeat;
            	background-image: url(image/like.png);
            	width: 20px;
            	height: 20px
            }
            .like_fill{
            	display: block;
            	background-size: cover;
            	background-position: center;
            	background-repeat: no-repeat;
            	background-image: url(image/like_fill.png);
            	width: 20px;
            	height: 20px
            }
            .message{
            	display: block;
            	background-size: cover;
            	background-position: center;
            	background-repeat: no-repeat;
            	background-image: url(image/message.png);
            	width: 20px;
            	height: 20px
            }
            .message_fill{
            	display: block;
            	background-size: cover;
            	background-position: center;
            	background-repeat: no-repeat;
            	background-image: url(image/message_fill.png);
            	width: 20px;
            	height: 20px
            }
            p{
				  word-wrap: break-word;
				  word-break: break-all;
				  overflow: hidden;
			}
html, body { font-family: Segoe, "Segoe UI", "DejaVu Sans", "Trebuchet MS", Verdana, sans-serif;}
ul, ol { padding: 0;}
.banner { position: relative; overflow: auto; text-align: center;}
.banner li { list-style: none; }
.banner ul li { float: left; }
			#b04 { width: 640px;}
			#b04 .dots { position: absolute; left: 0; right: 0; bottom: 20px;}
			#b04 .dots li 
			{ 
				display: inline-block; 
				width: 10px; 
				height: 10px; 
				margin: 0 4px; 
				text-indent: -999em; 
				border: 2px solid #fff; 
				border-radius: 6px; 
				cursor: pointer; 
				opacity: .4; 
				-webkit-transition: background .5s, opacity .5s; 
				-moz-transition: background .5s, opacity .5s; 
				transition: background .5s, opacity .5s;
			}
			
			#b04 .dots li.active 
			{
				background: #fff;
				opacity: 1;
			}
			#b04 .arrow { position: absolute; top: 200px;}
			#b04 #al { left: 15px;}
			#b04 #ar { right: 15px;}
			</style>
		</head>
		<body>
			<!-- Start banner Area -->
			<section class="generic-banner relative">
			 <s:include value="/jsp/header.jsp"></s:include>				
				<div class="container">
					<div class="row height align-items-center justify-content-center">
						<div class="col-lg-10">
							<div class="generic-banner-content">
								<h2 class="text-white text-center">美食</h2>
								<p class="text-white">千年文化传承，千年坎坷琢磨，中华美食，色香味美。</p>
							</div>							
						</div>
					</div>
				</div>
			</section>		
			<!-- End banner Area -->
		
		<!-- About Generic Start -->
		<div class="main-wrapper">
			<div class="banner" id="b04" style="margin: 0 auto;margin-top: 50px;">
				<ul>
			       	<li><img src="image/xhcy.jpg" alt=""  height="300"></li>
			    </ul>
			</div>
			
			<!-- Start Generic Area -->
			<section class="about-generic-area pb-100">
				<div class="container border-top-generic" style="margin-top: 50px;">
					<h3 class="about-title mb-30">${session.foodDetail.foodName }</h3>
					<div class="row">
						<div class="col-lg-12" style="margin-top: 30px;">
							${session.foodDetail.foodDiscrib }
						</div>
					</div>
				</div>
			</section>
			<!-- End Generic Start -->		

		 <s:include value="/jsp/footer.jsp"></s:include> 	

		</div>
		<script src="js/vendor/jquery-2.2.4.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
		<script src="js/vendor/bootstrap.min.js"></script>
		<script src="js/jquery.ajaxchimp.min.js"></script>
		<script src="js/jquery.sticky.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/jquery.nice-select.min.js"></script>
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/main.js"></script>
        <script src="js/unslider.min.js"></script>
	</body>
	<script type="text/javascript">
		$(window).load(function(){
			//图片轮播图
            var unslider04 = $('#b04').unslider({
        		dots: true
        	}),
        	data04 = unslider04.data('unslider');
        	$('.unslider-arrow04').click(function() {
                var fn = this.className.split(' ')[1];
                data04[fn]();
            });
        	
        	$("#logout").click(function(){
    			window.location.href="http://localhost:8080/travelpu/user/logout.action"
    		})
		})
	</script>
</html>