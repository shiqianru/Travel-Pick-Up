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
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="image/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="colorlib">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
	<meta charset="UTF-8">
	<!-- Site Title -->
	<title>Travel Pick Up</title>

	<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
		<!--CSS============================================= -->
		<link rel="stylesheet" href="css/linearicons.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/owl.carousel.css">
		<link rel="stylesheet" href="css/main.css">
	</head>
	<body>

		<s:include value="header.jsp"></s:include>

		<!-- start banner Area -->
		<section class="banner-area relative" id="home" data-parallax="scroll" data-image-src="image/header-bg.jpg">
			<div class="overlay-bg overlay"></div>
			<div class="container">
				<div class="row fullscreen">
					<div class="banner-content d-flex align-items-center col-lg-12 col-md-12">
						<h1>
							旅行拾光 <br>
							探索你的心.								
						</h1>
					</div>	
					<s:if test="#session.user!=null">
						<div class="head-bottom-meta d-flex justify-content-between align-items-end col-lg-12">
							<div class="col-lg-6 flex-row d-flex meta-left no-padding">
								<p><span class="lnr lnr-heart"></span> 15 Likes</p>
								<p><span class="lnr lnr-bubble"></span> 02 Comments</p>
							</div>
							<a href="jsp/user/personalEdit.jsp" class="col-lg-6 flex-row d-flex meta-right no-padding justify-content-end">
								<div class="col-lg-6 flex-row d-flex meta-right no-padding justify-content-end">
								<div class="user-meta">
									<h4 class="text-white"><s:property value="#session.user.username"/></h4>
									<s:if test="#session.user.introduce==null">
										<p>快来编辑你的个性签名吧！</p>
									</s:if>
									<s:else>
										<p>${user.introduce }</p>
									</s:else>
								</div>
								<img id="imgurl" style="width: 60px;height: 60px;" class="image-fluid user-image" src="${session.user.displayPicUrl}" alt="">
							</div>
							</a> 
						</div>	
					</s:if>
					<s:else></s:else>										
				</div>
			</div>
		</section>
		<!-- End banner Area -->	


		<!-- Start category Area -->
		<section class="category-area section-gap" id="news">
			<div class="container">
				<div class="row d-flex justify-content-center">
					<div class="menu-content pb-70 col-lg-8">
						<div class="title text-center">
							<h1 class="mb-10">Latest News from all categories</h1>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore  et dolore magna aliqua.</p>
						</div>
					</div>
				</div>						
				<div class="active-cat-carusel">
					<div class="item single-cat">
						<image src="image/c1.jpg" alt="">
						<p class="date">10 Jan 2018</p>
						<h4><a href="#">It S Hurricane Season Visiting Hilton</a></h4>
					</div>
					<div class="item single-cat">
						<image src="image/c2.jpg" alt="">
						<p class="date">10 Jan 2018</p>
						<h4><a href="#">What Makes A Hotel Boutique</a></h4>
					</div>
					<div class="item single-cat">
						<image src="image/c3.jpg" alt="">
						<p class="date">10 Jan 2018</p>
						<h4><a href="#">Les Houches The Hidden Gem Valley</a></h4>
					</div>							
				</div>												
			</div>	
		</section>
		<!-- End category Area -->
		
		<!-- Start travel Area -->
		<section class="travel-area section-gap" id="travel">
			<div class="container">
				<div class="row d-flex justify-content-center">
					<div class="menu-content pb-70 col-lg-8">
						<div class="title text-center">
							<h1 class="mb-10">Hot topics from Travel Section</h1>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore  et dolore magna aliqua.</p>
						</div>
					</div>
				</div>						
				<div class="row">
					<div class="col-lg-6 travel-left">
						<div class="single-travel media pb-70">
						  <image class="image-fluid d-flex  mr-3" src="image/t1.jpg" alt="">
						  <div class="dates">
						  	<span>20</span>
						  	<p>Dec</p>
						  </div>
						  <div class="media-body align-self-center">
						    <h4 class="mt-0"><a href="#">Addiction When Gambling
						    Becomes A Problem</a></h4>
						    <p>inappropriate behavior Lorem ipsum dolor sit amet, consectetur.</p>
							<div class="meta-bottom d-flex justify-content-between">
								<p><span class="lnr lnr-heart"></span> 15 Likes</p>
								<p><span class="lnr lnr-bubble"></span> 02 Comments</p>
							</div>							 
						  </div>
						</div>
						<div class="single-travel media">
						  <image class="image-fluid d-flex  mr-3" src="image/t3.jpg" alt="">
						  <div class="dates">
						  	<span>20</span>
						  	<p>Dec</p>
						  </div>							  
						  <div class="media-body align-self-center">
						    <h4 class="mt-0"><a href="#">Addiction When Gambling
						    Becomes A Problem</a></h4>
						    <p>inappropriate behavior Lorem ipsum dolor sit amet, consectetur.</p>
							<div class="meta-bottom d-flex justify-content-between">
								<p><span class="lnr lnr-heart"></span> 15 Likes</p>
								<p><span class="lnr lnr-bubble"></span> 02 Comments</p>
							</div>							 
						  </div>
						</div>														
					</div>
					<div class="col-lg-6 travel-right">
						<div class="single-travel media pb-70">
						  <image class="image-fluid d-flex  mr-3" src="image/t2.jpg" alt="">
						  <div class="dates">
						  	<span>20</span>
						  	<p>Dec</p>
						  </div>							  
						  <div class="media-body align-self-center">
						    <h4 class="mt-0"><a href="#">Addiction When Gambling
						    Becomes A Problem</a></h4>
						    <p>inappropriate behavior Lorem ipsum dolor sit amet, consectetur.</p>
							<div class="meta-bottom d-flex justify-content-between">
								<p><span class="lnr lnr-heart"></span> 15 Likes</p>
								<p><span class="lnr lnr-bubble"></span> 02 Comments</p>
							</div>							 
						  </div>
						</div>
						<div class="single-travel media">
						  <image class="image-fluid d-flex  mr-3" src="image/t4.jpg" alt="">
						  <div class="dates">
						  	<span>20</span>
						  	<p>Dec</p>
						  </div>							  
						  <div class="media-body align-self-center">
						    <h4 class="mt-0"><a href="#">Addiction When Gambling
						    Becomes A Problem</a></h4>
						    <p>inappropriate behavior Lorem ipsum dolor sit amet, consectetur.</p>
							<div class="meta-bottom d-flex justify-content-between">
								<p><span class="lnr lnr-heart"></span> 15 Likes</p>
								<p><span class="lnr lnr-bubble"></span> 02 Comments</p>
							</div>							 
						  </div>
						</div>								
					</div>
					<a href="#" class="primary-btn load-more pbtn-2 text-uppercase mx-auto mt-60">Load More </a>		
				</div>
			</div>					
		</section>
		<!-- End travel Area -->
		<div class="tlinks">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
		<!-- Start fashion Area -->
		<section class="fashion-area section-gap" id="fashion">
			<div class="container">
				<div class="row d-flex justify-content-center">
					<div class="menu-content pb-70 col-lg-8">
						<div class="title text-center">
							<h1 class="mb-10">Fashion News This Week</h1>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore  et dolore magna aliqua.</p>
						</div>
					</div>
				</div>					
				<div class="row">
					<div class="col-lg-3 col-md-6 single-fashion">
						<image class="image-fluid" src="image/f1.jpg" alt="">
						<p class="date">10 Jan 2018</p>
						<h4><a href="#">Addiction When Gambling
						Becomes A Problem</a></h4>
						<p>
							inappropriate behavior ipsum dolor sit amet, consectetur.
						</p>
						<div class="meta-bottom d-flex justify-content-between">
							<p><span class="lnr lnr-heart"></span> 15 Likes</p>
							<p><span class="lnr lnr-bubble"></span> 02 Comments</p>
						</div>									
					</div>
					<div class="col-lg-3 col-md-6 single-fashion">
						<image class="image-fluid" src="image/f2.jpg" alt="">
						<p class="date">10 Jan 2018</p>
						<h4><a href="#">Addiction When Gambling
						Becomes A Problem</a></h4>
						<p>
							inappropriate behavior ipsum dolor sit amet, consectetur.
						</p>
						<div class="meta-bottom d-flex justify-content-between">
							<p><span class="lnr lnr-heart"></span> 15 Likes</p>
							<p><span class="lnr lnr-bubble"></span> 02 Comments</p>
						</div>									
					</div>
					<div class="col-lg-3 col-md-6 single-fashion">
						<image class="image-fluid" src="image/f3.jpg" alt="">
						<p class="date">10 Jan 2018</p>
						<h4><a href="#">Addiction When Gambling
						Becomes A Problem</a></h4>
						<p>
							inappropriate behavior ipsum dolor sit amet, consectetur.
						</p>
						<div class="meta-bottom d-flex justify-content-between">
							<p><span class="lnr lnr-heart"></span> 15 Likes</p>
							<p><span class="lnr lnr-bubble"></span> 02 Comments</p>
						</div>									
					</div>
					<div class="col-lg-3 col-md-6 single-fashion">
						<image class="image-fluid" src="image/f4.jpg" alt="">
						<p class="date">10 Jan 2018</p>
						<h4><a href="#">Addiction When Gambling
						Becomes A Problem</a></h4>
						<p>
							inappropriate behavior ipsum dolor sit amet, consectetur.
						</p>
						<div class="meta-bottom d-flex justify-content-between">
							<p><span class="lnr lnr-heart"></span> 15 Likes</p>
							<p><span class="lnr lnr-bubble"></span> 02 Comments</p>
						</div>									
					</div>	
					<a href="#" class="primary-btn load-more pbtn-2 text-uppercase mx-auto mt-60">Load More </a>						
				</div>
			</div>	
		</section>
		<!-- End fashion Area -->
		
		<!-- Start team Area -->
		<section class="team-area section-gap" id="team">
			<div class="container">
				<div class="row d-flex justify-content-center">
					<div class="menu-content pb-70 col-lg-8">
						<div class="title text-center">
							<h1 class="mb-10">About Blogger Team</h1>
							<p>Who are in extremely love with eco friendly system.</p>
						</div>
					</div>
				</div>						
				<div class="row justify-content-center d-flex align-items-center">
					<div class="col-lg-6 team-left">
						<p>
							inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially in the workplace. That’s why it’s crucial that, as women, our behavior on the job is beyond reproach. inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially in the workplace. That’s why it’s crucial that.
						</p>
						<p>
							inappropriate behavior is often laughed off as “boys will be boys,” women face higher conduct standards especially in the workplace. That’s why it’s crucial that, as women.
						</p>
					</div>
					<div class="col-lg-6 team-right d-flex justify-content-center">
						<div class="row active-team-carusel">
							<div class="single-team">
							    <div class="thumb">
							        <image class="image-fluid" src="image/team1.jpg" alt="">
							        <div class="align-items-center justify-content-center d-flex">
										<a href="#"><i class="fa fa-facebook"></i></a>
										<a href="#"><i class="fa fa-twitter"></i></a>
										<a href="#"><i class="fa fa-linkedin"></i></a>
							        </div>
							    </div>
							    <div class="meta-text mt-30 text-center">
								    <h4>Dora Walker</h4>
								    <p>Senior Core Developer</p>									    	
							    </div>
							</div>
							<div class="single-team">
							    <div class="thumb">
							        <image class="image-fluid" src="image/team2.jpg" alt="">
							        <div class="align-items-center justify-content-center d-flex">
										<a href="#"><i class="fa fa-facebook"></i></a>
										<a href="#"><i class="fa fa-twitter"></i></a>
										<a href="#"><i class="fa fa-linkedin"></i></a>
							        </div>
							    </div>
							    <div class="meta-text mt-30 text-center">
								    <h4>Lena Keller</h4>
								    <p>Creative Content Developer</p>			    	
							    </div>
							</div>													
						</div>
					</div>
				</div>
			</div>	
		</section>
		<!-- End team Area -->
		
		<s:include value="/jsp/footer.jsp"></s:include>		

		<script src="js/vendor/jquery-2.2.4.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
		<script src="js/vendor/bootstrap.min.js"></script>
		<script src="js/jquery.ajaxchimp.min.js"></script>
		<script src="js/parallax.min.js"></script>			
		<script src="js/owl.carousel.min.js"></script>		
		<script src="js/jquery.magnific-popup.min.js"></script>				
		<script src="js/jquery.sticky.js"></script>
		<script src="js/main.js"></script>	
		
	</body>
		<%-- <script type="text/javascript">
			$(window).load(function(){
				var imgurl = "${session.user.displayPicUrl}";
				if(imgurl!=null && imgurl!=""){
					alert(imgurl);
					$("#imgurl").Attr("src",imgurl);
				}
			});
		</script> --%>
</html>