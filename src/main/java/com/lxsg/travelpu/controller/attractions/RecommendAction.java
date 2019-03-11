package com.lxsg.travelpu.controller.attractions;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lxsg.common.ConstantClassField;
import com.lxsg.travelpu.doman.AttractionsVO;
import com.lxsg.travelpu.doman.CategoryUrlVO;
import com.lxsg.travelpu.doman.CityVO;
import com.lxsg.travelpu.doman.FoodVO;
import com.lxsg.travelpu.doman.PostVO;
import com.lxsg.travelpu.pojo.Attractions;
import com.lxsg.travelpu.service.attractions.RecommendService;
import com.lxsg.travelpu.service.user.PostService;
import com.lxsg.travelpu.service.user.UserService;
import com.opensymphony.xwork2.ActionContext;

@Controller
@RequestMapping("/attractions")
public class RecommendAction {
	private String SUCCESS = ConstantClassField.SUCCESS;
	private String ERROR = ConstantClassField.ERROR;
	
	@Autowired
	private RecommendService recommendService;
	@Autowired
	private PostService postService;
	
	private List<AttractionsVO> attractionList=new ArrayList<AttractionsVO>();
	private String viewTitle;
	

	public String getViewTitle() {
		return viewTitle;
	}

	public void setViewTitle(String viewTitle) {
		this.viewTitle = viewTitle;
	}
	
	private List<AttractionsVO> attrList;
	public List<AttractionsVO> getAttrList() {
		return attrList;
	}

