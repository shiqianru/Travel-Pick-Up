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
								<h2 class="text-white text-center">The Elements Page</h2>
								<p class="text-white">It won’t be a bigger problem to find one video game lover in your <br> neighbor. Since the introduction of Virtual Game.</p>
							</div>
						</div>
					</div>
				</div>
			</section>		
			<!-- End banner Area -->
			<!-- Start Sample Area -->
			<section class="sample-text-area">
				<div class="container">
					<h3 class="text-heading">Tip</h3>
					<p class="sample-text">
						可以通过点击标签寻找哦！
					</p>
				</div>
			</section>
			<!-- End Sample Area -->
			<!-- Start Button -->
			<section class="button-area" id="citySign">
				<div class="container border-top-generic">
					<h3 class="text-heading">城市</h3>
					<div class="button-group-area">
						<s:iterator value="#session.cityList" var="city">
							<a href="attractions/getAttrOfCity.action?id=${city.id }" class="genric-btn primary">${city.cityName }</a>
						</s:iterator>
					</div>
				</div>
			</section>
			<section class="button-area" id="attrSign">
				<div class="container border-top-generic">
					<h3 class="text-heading">景点</h3>
					<div class="button-group-area">
						<s:iterator value="#session.attrList" var="attr">
							<a href="attractions/getAttrDetail.action?viewTitle=${attr.viewTitle }" class="genric-btn primary">${attr.viewTitle }</a>
						</s:iterator>
					</div>
				</div>
			</section>
			<section class="button-area" id="foodSign">
				<div class="container border-top-generic">
					<h3 class="text-heading">美食</h3>
					<div class="button-group-area">
						<s:iterator value="#session.foodList" var="food">
							<a href="attractions/getFoodDetail.action?id=${food.id }" class="genric-btn primary">${food.foodName }</a>
						</s:iterator>
					</div>
				</div>
			</section>
			<!-- End Button -->


			<s:include value="/jsp/footer.jsp"></s:include> 	


			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
			<script src="js/vendor/bootstrap.min.js"></script>
			<script src="js/owl.carousel.min.js"></script>
			<script src="js/jquery.sticky.js"></script>
			<script src="js/jquery.nice-select.min.js"></script>			
			<script src="js/parallax.min.js"></script>
			<script src="js/jquery.magnific-popup.min.js"></script>
			<script src="js/main.js"></script>	
		</body>
		
		<script type="text/javascript">
		$("#logout").click(function(){
			window.location.href="http://localhost:8080/travelpu/user/logout.action"
		})
		</script>
	</html>