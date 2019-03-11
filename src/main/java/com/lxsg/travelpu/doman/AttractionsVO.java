package com.lxsg.travelpu.doman;

import java.util.List;

public class AttractionsVO {
	private Integer id;
	private String viewTitle;
	private String viewDiscrib;
	private String viewPoint1;
	private String viewPoint2;
	private String viewPoint3;
	private String viewPoint4;
	private String viewPoint5;
	private String viewContent;
	private String foodContent;
	private String raiderContent;
	private Integer basicScore;
	private Integer foodScore;
	private String viewImgUrl;
	public String getViewImgUrl() {
		return viewImgUrl;
	}
	public void setViewImgUrl(String viewImgUrl) {
		this.viewImgUrl = viewImgUrl;
	}
	private List<FoodVO> foodList;
	
	public List<FoodVO> getFoodList() {
		return foodList;
	}
	public void setFoodList(List<FoodVO> foodList) {
		this.foodList = foodList;
	}
	public String getViewDiscrib() {
		return viewDiscrib;
	}
	public void setViewDiscrib(String viewDiscrib) {
		this.viewDiscrib = viewDiscrib;
	}
	public String getViewPoint1() {
		return viewPoint1;
	}
	public void setViewPoint1(String viewPoint1) {
		this.viewPoint1 = viewPoint1;
	}
	public String getViewPoint2() {
		return viewPoint2;
	}
	public void setViewPoint2(String viewPoint2) {
		this.viewPoint2 = viewPoint2;
	}
	public String getViewPoint3() {
		return viewPoint3;
	}
	public void setViewPoint3(String viewPoint3) {
		this.viewPoint3 = viewPoint3;
	}
	public String getViewPoint4() {
		return viewPoint4;
	}
	public void setViewPoint4(String viewPoint4) {
		this.viewPoint4 = viewPoint4;
	}
	public String getViewPoint5() {
		return viewPoint5;
	}
	public void setViewPoint5(String viewPoint5) {
		this.viewPoint5 = viewPoint5;
	}
	public String getViewContent() {
		return viewContent;
	}
	public void setViewContent(String viewContent) {
		this.viewContent = viewContent;
	}
	public String getFoodContent() {
		return foodContent;
	}
	public void setFoodContent(String foodContent) {
		this.foodContent = foodContent;
	}
	public String getRaiderContent() {
		return raiderContent;
	}
	public void setRaiderContent(String raiderContent) {
		this.raiderContent = raiderContent;
	}
	public Integer getBasicScore() {
		return basicScore;
	}
	public void setBasicScore(Integer basicScore) {
		this.basicScore = basicScore;
	}
	public Integer getFoodScore() {
		return foodScore;
	}
	public void setFoodScore(Integer foodScore) {
		this.foodScore = foodScore;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getViewTitle() {
		return viewTitle;
	}
	public void setViewTitle(String viewTitle) {
		this.viewTitle = viewTitle;
	}
	
}
