package com.lxsg.travelpu.doman;

import java.util.List;

import com.lxsg.travelpu.pojo.User;

public class PostVO {
	private Integer id;
	private String postName;
	private String postTime;
	private String postContent;
	private String postPoint1;
	private String postPoint2;
	private String postPoint3;
	private UserVO userVO;
	private Integer userId;
	private CategoryUrlVO homePageImgUrlVO;
	private List<CategoryUrlVO> categoryUrl;
	private List<LikeVO> likeList;
	private int likeCount;
	private List<CommentVO> commentList;
	private int commentCount;

	public List<CommentVO> getCommentList() {
		return commentList;
	}
	public void setCommentList(List<CommentVO> commentList) {
		this.commentList = commentList;
	}
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	public List<LikeVO> getLikeList() {
		return likeList;
	}
	public void setLikeList(List<LikeVO> likeList) {
		this.likeList = likeList;
	}
	public int getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}
	public CategoryUrlVO getHomePageImgUrlVO() {
		return homePageImgUrlVO;
	}
	public void setHomePageImgUrlVO(CategoryUrlVO homePageImgUrlVO) {
		this.homePageImgUrlVO = homePageImgUrlVO;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public List<CategoryUrlVO> getCategoryUrl() {
		return categoryUrl;
	}
	public void setCategoryUrl(List<CategoryUrlVO> categoryUrl) {
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
	
	public String getPostPoint3() {
		return postPoint3;
	}
	public void setPostPoint3(String postPoint3) {
		this.postPoint3 = postPoint3;
	}
	public UserVO getUserVO() {
		return userVO;
	}
	public void setUserVO(UserVO userVO) {
		this.userVO = userVO;
	}
	
}
