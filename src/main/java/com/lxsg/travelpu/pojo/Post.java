package com.lxsg.travelpu.pojo;

import java.util.List;

import com.lxsg.travelpu.doman.CategoryUrlVO;

public class Post {
	
	private Integer id;
	private String postName;
	private String postTime;
	private String postContent;
	private String postPoint1;
	private String postPoint2;
	private String postPoinr3;
	private User user;
	private Integer userId;
	private List<CategoryUrl> categoryUrl;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public List<CategoryUrl> getCategoryUrl() {
		return categoryUrl;
	}
	public void setCategoryUrl(List<CategoryUrl> categoryUrl) {
		this.categoryUrl = categoryUrl;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getPostName() {
		return postName;
	}
	public void setPostName(String postName) {
		this.postName = postName;
	}
	public String getPostTime() {
		return postTime;
	}
	public void setPostTime(String postTime) {
		this.postTime = postTime;
	}
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	public String getPostPoint1() {
		return postPoint1;
	}
	public void setPostPoint1(String postPoint1) {
		this.postPoint1 = postPoint1;
	}
	public String getPostPoint2() {
		return postPoint2;
	}
	public void setPostPoint2(String postPoint2) {
		this.postPoint2 = postPoint2;
	}
	public String getPostPoinr3() {
		return postPoinr3;
	}
	public void setPostPoinr3(String postPoinr3) {
		this.postPoinr3 = postPoinr3;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

}
