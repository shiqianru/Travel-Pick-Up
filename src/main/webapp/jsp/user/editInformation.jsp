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
		
	<style type="text/css">
		img{  
		    width: auto;  
		    height: auto;  
		    max-width: 100%;  
		    max-height: 100%;     
		}
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
							<h2 class="text-white text-center">旅行拾光</h2>
							<p class="text-white">心的旅行，爱的收获。</p>
						</div>
					</div>
				</div>
			</div>
		</section>		
		<!-- End banner Area -->
		
		<div class="whole-wrap pb-100" align="center">
			<div class="section-top-border" style="width: 80%;">
				<div>
					<div class="col-lg-8 col-md-8">
						<h3 class="mb-30">基本信息</h3>
						<form id="editForm" action="user/editSubmit.action" method="post"  enctype="multipart/form-data">
							<div class="mt-10" align="left">
								<div style="font-weight: bold;color: #000;float: left;margin-right: 10px;">头像</div>
								<input id="myfile" type="file" name="myfile" value="${session.userVO.displayPicUrl }">
								<img style="width: 150px;" alt="" src="${session.userVO.displayPicUrl }">
							</div>
							<div class="mt-10" align="left">
								<div style="font-weight: bold;color: #000;float: left;margin-right: 10px;">用户名</div><i class="edit" style="background-image: url(image/edit.png);width: 20px;height: 20px;float: left;display:block;background-repeat: no-repeat;background-position: center;background-size: cover;"></i>
								<input id="username" value="${session.userVO.username }" type="text" name="username" placeholder="用户名" onfocus="this.placeholder = ''" onblur="this.placeholder = '用户名'" required class="single-input" readonly="readonly">
								<span id="unameTip" style="font-size: 12px;color: red;margin-bottom: 20px;display:none;">用户名应小于20字</span>
							</div>
							<div class="mt-10" align="left">
								<div style="font-weight: bold;color: #000;float: left;margin-right: 10px;">个性签名</div><i class="edit" style="background-image: url(image/edit.png);width: 20px;height: 20px;float: left;display:block;background-repeat: no-repeat;background-position: center;background-size: cover;"></i>
								<textarea id="introduce" class="single-textarea" placeholder="个性签名" onfocus="this.placeholder = ''" onblur="this.placeholder = '个性签名'" required readonly="readonly">${session.userVO.introduce }</textarea>
								
							</div>
							<div class="mt-10" align="center"><a id="submit" href="javascript:;" class="genric-btn primary">确认修改</a></div>
						</form>
					</div>
				</div>
			</div>
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
	<script type="text/javascript">
	$(function(){
		var errormsg='${session.errormsg}';
		if(errormsg!=null && errormsg!=""){
			alert(errormsg);
		}
	})
	$(".edit").each(function(){
		$(this).click(function(){
			var edit=$(this).next().attr("readonly");
			if(edit=="readonly"){
				$(this).next().removeAttr('readonly');
			}
		})
	})
	
	/* var inputlabelBox = document.querySelector('.inputlabelBox');
	var my_file = document.querySelector('#my_file');
	var img = document.querySelector('#display'); 
	 
	my_file.onchange = function(){       
		var file = this.files[0];
        var reader = new FileReader();
        reader.readAsDataURL(file);

        reader.onload = function(){
               img.src = this.result;
        }
	} */
	function checkUserName(){
		var uname=$("#username").val();
		if(uname==null || uname==""){
			$("#unameTip").css("color","red").html("请输入用户名").show();
			return false;
		}else if(uname.length>20){
			$("#unameTip").css("color","red").html("用户名应小于20个字").show();
			return false;
		}else{
			$.ajax({
				url:"user/isNameExist.action",
	            data:{"username":uname},
	            async:false,
	            type: "POST",
	            dataType:"json",
	            success: function(data)
	                {
	                    if(data=="1"){
	                    	$("#unameTip").css("color","red").html("用户名已存在！！！");
	                    }else{
	                    	$("#unameTip").css("color","green").html("用户名可以使用！");
	                    }
	                }
			})
			return true;
		}
	}
	$("#submit").click(function(){
		var b1=checkUserName();
		
		if(b1==true){
			$("#editForm").submit();
		}else{
			alert("信息有误");
			return false;
		}
		
	})
	
	
	$("#logout").click(function(){
			window.location.href="http://localhost:8080/travelpu/user/logout.action"
		})
	</script>
</html>