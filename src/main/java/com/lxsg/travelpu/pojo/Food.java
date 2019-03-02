package com.lxsg.travelpu.pojo;

public class Food {
	
	private Integer id;
	private String foodName;
	private String foodImgUrl;
	private String foodDiscrib;
	private Attractions attraction;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFoodName() {
		return foodName;
	}
	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	public String getFoodImgUrl() {
		return foodImgUrl;
	}
	public void setFoodImgUrl(String foodImgUrl) {
		this.foodImgUrl = foodImgUrl;
	}
	public String getFoodDiscrib() {
		return foodDiscrib;
	}
	public void setFoodDiscrib(String foodDiscrib) {
		this.foodDiscrib = foodDiscrib;
	}
	public Attractions getAttraction() {
		return attraction;
	}
	public void setAttraction(Attractions attraction) {
		this.attraction = attraction;
	}

}
