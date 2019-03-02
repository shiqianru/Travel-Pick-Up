package com.lxsg.travelpu.doman;

public class LikeVO {

	private Integer id;
	private Integer userId;
	private Integer postId;
	private Integer commentId;
	private String likeTime;
	
	private UserVO user;
	private PostVO post;
	private CommentVO comment;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
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
	public Integer getCommentId() {
		return commentId;
	}
	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}
	public String getLikeTime() {
		return likeTime;
	}
	public void setLikeTime(String likeTime) {
		this.likeTime = likeTime;
	}
	public UserVO getUser() {
		return user;
	}
	public void setUser(UserVO user) {
		this.user = user;
	}
	public PostVO getPost() {
		return post;
	}
	public void setPost(PostVO post) {
		this.post = post;
	}
	public CommentVO getComment() {
		return comment;
	}
	public void setComment(CommentVO comment) {
		this.comment = comment;
	}
	
	
}
