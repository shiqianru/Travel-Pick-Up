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
		</head>
		<body>
			<!-- Start banner Area -->
			<section class="generic-banner relative">
			 <s:include value="/jsp/header.jsp"></s:include>				
				<div class="container">
					<div class="row height align-items-center justify-content-center">
						<div class="col-lg-10">
							<div class="generic-banner-content">
								<h2 class="text-white text-center">The Generic Page</h2>
								<p class="text-white">It won’t be a bigger problem to find one video game lover in your <br> neighbor. Since the introduction of Virtual Game.</p>
							</div>							
						</div>
					</div>
				</div>
			</section>		
			<!-- End banner Area -->
		
		<!-- About Generic Start -->
		<div class="main-wrapper">

			<!-- Start fashion Area -->
			<section class="fashion-area section-gap" id="fashion">
				<div class="container">					
					<div class="row">
						<s:if test="#session.relaPostList!=null && !#session.relaPostList.isEmpty()">
							<s:iterator value="#session.relaPostList" var="post">
								<div class="col-lg-3 col-md-6 single-fashion" style="width: 150px;">
										<s:if test="#post.homePageImgUrlVO != null">
			                           		 <img height="80px" class="img-fluid" src="upload/${post.homePageImgUrlVO.imageUrl}" alt="">
			                            </s:if>
			                            <s:else>
			                            	 <img height="80px" src="image/hpalt.png" alt="">
			                            </s:else>
									
									<h4><a href="post/getPostDetail.action?postId=${post.id }">${post.postName }</a></h4>
									<p>
										${post.postName }
									</p>
								</div>
							</s:iterator>
						</s:if>
					</div>
				</div>	
			</section>
			<!-- End fashion Area -->			

			<!-- Start Generic Area -->
			<section class="about-generic-area pb-100">
				<div class="container border-top-generic">
					<h3 class="about-title mb-30">${session.attrDetail.viewTitle }</h3>
					<div class="row">
						<div class="col-md-12">
							<span>简介：</span>
							<div class="img-text">
								${session.attrDetail.viewDiscrib }
							</div>
						</div>
						<div class="col-lg-12" style="margin-top: 30px;">
							${session.attrDetail.viewContent }
						</div>
						<div class="col-lg-12" style="margin-top: 30px;">
							<span style="color:#000;"><b>美食：</b></span>
							<s:iterator value="#session.attrDetail.foodList" var="food">
								<a href="attractions/getFoodDetail.action?id=${food.id }">${food.foodName }</a>
							</s:iterator>
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
	</body>
	<script type="text/javascript">
		$(window).load(function(){
			/* alert($(".col-lg-12").html()); */
			var content=$(".postContent");
	    	$(".postContent").each(function(){
	    	   if($(this).text().length>180){
	    		   $(this).text($(this).text().substring(0,180)+"...");
		       	}
	    	});
	    	
	    	$('.postTime').each(function(){
	     	   var postTime=$(this).text().split(' ');
	     	   $(this).text("");
	     	   $(this).append(postTime[1],"<br/>",postTime[0]);
	    	})
	    	
			$("#logout").click(function(){
				window.location.href="http://localhost:8080/travelpu/user/logout.action"
			})
		})
	</script>
</html>