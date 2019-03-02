package com.lxsg.travelpu.controller.attractions;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lxsg.common.ConstantClassField;
import com.lxsg.travelpu.doman.AttractionsVO;
import com.lxsg.travelpu.doman.CityVO;
import com.lxsg.travelpu.doman.FoodVO;
import com.lxsg.travelpu.pojo.Attractions;
import com.lxsg.travelpu.service.attractions.RecommendService;
import com.lxsg.travelpu.service.user.UserService;
import com.opensymphony.xwork2.ActionContext;

@Controller
@RequestMapping("/attractions")
public class RecommendAction {
	private String SUCCESS = ConstantClassField.SUCCESS;
	private String ERROR = ConstantClassField.ERROR;
	
	@Autowired
	private RecommendService recommendService;
	
	private List<AttractionsVO> attractionList=new ArrayList<AttractionsVO>();
	private String viewTitle;
	

	public String getViewTitle() {
		return viewTitle;
	}

	public void setViewTitle(String viewTitle) {
		this.viewTitle = viewTitle;
	}
	
	private List<CityVO> cityList;

	public List<CityVO> getCityList() {
		return cityList;
	}

	public void setCityList(List<CityVO> cityList) {
		this.cityList = cityList;
	}
	
	private List<FoodVO> foodList;
	private Integer id;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public List<FoodVO> getFoodList() {
		return foodList;
	}

	public void setFoodList(List<FoodVO> foodList) {
		this.foodList = foodList;
	}
	
	private List<AttractionsVO> attrOfCityList;

	public List<AttractionsVO> getAttrOfCityList() {
		return attrOfCityList;
	}

	public void setAttrOfCityList(List<AttractionsVO> attrOfCityList) {
		this.attrOfCityList = attrOfCityList;
	}

	

	/**
	 * 去推荐页面
	 * @return
	 */
	@RequestMapping("/getRecommend")
	public String getRecommend(){
		attractionList=recommendService.getRecommend();
		ActionContext.getContext().getSession().put("attractionList", attractionList);
		return SUCCESS;
	}
	
	/**
	 * attr详情页
	 * @return
	 */
	@RequestMapping("/getAttrDetail")
	public String getAttrDetail(){
		AttractionsVO attrVO=new AttractionsVO();
		attrVO=recommendService.getAttrDetail(viewTitle);
		System.out.println(attrVO.getViewContent());
		ActionContext.getContext().getSession().put("attrDetail", attrVO);
		return SUCCESS;
	}
	
	/**
	 * 全部搜索项
	 * @return
	 */
	@RequestMapping("/getAllSigns")
	public String getAllSigns(){
		cityList=recommendService.getAllCitys();
		ActionContext.getContext().getSession().put("cityList", cityList);
		foodList=recommendService.getAllFoods();
		ActionContext.getContext().getSession().put("foodList", foodList);
		return SUCCESS;
	}
	
	/**
	 * 查找某个city里的全部attr
	 * @return
	 */
	public String getAttrOfCity(){
		attrOfCityList=recommendService.getAttrOfCity(id);
		ActionContext.getContext().getSession().put("attrOfCityList", attrOfCityList);
		return SUCCESS;
	}
}
