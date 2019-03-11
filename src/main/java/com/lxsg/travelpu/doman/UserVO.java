package com.lxsg.travelpu.doman;

import java.util.List;

public class UserVO {

	private String username;
	private String password;
	private Integer id;
	private String introduce;
	private String displayPicUrl;
	private String registTime;
	private int fansCount;
	private int focusCount;
	private int likeCount;
	private int commentCount;
	public int getLikeCount() {
		return likeCount;
	}
	public void setLikeCount(int likeCount) {
		this.likeCount = likeCount;
	}
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	public int getFansCount() {
		return fansCount;
	}
	public void setFansCount(int fansCount) {
		this.fansCount = fansCount;
	}
	public int getFocusCount() {
		return focusCount;
	}
	public void setFocusCount(int focusCount) {
		this.focusCount = focusCount;
	}
	public String getRegistTime() {
		return registTime;
	}
	public void setRegistTime(String registTime) {
		this.registTime = registTime;
	}
	private List<UserVO> fansList;
	private List<UserVO> focusList;
	
	public List<UserVO> getFansList() {
		return fansList;
	}
	public void setFansList(List<UserVO> fansList) {
		this.fansList = fansList;
	}
	public List<UserVO> getFocusList() {
		return focusList;
	}
	public void setFocusList(List<UserVO> focusList) {
		this.focusList = focusList;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getDisplayPicUrl() {
		return displayPicUrl;
	}
	public void setDisplayPicUrl(String displayPicUrl) {
		this.displayPicUrl = displayPicUrl;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
}
