package com.lxsg.travelpu.doman;

import java.util.List;

import com.lxsg.travelpu.pojo.Attractions;

public class CityVO {
	private Integer id;
	private String cityName;
	private String cityDiscrib;
	private List<Attractions> attrList;
	private String cityRaiders;
	public Integer getId() {
		return id;
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
