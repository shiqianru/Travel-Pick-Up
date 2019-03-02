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
        
    <style type="text/css">
		img{  
		    width: auto;  
		    height: auto;  
		    max-width: 100%;  
		    max-height: 100%;     
		}
		p{
		  word-wrap: break-word;
		  word-break: break-all;
		  overflow: hidden;
		}
		.citySpan a:hover{
			color:#80DEF6;
		}
	</style>
    </head>
    <body>

       <s:include value="/jsp/header.jsp"></s:include>

        <!-- Start top-section Area -->
        <section class="top-section-area section-gap">
            <div class="container">
                <div class="row justify-content-center align-items-center d-flex">
                    <div class="col-lg-8">
                        <div id="imaginary_container"> 
                            <div class="input-group stylish-input-group">
                                <input type="text" class="form-control"  placeholder="搜索" onfocus="this.placeholder = ''" onblur="this.placeholder = '搜索'" required="">
                                <span class="input-group-addon">
                                    <button type="submit">
                                        <span class="lnr lnr-magnifier"></span>
                                    </button>  
                                </span>
                            </div>
                        </div> 
                        <p class="mt-20 text-center text-white">169 results found for “Addictionwhen gambling”</p>
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
            <div class="row justify-content-center d-flex">
                <div class="col-lg-8">
                    <div class="post-lists search-list">
	                    <s:iterator value="#session.attractionList" var="attraction">
	                    	<div class="single-list flex-row d-flex" style="width: 700px;height: 250px;"><!-- 一个单元 -->
	                            <div class="thumb" style="width: 30%;height: 100%;">
	                                <img src="image/asset/l1.jpg" alt="" />
	                            </div>
	                            <div class="detail" style="width: 70%;height: 100%;padding-bottom: 20px;">
	                            	<div style="width: 100%;height: 20%;">
	                               		<a href="attractions/getAttrDetail.action?viewTitle=${attraction.viewTitle }"><h4 class="pb-20">${attraction.viewTitle }</h4></a>
	                                </div>
	                                <div style="width: 100%;height:50%;">
	                                	<p class="viewDiscrib">
		                                     ${attraction.viewDiscrib}
		                                </p>
	                                </div>
	                                
	                                <div id="view-label"  style="width: 100%;height: 30%;">
	                                	<s:if test="#attraction.viewPoint1 != null">
	                                		<div style="width: 90px;height: 40px;border: solid 1px #D5D5D5;float: left;margin-right: 10px;line-height:40px;text-align: center;">${attraction.viewPoint1 }</div>
	                                	</s:if>
	                                	<s:if test="#attraction.viewPoint2 != null">
	                                		<div style="width: 90px;height: 40px;border: solid 1px #D5D5D5;float: left;margin-right: 10px;line-height:40px;text-align: center;">${attraction.viewPoint2 }</div>
	                                	</s:if>
	                                	<s:if test="#attraction.viewPoint3 != null">
	                                		<div style="width: 90px;height: 40px;border: solid 1px #D5D5D5;float: left;margin-right: 10px;line-height:40px;text-align: center;">${attraction.viewPoint3 }</div>
	                                	</s:if>
	                                	<s:if test="#attraction.viewPoint4 != null">
	                                		<div style="width: 90px;height: 40px;border: solid 1px #D5D5D5;float: left;margin-right: 10px;line-height:40px;text-align: center;">${attraction.viewPoint4 }</div>
	                                	</s:if>
	                                	<s:if test="#attraction.viewPoint5 != null">
	                                		<div style="width: 90px;height: 40px;border: solid 1px #D5D5D5;float: left;margin-right: 10px;line-height:40px;text-align: center;">${attraction.viewPoint5 }</div>
	                                	</s:if>
	                                </div>
	                            </div>
	                        </div>
	                    </s:iterator>
                        <div class="justify-content-center d-flex">
                            <a class="text-uppercase primary-btn loadmore-btn mt-40 mb-60" href="#"> Load More Post</a>
                        </div>                                                                     
                    </div>
                      
                </div>
                <div class="col-lg-4 sidebar-area">
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

                    <div class="single_widget tag_widget">
                    	<div id="citySpan" style="width: 100%;height: 50%;">
                    		<div class="citySpan" style="width: 100%;height: 20%;">
                    			<h4 class="text-uppercase pb-20">城市(<a href="attractions/getAllSigns.action">更多</a>)</h4>
                    		</div>
                    		<div style="width: 100%;height: 80%;">
	                    		<ul>
		                            <li><a href="#">北京</a></li>
		                            <li><a href="#">上海</a></li>
		                            <li><a href="#">杭州</a></li>
		                            <li><a href="#">西藏</a></li>
		                            <li><a href="#">武汉</a></li>
		                            <li><a href="#">湖南</a></li>
		                            <li><a href="#">台湾</a></li>
		                            <li><a href="#">新疆</a></li>
		                            <li><a href="#">成都</a></li>
		                        </ul>
                    		</div>
	                       
                    	</div>
                        <div id="attractionSpan" style="width: 100%;height: 50%;">
                    		<h4 class="text-uppercase pb-20">景点</h4>
	                        <ul>
	                            <li><a href="#">北京</a></li>
	                            <li><a href="#">上海</a></li>
	                            <li><a href="#">杭州</a></li>
	                            <li><a href="#">西藏</a></li>
	                            <li><a href="#">武汉</a></li>
	                            <li><a href="#">湖南</a></li>
	                            <li><a href="#">台湾</a></li>
	                            <li><a href="#">新疆</a></li>
	                            <li><a href="#">成都</a></li>
	                        </ul>
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
                                <image src="image/asset/slider.jpg" alt="">
                                <p class="mt-20 title text-uppercase">Home Audio Recording <br>
                                For Everyone</p>
                                <p>02 Hours ago <span> <i class="fa fa-heart-o" aria-hidden="true"></i>
                                06 <i class="fa fa-comment-o" aria-hidden="true"></i>02</span></p>    
                            </div>  
                            <div class="item">
                                <image src="image/asset/slider.jpg" alt="">
                                <p class="mt-20 title text-uppercase">Home Audio Recording <br>
                                For Everyone</p>
                                <p>02 Hours ago <span> <i class="fa fa-heart-o" aria-hidden="true"></i>
                                06 <i class="fa fa-comment-o" aria-hidden="true"></i>02</span></p>    
                            </div>  
                            <div class="item">
                                <image src="image/asset/slider.jpg" alt="">
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
    </body>
    <script type="text/javascript">
    $(window).load(function(){
    	var content=$(".viewDiscrib");
    	$(".viewDiscrib").each(function(){
    	   if($(this).text().length>180){
    		   $(this).text($(this).text().substring(0,180)+"...");
	       	}
    	});
    	
    })
   
    </script>
</html>