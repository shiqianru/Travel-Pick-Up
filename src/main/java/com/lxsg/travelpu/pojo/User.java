package com.lxsg.travelpu.pojo;

public class User {
	private Integer id;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	private String username;
	private String password;
	private String introduce;
	private String displayPicUrl;
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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

}