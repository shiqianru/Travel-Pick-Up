<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- Start Header Area -->
		<header class="default-header">
			<nav class="navbar navbar-expand-lg navbar-light">
				<div class="container">
					  <a class="navbar-brand" href="./jsp/index.jsp">
					  	<image src="image/logo.png" alt="">
					  </a>
					  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					    <span class="navbar-toggler-icon"></span>
					  </button>

					  <div class="collapse navbar-collapse justify-content-end align-items-center" id="navbarSupportedContent">
					    <ul class="navbar-nav">
							<li><a href="#home">首页</a></li>
							<li><a href="attractions/getRecommend.action">推荐</a></li>
							<li><a href="#travel">广场</a></li>
							<li><a href="#fashion">fashion</a></li>
							<li class="dropdown">
								<a class="dropdown-toggle" data-toggle="dropdown">我的</a>
								<div class="dropdown-menu">
						        <a class="dropdown-item" href="post/getAllPost.action">主页</a>
						        <a class="dropdown-item" href="jsp/user/post.jsp">发帖</a>
						        <a class="dropdown-item" href="category.html">相册</a>
						      </div>
							</li>
							<!-- Dropdown -->
						    <li class="dropdown">
						      <a class="dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
						        Pages
						      </a>
						      <div class="dropdown-menu">
						        <a class="dropdown-item" href="single.html">Single</a>
						        <a class="dropdown-item" href="category.html">Category</a>
						        <a class="dropdown-item" href="search.html">Search</a>
						        <a class="dropdown-item" href="archive.html">Archive</a>
						        <a class="dropdown-item" href="generic.html">Generic</a>
						        <a class="dropdown-item" href="elements.html">Elements</a>
						      </div>
						    </li>
						    <li><a href="jsp/user/login.jsp" style="color: #11C2EE;">登录</a></li>	
						    <li><a href="jsp/user/regist.jsp" style="color: #11C2EE;">注册</a></li>							
					    </ul>
					  </div>						
				</div>
			</nav>
		</header>
		<!-- End Header Area -->