package com.lxsg.travelpu.pojo;

public class CategoryUrl {
	
	private Integer ca_id;
	private String imageUrl;
	private User user;
	private Integer userId;
	private Integer postId;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getPostId() {
		return postId;
	}
	public void setPostId(Integer postId) {
		this.postId = postId;
	}
	private Post post;
	private String upTime;
	public String getUpTime() {
		return upTime;
	}
	public void setUpTime(String upTime) {
		this.upTime = upTime;
	}
	
	public Integer getCa_id() {
		return ca_id;
	}
	public void setCa_id(Integer ca_id) {
		this.ca_id = ca_id;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Post getPost() {
		return post;
	}
	public void setPost(Post post) {
		this.post = post;
	}

}
