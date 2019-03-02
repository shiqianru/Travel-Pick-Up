package com.lxsg.travelpu.doman;

public class CommentVO {
	private Integer c_id;
	private Integer userId;
	private Integer postId;
	private Integer commentId;
	private String commentTime;
	private String commentContent;
	
	private UserVO user;
	private PostVO post;
	private CommentVO comment;
	
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public Integer getC_id() {
		return c_id;
	}
	public void setC_id(Integer c_id) {
		this.c_id = c_id;
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
	public String getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
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
