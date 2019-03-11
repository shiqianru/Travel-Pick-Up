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
	<link rel="shortcut icon" href="img/elements/fav.png">
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
		<!-- Start Align Area -->
		<div class="whole-wrap pb-100">
			<div class="container">
				<div class="section-top-border">
					<h3>我的相册</h3>
					<div class="row gallery-item">
						<s:if test="#session.currUserAlbumList!=null && !#session.currUserAlbumList.isEmpty()">
							<s:iterator value="#session.currUserAlbumList" var="categoryVO">
								<div class="col-md-4">
									<a href="upload/${categoryVO.imageUrl }" class="img-pop-up"><div class="single-gallery-image" style="background: url(upload/${categoryVO.imageUrl });"></div></a>
								</div>
							</s:iterator>
						</s:if>
						<s:else>
							<div class="col-md-4" style="padding: 20px;">
								快去<a href="jsp/user/post.jsp">发帖</a>上传图片吧！
							</div>
						</s:else>
					</div>
				</div>
			</div>
		</div>
		<!-- End Align Area -->


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
		<script type="text/javascript">
		$("#logout").click(function(){
			window.location.href="http://localhost:8080/travelpu/user/logout.action"
		})
		</script>
	</body>
</html>