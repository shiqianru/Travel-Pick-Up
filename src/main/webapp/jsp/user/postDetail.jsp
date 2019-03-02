<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html lang="zxx" class="no-js">
    <head>
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
        <title>Blogger</title>

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
            <!--
            CSS
            ============================================= -->
            <link rel="stylesheet" href="css/linearicons.css">
            <link rel="stylesheet" href="css/font-awesome.min.css">
            <link rel="stylesheet" href="css/bootstrap.css">
            <link rel="stylesheet" href="css/owl.carousel.css">
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

           <s:include value="/jsp/header.jsp"></s:include>	

            <!-- Start top-section Area -->
            <section class="top-section-area section-gap">
                <div class="container">
                    <div class="row justify-content-between align-items-center d-flex">
                        <div class="col-lg-8 top-left">
                            <h1 class="text-white mb-20">Post Details</h1>
                            <ul>
                                <li><a href="index.html">Home</a><span class="lnr lnr-arrow-right"></span></li>
                                <li><a href="category.html">Category</a><span class="lnr lnr-arrow-right"></span></li>
                                <li><a href="single.html">Fashion</a></li>
                            </ul>
                        </div>
                    </div>
                </div>  
            </section>
            <!-- End top-section Area -->

    
    <!-- Start post Area -->
    <div class="post-wrapper pt-100">
        <!-- Start post Area -->
        <section class="post-area">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-8">
                        <div class="single-page-post">
                        	<s:if test="#session.imgUrl!=null">
                        		<div class="banner" id="b04">
								    <ul>
								    	<s:iterator value="#session.imgUrl" var="img">
								       		<li><img src="upload/${img.imageUrl }" alt=""  height="400"></li>
								    	</s:iterator>
								    </ul>
								    <a href="javascript:void(0);" class="unslider-arrow04 prev"><img class="arrow" id="al" src="image/arrowl.png" alt="prev" width="20" height="35"></a>
								    <a href="javascript:void(0);" class="unslider-arrow04 next"><img class="arrow" id="ar" src="image/arrowr.png" alt="next" width="20" height="37"></a>
								</div>
                        	</s:if>
                            <div class="top-wrapper ">
                                <div class="row d-flex justify-content-between">
                                    <h2 class="col-lg-8 col-md-12 text-uppercase">
                                        ${session.postDetail.postName }
                                    </h2>
                                </div>
                            </div>
                            <div class="tags">
                                <ul>
                                	<s:if test="#session.postDetail.postPoint1!=null && !#session.postDetail.postPoint1.isEmpty()">
                                		<li><a href="#">${session.postDetail.postPoint1 }</a></li>
                                	</s:if>
                                    <s:if test="#session.postDetail.postPoint2!=null && !#session.postDetail.postPoint2.isEmpty()">
                                		<li><a href="#">${session.postDetail.postPoint2 }</a></li>
                                	</s:if>
                                	<s:if test="#session.postDetail.postPoint3!=null && !#session.postDetail.postPoint3.isEmpty()">
                                		<li><a href="#">${session.postDetail.postPoint3 }</a></li>
                                	</s:if>
                                </ul>
                            </div>
                            <div class="single-post-content">
                            	<p>${session.postDetail.postContent }</p>
                            </div>
                            <div class="bottom-wrapper">
                                <div class="row">
                                    <div class="col-lg-4 single-b-wrap col-md-12">
                                    	<div style="float: left;">
                                    		<i id="like" class="like" aria-hidden="true" style=""></i>
                                    	</div>
                                    	<div style="float: left;margin-left: 10px;">
                                       		 <span id="likeCount">${session.likeCount }</span>人赞过
                                        </div>
                                    </div>
                                    <div class="col-lg-4 single-b-wrap col-md-12">
                                        <div style="float: left;">
                                    		<i id="message" class="message" aria-hidden="true"></i>
                                    	</div>
                                    	<div style="float: left;margin-left: 10px;">
                                       		 <a href="jsp/user/postDetail.jsp#comment" style="color: #777;"><span id="messageCount">${session.commentCount }</span>条评论</a>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 single-b-wrap col-md-12">
                                        <ul class="social-icons">
                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-behance" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <!-- Start nav Area -->
                            <section class="nav-area pt-50 pb-100">
                                <div class="container">
                                    <div class="row justify-content-between">
                                        <div class="col-sm-6 nav-left justify-content-start d-flex">
                                            <div class="thumb">
                                                <img src="image/prev.jpg" alt="">
                                            </div>
                                            <div class="details">
                                                <p>Prev Post</p>
                                                <h4 class="text-uppercase"><a href="#">A Discount Toner</a></h4>
                                            </div>
                                        </div>
                                        <div class="col-sm-6 nav-right justify-content-end d-flex">
                                            <div class="details">
                                                <p>Prev Post</p>
                                                <h4 class="text-uppercase"><a href="#">A Discount Toner</a></h4>
                                            </div>             
                                            <div class="thumb">
                                                <img src="image/next.jpg" alt="">
                                            </div>                         
                                        </div>
                                    </div>
                                </div>    
                            </section>
                            <!-- End nav Area -->
                            
                            <!-- Start comment-sec Area -->
                            <section class="comment-sec-area pt-80 pb-80" id="comment">
                                <div class="container">
                                    <div class="row flex-column">
                                        <h5 class="text-uppercase pb-80">${session.commentCount } Comments</h5>
                                        <br>
                                        <s:if test="#session.commList!=null">
                                        	<s:iterator value="#session.commList" var="comment">
                                        		<div class="comment-list">
		                                            <div class="single-comment justify-content-between d-flex">
		                                                <div class="user justify-content-between d-flex">
		                                                    <div class="thumb">
		                                                        <img width="50px;" src="${comment.user.displayPicUrl }" alt="">
		                                                    </div>
		                                                    <div class="desc">
		                                                        <h5><a href="#">${comment.user.username }</a></h5>
		                                                        <p class="date">${comment.commentTime }</p>
		                                                        <p class="comment">
		                                                            ${comment.commentContent }
		                                                        </p>
		                                                    </div>
		                                                </div>
		                                                <div class="reply-btn">
		                                                       <a href="" class="btn-reply text-uppercase">reply</a> 
		                                                </div>
		                                            </div>
		                                        </div>
                                        	</s:iterator>
                                        </s:if>
                                        
                                        <div class="comment-list left-padding">
                                            <div class="single-comment justify-content-between d-flex">
                                                <div class="user justify-content-between d-flex">
                                                    <div class="thumb">
                                                        <img src="image/asset/c2.jpg" alt="">
                                                    </div>
                                                    <div class="desc">
                                                        <h5><a href="#">Emilly Blunt</a></h5>
                                                        <p class="date">December 4, 2017 at 3:12 pm </p>
                                                        <p class="comment">
                                                            Never say goodbye till the end comes!
                                                        </p>
                                                    </div>
                                                </div>
                                                <div class="reply-btn">
                                                       <a href="" class="btn-reply text-uppercase">reply</a> 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>    
                            </section>
                            <!-- End comment-sec Area -->
                            
                            <!-- Start commentform Area -->
                            <section class="commentform-area  pb-120 pt-80 mb-100">
                            	<form id="commentForm">
                            		<div class="container">
	                                    <h5 class="text-uppercas pb-50">评论区</h5>
	                                    <div class="row flex-row d-flex">
	                                        <!-- <div class="col-lg-6">
	                                            <input name="name" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" class="common-input mb-20 form-control" required="" type="text">
	                                            <input name="email" placeholder="Enter your email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your email'" class="common-input mb-20 form-control" required="" type="email">
	                                            <input name="Subject" placeholder="Subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your Subject'" class="common-input mb-20 form-control" required="" type="text">
	
	                                        </div> -->
	                                        <div class="col-lg-6">
	                                            <textarea id="messText" class="form-control mb-10" name="message" placeholder="请输入您的评论" onfocus="this.placeholder = ''" onblur="this.placeholder = '请输入您的评论'" required=""></textarea>
	                                            <a id="submit" class="primary-btn mt-20" href="javascript:;">Comment</a>
	                                        </div>
	                                    </div>
	                                </div>
                            	</form>
                            </section>
                            <!-- End commentform Area -->
                            
                        </div>
                    </div>
                    <div class="col-lg-4 sidebar-area ">
                        <div class="single_widget search_widget">
                            <div id="imaginary_container"> 
                                <div class="input-group stylish-input-group">
                                    <input type="text" class="form-control"  placeholder="Search" >
                                    <span class="input-group-addon">
                                        <button type="submit">
                                            <span class="lnr lnr-magnifier"></span>
                                        </button>  
                                    </span>
                                </div>
                            </div> 
                        </div>

                        <div class="single_widget about_widget">
                            <img src="${session.userVO.displayPicUrl}" width="125px" alt="">
                            <h2 class="text-uppercase">${session.userVO.username }</h2>
                            <p>
                                ${session.userVO.introduce }
                            </p>
                            <div class="social-link">
                                <a href="#"><button class="btn"><i class="fa fa-facebook" aria-hidden="true"></i> Like</button></a>
                                <a href="#"><button class="btn"><i class="fa fa-twitter" aria-hidden="true"></i> follow</button></a>
                            </div>
                        </div>
                        <div class="single_widget cat_widget">
                            <h4 class="text-uppercase pb-20">post categories</h4>
                            <ul>
                                <li>
                                    <a href="#">Technology <span>37</span></a>
                                </li>
                                <li>
                                    <a href="#">Lifestyle <span>37</span></a>
                                </li>
                                <li>
                                    <a href="#">Fashion <span>37</span></a>
                                </li>
                                <li>
                                    <a href="#">Art <span>37</span></a>
                                </li>
                                <li>
                                    <a href="#">Food <span>37</span></a>
                                </li>
                                <li>
                                    <a href="#">Architecture <span>37</span></a>
                                </li>
                                <li>
                                    <a href="#">Adventure <span>37</span></a>
                                </li>                                
                            </ul>
                        </div>

                        <div class="single_widget recent_widget">
                            <h4 class="text-uppercase pb-20">Recent Posts</h4>
                            <div class="active-recent-carusel">
                                <div class="item">
                                    <img src="image/asset/slider.jpg" alt="">
                                    <p class="mt-20 title text-uppercase">Home Audio Recording <br>
                                    For Everyone</p>
                                    <p>02 Hours ago <span> <i class="fa fa-heart-o" aria-hidden="true"></i>
                                    06 <i class="fa fa-comment-o" aria-hidden="true"></i>02</span></p>    
                                </div>  
                                <div class="item">
                                    <img src="image/asset/slider.jpg" alt="">
                                    <p class="mt-20 title text-uppercase">Home Audio Recording <br>
                                    For Everyone</p>
                                    <p>02 Hours ago <span> <i class="fa fa-heart-o" aria-hidden="true"></i>
                                    06 <i class="fa fa-comment-o" aria-hidden="true"></i>02</span></p>    
                                </div>  
                                <div class="item">
                                    <img src="image/asset/slider.jpg" alt="">
                                    <p class="mt-20 title text-uppercase">Home Audio Recording <br>
                                    For Everyone</p>
                                    <p>02 Hours ago <span> <i class="fa fa-heart-o" aria-hidden="true"></i>
                                    06 <i class="fa fa-comment-o" aria-hidden="true"></i>02</span></p>    
                                </div>                                                                                            
                            </div>
                        </div>  


                        <div class="single_widget cat_widget">
                            <h4 class="text-uppercase pb-20">post archive</h4>
                            <ul>
                                <li>
                                    <a href="#">Dec'17 <span>37</span></a>
                                </li>
                                <li>
                                    <a href="#">Nov'17 <span>37</span></a>
                                </li>
                                <li>
                                    <a href="#">Oct'17 <span>37</span></a>
                                </li>
                                <li>
                                    <a href="#">Sept'17 <span>37</span></a>
                                </li>
                                <li>
                                    <a href="#">Aug'17 <span>37</span></a>
                                </li>
                                <li>
                                    <a href="#">Jul'17 <span>37</span></a>
                                </li>
                                <li>
                                    <a href="#">Jun'17 <span>37</span></a>
                                </li>                                
                            </ul>
                        </div> 
                        <div class="single_widget tag_widget">
                            <h4 class="text-uppercase pb-20">Tag Clouds</h4>
                            <ul>
                                <li><a href="#">Lifestyle</a></li>
                                <li><a href="#">Art</a></li>
                                <li><a href="#">Adventure</a></li>
                                <li><a href="#">Food</a></li>
                                <li><a href="#">Technology</a></li>
                                <li><a href="#">Fashion</a></li>
                                <li><a href="#">Adventure</a></li>
                                <li><a href="#">Food</a></li>
                                <li><a href="#">Technology</a></li>
                            </ul>
                        </div>                                                 
                    </div>
                </div>
            </div>    
        </section>
        <!-- End post Area -->  
    </div>
    <!-- End post Area -->
    
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
            <script src="js/unslider.min.js"></script>
        </body>
        
        <script type="text/javascript">
        $(document).ready(function(e) {
        	//判断当前用户是否赞过此帖子
        	var flag='${session.isLikeThisPost}';
        	if(flag!=null && flag=="Y"){
        		$("#like").attr("class","like_fill");
        	}else{
        		$(this).attr("class","like");
        	}
        	
        	//判断当前用户是否评论过此帖子
        	var flag1='${session.isCommentThisPost}';
        	if(flag1!=null && flag1=="Y"){
        		$("#message").attr("class","message_fill");
        	}else{
        		$(this).attr("class","message");
        	}
        	
        	//图片轮播图
            var unslider04 = $('#b04').unslider({
        		dots: true
        	}),
        	data04 = unslider04.data('unslider');
        	$('.unslider-arrow04').click(function() {
                var fn = this.className.split(' ')[1];
                data04[fn]();
            });
        	
        	//点赞或取消
            $("#like").click(function(){
            	var userId='${session.userVO.id}';
            	var postId='${session.postDetail.id}';
            	
            	var className=$(this).attr("class");
            	if(className=="like"){
            		$.ajax({
        				url:"post/laudPost.action",
        	            data:{"userId":userId,"postId":postId},
        	            async:false,
        	            type: "POST",
        	            dataType:"json",
        	            success: function(data)
        	                {
        	                   $("#likeCount").html(data);
        	                }
        			})
            		$(this).attr("class","like_fill");
            	}else if(className=="like_fill"){
            		$.ajax({
        				url:"post/cancellaudPost.action",
        	            data:{"userId":userId,"postId":postId},
        	            async:false,
        	            type: "POST",
        	            dataType:"json",
        	            success: function(data)
        	                {
        	                   $("#likeCount").html(data);
        	                }
        			})
            		$(this).attr("class","like");
            	}
            })
            /* $("#message").click(function(){
            	var className=$(this).attr("class");
            	if(className=="message"){
            		$(this).attr("class","message_fill");
            	}else if(className=="message_fill"){
            		$(this).attr("class","message");
            	}
            }) */
            
            //评论
            $("#submit").click(function(){
            	var userId='${session.userVO.id}';
            	var postId='${session.postDetail.id}';
            	
            	$.ajax({
    				url:"post/commentPost.action",
    	            data:$("#commentForm").serialize()+"&userId="+userId+"&postId="+postId,
    	            type: "POST",
    	            dataType:"json",
    	            async:false,//同步：意思是当有返回值以后才会进行后面的js程序。
    	            success: function(data)
    	                {
    	            		if(data=="1"){
        	            		window.location.href="http:localhost:8080/travelpu/post/getPostDetail.action?postId="+postId+"#comment"
    	            			$("#message").val('');
    	            		}
    	                }
    			})
            })
        });
        </script>
    </html>