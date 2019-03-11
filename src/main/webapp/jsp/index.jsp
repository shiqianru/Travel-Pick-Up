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
					<s:if test="#session.userVO!=null">
						<div class="head-bottom-meta d-flex justify-content-between align-items-end col-lg-12">
							<div class="col-lg-6 flex-row d-flex meta-left no-padding">
								<p><span class="lnr lnr-heart"></span> ${userVO.likeCount } 赞</p>
								<p><span class="lnr lnr-bubble"></span> ${userVO.commentCount } 评论</p>
							</div>
							<a href="post/getAllPost.action" class="col-lg-6 flex-row d-flex meta-right no-padding justify-content-end">
								<div class="col-lg-6 flex-row d-flex meta-right no-padding justify-content-end">
								<div class="user-meta">
									<h4 class="text-white"><s:property value="#session.userVO.username"/></h4>
									<s:if test="#session.userVO.introduce==null">
										<p>快来编辑你的个性签名吧！</p>
									</s:if>
									<s:else>
										<p>${userVO.introduce }</p>
									</s:else>
								</div>
								<img id="imgurl" style="width: 60px;height: 60px;" class="image-fluid user-image" src="${session.userVO.displayPicUrl}" alt="">
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
							<h1 class="mb-10">热门推荐</h1>
						</div>
					</div>
				</div>						
				<div class="active-cat-carusel">
					<s:if test="#session.indexAttrList!=null && !#session.indexAttrList.isEmpty()">
						<s:iterator value="#session.indexAttrList" var="attr">
							<div class="item single-cat">
								<img width="200px" src="${attr.viewImgUrl }" alt="" style="padding-bottom: 50px;">
								<h4 style="margin-top: 30px;"><a href="attractions/getAttrDetail.action?viewTitle=${attr.viewTitle }">${attr.viewTitle }</a></h4>
							</div>
						</s:iterator>
					</s:if>
					<s:else></s:else>
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
								<h1 class="mb-10">最新动态</h1>
							</div>
						</div>
					</div>						
					<div class="row">
						<div class="col-lg-6 travel-left">
							<div class="single-travel media pb-70">
							  <s:if test="#session.indexPostList[0].homePageImgUrlVO != null">
                               		 <img height="150px" src="upload/${session.indexPostList[0].homePageImgUrlVO.imageUrl }" alt="">
                                </s:if>
                                <s:else>
                                	 <img height="150px" src="image/hpalt.png" alt="">
                                </s:else>
							  <div class="dates">
							  	<span class="postTime">${session.indexPostList[0].postTime }</span>
							  </div>
							  <div class="media-body align-self-center" style="margin-left: 20px;">
							    <a href="post/getPostDetail.action?postId=${session.indexPostList[0].id }"><h4 class="pb-20">${session.indexPostList[0].postName }</h4></a>
							    <p>${session.indexPostList[0].postContent }</p>
								<div class="meta-bottom d-flex justify-content-between">
									<p class="footer pt-20">
                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                    <a href="#">${session.indexPostList[0].likeCount } 赞</a>     <i class="ml-20 fa fa-comment-o" aria-hidden="true"></i> <a href="#">${session.indexPostList[0].commentCount } 评论</a>
                                    </p>
								</div>							 
							  </div>
							</div>
							<div class="single-travel media">
							 <s:if test="#session.indexPostList[1].homePageImgUrlVO != null">
                               		 <img height="150px" src="upload/${session.indexPostList[1].homePageImgUrlVO.imageUrl }" alt="">
                                </s:if>
                                <s:else>
                                	 <img height="150px" src="image/hpalt.png" alt="">
                                </s:else>
							  <div class="dates">
							  	<span class="postTime">${session.indexPostList[1].postTime }</span>
							  </div>							  
							  <div class="media-body align-self-center" style="margin-left: 20px;">
							    <a href="post/getPostDetail.action?postId=${session.indexPostList[1].id }"><h4 class="pb-20">${session.indexPostList[1].postName }</h4></a>
							    <p>${session.indexPostList[1].postContent }</p>
								<div class="meta-bottom d-flex justify-content-between">
									<p class="footer pt-20">
                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                    <a href="#">${session.indexPostList[1].likeCount } 赞</a>     <i class="ml-20 fa fa-comment-o" aria-hidden="true"></i> <a href="#">${session.indexPostList[1].commentCount } 评论</a>
                                    </p>
								</div>							 
							  </div>
							</div>														
						</div>
						<div class="col-lg-6 travel-right">
							<div class="single-travel media pb-70">
							  <s:if test="#session.indexPostList[2].homePageImgUrlVO != null">
                               		 <img height="150px" src="upload/${session.indexPostList[2].homePageImgUrlVO.imageUrl }" alt="">
                                </s:if>
                                <s:else>
                                	 <img height="150px" src="image/hpalt.png" alt="">
                                </s:else>
							  <div class="dates">
							  	<span class="postTime">${session.indexPostList[2].postTime }</span>
							  </div>							  
							  <div class="media-body align-self-center" style="margin-left: 20px;">
							    <a href="post/getPostDetail.action?postId=${session.indexPostList[2].id }"><h4 class="pb-20">${session.indexPostList[2].postName }</h4></a>
							    <p>${session.indexPostList[2].postContent }</p>
								<div class="meta-bottom d-flex justify-content-between">
									<p class="footer pt-20">
                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                    <a href="#">${session.indexPostList[2].likeCount } 赞</a>     <i class="ml-20 fa fa-comment-o" aria-hidden="true"></i> <a href="#">${session.indexPostList[2].commentCount } 评论</a>
                                    </p>
								</div>							 
							  </div>
							</div>
							<div class="single-travel media">
								<s:if test="#session.indexPostList[3].homePageImgUrlVO != null">
                               		 <img height="150px" src="upload/${session.indexPostList[3].homePageImgUrlVO.imageUrl }" alt="">
                                </s:if>
                                <s:else>
                                	 <img height="150px" src="image/hpalt.png" alt="">
                                </s:else>
							  <div class="dates">
							  	<span class="postTime">${session.indexPostList[3].postTime }</span>
							  </div>							  
							  <div class="media-body align-self-center" style="margin-left: 20px;">
							    <a href="post/getPostDetail.action?postId=${session.indexPostList[3].id }"><h4 class="pb-20">${session.indexPostList[3].postName }</h4></a>
							    <p>${session.indexPostList[3].postContent }</p>
								<div class="meta-bottom d-flex justify-content-between">
									<p class="footer pt-20">
                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                    <a href="#">${session.indexPostList[3].likeCount } 赞</a>     <i class="ml-20 fa fa-comment-o" aria-hidden="true"></i> <a href="#">${session.indexPostList[3].commentCount } 评论</a>
                                    </p>
								</div>							 
							  </div>
							</div>								
						</div>
						<a href="post/square.action" class="primary-btn load-more pbtn-2 text-uppercase mx-auto mt-60">更多</a>		
					</div>
				</div>					
			</section>
			<!-- End travel Area -->

		<div class="tlinks">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>
		
		
		
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
		<script type="text/javascript">
	    $(window).load(function(){
	    	$("#logout").click(function(){
				window.location.href="http://localhost:8080/travelpu/user/logout.action"
			})
			
			
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
	   
			/* $(window).load(function(){
				var imgurl = "${session.user.displayPicUrl}";
				if(imgurl!=null && imgurl!=""){
					alert(imgurl);
					$("#imgurl").Attr("src",imgurl);
				}
			}); */
		</script>
</html>