	public void setAttrList(List<AttractionsVO> attrList) {
		this.attrList = attrList;
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

	//分页
	int currentPage;
	int pageSize=6;
	List<AttractionsVO> subList=new ArrayList<AttractionsVO>();
	

	public List<AttractionsVO> getSubList() {
		return subList;
	}

	public void setSubList(List<AttractionsVO> subList) {
		this.subList = subList;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	
	private String searchContent;
	

	public String getSearchContent() {
		return searchContent;
	}

	public void setSearchContent(String searchContent) {
		this.searchContent = searchContent;
	}
	
	private String point;

	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
	}
	
	List<PostVO> relaPostList=new ArrayList<PostVO>();

	public List<PostVO> getRelaPostList() {
		return relaPostList;
	}

	public void setRelaPostList(List<PostVO> relaPostList) {
		this.relaPostList = relaPostList;
	}

	/**
	 * 去推荐页面
	 * @return
	 */
	@RequestMapping("/getRecommend")
	public String getRecommend(){
		attractionList=recommendService.getRecommend();
		ActionContext.getContext().getSession().put("attractionList", attractionList);
		
		if(ActionContext.getContext().getSession().get("currentPage")==null){
			ActionContext.getContext().getSession().put("currentPage", 1);
		}
		
		//推荐页面的城市景点美食--------------------------------
		List<CityVO> cityList=recommendService.getShowCity();
		if(cityList.size()>0){
			ActionContext.getContext().getSession().put("cityShowList", cityList);
		}
		
		List<FoodVO> foodList=recommendService.getShowFood();
		if(foodList.size()>0){
			ActionContext.getContext().getSession().put("foodShowList", foodList);
		}
		
		List<AttractionsVO> attrList=recommendService.getShowAttr();
		if(attrList.size()>0){
			ActionContext.getContext().getSession().put("attrShowList", attrList);
		}
		//-----------------------------------------------------
		
		
		return SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/subAttrs")
	public String subAttrs(){
		HttpServletResponse response = ServletActionContext.getResponse();
        response.setCharacterEncoding("UTF-8");
       
        System.out.println(currentPage);
        ActionContext.getContext().getSession().put("currentPage", currentPage);
        
        List<AttractionsVO> tempList=(List<AttractionsVO>) ActionContext.getContext().getSession().get("subList");
        if(tempList!=null){
        	subList=tempList;
        }
        if(currentPage>1){
			int firstIndex=(currentPage-1)*pageSize;
			int lastIndex=pageSize;
			List<AttractionsVO> list=recommendService.getSubAttrs(firstIndex,lastIndex);
			for (AttractionsVO attractionsVO : list) {
				subList.add(attractionsVO);
			}
			ActionContext.getContext().getSession().put("subList", subList);
			
			//JSONArray sublist = JSONArray.fromObject(subList);
			try {
				response.getWriter().write(String.valueOf(currentPage));
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
        //ActionContext.getContext().getSession().put("currentPage", new Integer(currentPage));

		return null;
	}
	/**
	 * 筛选 最新
	 */
	@RequestMapping("/sortNew")
	public String sortNew(){
		List<AttractionsVO> sortNewList=recommendService.sortNew();

		ActionContext.getContext().getSession().put("attractionList", sortNewList);
		return SUCCESS;
	}
	/**
	 * 筛选 最热
	 */
	@RequestMapping("/sortHot")
	public String sortHot(){
		List<AttractionsVO> result=new ArrayList<AttractionsVO>();
		
		List<Map<String, Object>> sortHotList=recommendService.sortHot();
		for (Map<String, Object> map2 : sortHotList) {
			BigDecimal score =  (BigDecimal) map2.get("score");
			Integer h_id=(Integer) map2.get("h_id");
			System.out.println(score+"---------"+h_id);
			AttractionsVO attractionsVO=recommendService.getAttr(h_id);
			result.add(attractionsVO);
		}

		ActionContext.getContext().getSession().put("attractionList", result);
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
		//美食列表
		List<FoodVO> foodList=recommendService.getFoodOfAttr(attrVO.getId());
		attrVO.setFoodList(foodList);
		ActionContext.getContext().getSession().put("attrDetail", attrVO);
		
		//相关帖子
		String viewPoint1=attrVO.getViewPoint1();
		String viewPoint2=attrVO.getViewPoint2();
		String viewPoint3=attrVO.getViewPoint3();
		String viewPoint4=attrVO.getViewPoint4();
		String viewPoint5=attrVO.getViewPoint5();
		
		if(viewPoint1!=null && viewPoint1!=""){
			List<PostVO> list=recommendService.getRelaPost(viewPoint1);
			for (PostVO postVO : list) {
				List<CategoryUrlVO> cList=postService.getCategoryByPostId(postVO.getId(), postVO.getUserId());
				if(cList.size()>0){
					postVO.setHomePageImgUrlVO(cList.get(0));
				}
				relaPostList.add(postVO);
			}
		}
		if(viewPoint2!=null && viewPoint2!=""){
			List<PostVO> list=recommendService.getRelaPost(viewPoint2);
			for (PostVO postVO : list) {
				List<CategoryUrlVO> cList=postService.getCategoryByPostId(postVO.getId(), postVO.getUserId());
				if(cList.size()>0){
					postVO.setHomePageImgUrlVO(cList.get(0));
				}
				relaPostList.add(postVO);
			}
		}
		if(viewPoint3!=null && viewPoint3!=""){
			List<PostVO> list=recommendService.getRelaPost(viewPoint3);
			for (PostVO postVO : list) {
				List<CategoryUrlVO> cList=postService.getCategoryByPostId(postVO.getId(), postVO.getUserId());
				if(cList.size()>0){
					postVO.setHomePageImgUrlVO(cList.get(0));
				}
				relaPostList.add(postVO);
			}
		}
		if(viewPoint4!=null && viewPoint4!=""){
			List<PostVO> list=recommendService.getRelaPost(viewPoint4);
			for (PostVO postVO : list) {
				List<CategoryUrlVO> cList=postService.getCategoryByPostId(postVO.getId(), postVO.getUserId());
				if(cList.size()>0){
					postVO.setHomePageImgUrlVO(cList.get(0));
				}
				relaPostList.add(postVO);
			}
		}
		if(viewPoint5!=null && viewPoint5!=""){
			List<PostVO> list=recommendService.getRelaPost(viewPoint5);
			for (PostVO postVO : list) {
				List<CategoryUrlVO> cList=postService.getCategoryByPostId(postVO.getId(), postVO.getUserId());
				if(cList.size()>0){
					postVO.setHomePageImgUrlVO(cList.get(0));
				}
				relaPostList.add(postVO);
			}
		}
		
		List<PostVO> resultList=new ArrayList<PostVO>();
		for(int i=0;i<relaPostList.size();i++){
			if (relaPostList.get(i)!=null) {
				resultList.add(relaPostList.get(i));
			}
		}
		ActionContext.getContext().getSession().put("relaPostList", resultList);
		return SUCCESS;
	}
	
	/**
	 * 美食详情页
	 */
	@RequestMapping("/getFoodDetail")
	public String getFoodDetail(){
		FoodVO foodVO=recommendService.getFoodDetail(id);
		ActionContext.getContext().getSession().put("foodDetail", foodVO);
		return SUCCESS;
	}
	/**
	 * 城市详情页
	 */
	@RequestMapping("/getCityDetail")
	public String getCityDetail(){
		CityVO cityVO=recommendService.getCityDetail(id);
		List<AttractionsVO> attrOfCity=recommendService.getAttrOfCity(id);
		
		ActionContext.getContext().getSession().put("attrOfCity", attrOfCity);
		ActionContext.getContext().getSession().put("cityDetail", cityVO);
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
		attrList=recommendService.getAllAttrs();
		ActionContext.getContext().getSession().put("attrList", attrList);
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
	
	@RequestMapping("/search")
	public String search(){
		List<CityVO> cList=recommendService.searchCity(searchContent);
		List<AttractionsVO> attrList=new ArrayList<AttractionsVO>();
		for (CityVO cityVO : cList) {
			List<AttractionsVO> list=recommendService.getAttrOfCity(cityVO.getId());
			for (AttractionsVO attractionsVO : list) {
				attrList.add(attractionsVO);
			}
		}

		ActionContext.getContext().getSession().put("resultCount", cList.size()+attrList.size());
		ActionContext.getContext().getSession().put("searchContent", searchContent);
		ActionContext.getContext().getSession().put("cList", cList);
		ActionContext.getContext().getSession().put("attrList", attrList);
		
		
		return SUCCESS;
	}
	
	@RequestMapping("/getPointAttr")
	public String getPointAttr(){
		List<AttractionsVO> result=recommendService.getPointAttr(point);
		ActionContext.getContext().getSession().put("pointAttrList", result);
		return SUCCESS;
	}
}
