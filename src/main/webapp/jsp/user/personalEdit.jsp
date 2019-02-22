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
	<title>Travel Pick Up</title>

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
		
		<div class="whole-wrap pb-100" align="center">
			<form action="" method="post"  enctype="multipart/form-data">
				<div style="width:30%;">
					<div id="profilepic_div" align="left" style="margin-top: 10px;">
						<span style="font-weight: bold;font-size: 14px;color: #000;">头&nbsp;&nbsp;像</span><br>
						<input type="file" name="file" style="margin-top: 10px;margin-bottom: 10px;">
						<!-- <a href="">
							<img alt="" src="image/team2.jpg" width="100px" height="100px" style="margin-bottom: 20px;margin-top: 10px;">
						</a> -->
					</div>
					<div id="username_div" align="left">
						<span style="font-weight: bold;font-size: 14px;color: #000;margin-bottom: 20px;">用户名</span><br>
						<input type="text" style="height: 35px;margin-top: 10px;width: 500px;" id="username" name="username">
					</div>
					<div id="password_div" align="left">
						<span style="font-weight: bold;font-size: 14px;color: #000;margin-bottom: 20px;">密&nbsp;&nbsp;码</span><br>
						<input type="password" style="height: 35px;margin-top: 10px;margin-bottom:10px;width: 500px;" id="password" name="password">
					</div>
					<div id="introduce_div" align="left">
						<span style="font-weight: bold;font-size: 14px;color: #000;margin-bottom: 20px;">个性签名</span><br>
						<textarea rows="10" cols="68" id="introduce" name="introduce"></textarea>
					</div>
					<div id="button_div" align="center">
						<input type="button" value="提交" style="width: 300px;height: 40px;color: #FFF;background-color: #11C2EE;border: none;margin-top: 20px;">
					</div>
				</div>
			</form>
		</div>


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
</html>