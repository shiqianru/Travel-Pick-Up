package com.lxsg.travelpu.doman;

public class CategoryUrlVO {
	private Integer ca_id;
	private String imageUrl;
	private UserVO userVO;
	private PostVO postVO;
	private String upTime;
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
	private Integer userId;
	private Integer postId;
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
	public UserVO getUserVO() {
		return userVO;
	}
	public void setUserVO(UserVO userVO) {
		this.userVO = userVO;
	}
	public PostVO getPostVO() {
		return postVO;
	}
	public void setPostVO(PostVO postVO) {
		this.postVO = postVO;
	}
	
}
