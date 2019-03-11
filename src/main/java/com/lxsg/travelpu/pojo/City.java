package com.lxsg.travelpu.pojo;

import java.util.List;

public class City {
	
	private Integer id;
	private String cityName;
	private String cityDiscrib;
	private List<Attractions> attrList;
	private String cityRaiders;
	private Integer cityScore;
	private String cityPic;
	
	public String getCityPic() {
		return cityPic;
	}
	public void setCityPic(String cityPic) {
		this.cityPic = cityPic;
	}
	public Integer getId() {
		return id;
	}
	public Integer getCityScore() {
		return cityScore;
	}
	public void setCityScore(Integer cityScore) {
		this.cityScore = cityScore;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getCityDiscrib() {
		return cityDiscrib;
	}
	public void setCityDiscrib(String cityDiscrib) {
		this.cityDiscrib = cityDiscrib;
	}
	public List<Attractions> getAttrList() {
		return attrList;
	}
	public void setAttrList(List<Attractions> attrList) {
		this.attrList = attrList;
	}
	public String getCityRaiders() {
		return cityRaiders;
	}
	public void setCityRaiders(String cityRaiders) {
		this.cityRaiders = cityRaiders;
	}

}
