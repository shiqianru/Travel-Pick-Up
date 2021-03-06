package com.lxsg.travelpu.service.attractions;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.lxsg.travelpu.doman.AttractionsVO;
import com.lxsg.travelpu.doman.CityVO;
import com.lxsg.travelpu.doman.FoodVO;
import com.lxsg.travelpu.doman.PostVO;
import com.lxsg.travelpu.pojo.Attractions;

@Service
public interface RecommendService {

	//获取景点列表
	List<AttractionsVO> getRecommend();

	//景点详情页
	AttractionsVO getAttrDetail(String viewTitle);

	List<CityVO> getAllCitys();

	List<FoodVO> getAllFoods();

	List<AttractionsVO> getAttrOfCity(Integer id);

	List<CityVO> getShowCity();

	List<FoodVO> getShowFood();

	List<AttractionsVO> getShowAttr();

	List<AttractionsVO> getAllAttrs();

	List<AttractionsVO> getSubAttrs(int firstIndex, int lastIndex);

	List<CityVO> searchCity(String searchContent);

	List<FoodVO> getFoodOfAttr(Integer id);

	FoodVO getFoodDetail(Integer id);

	CityVO getCityDetail(Integer id);

	List<AttractionsVO> sortNew();

	List<Map<String, Object>> sortHot();

	AttractionsVO getAttr(int h_id);

	List<AttractionsVO> getPointAttr(String point);

	List<PostVO> getRelaPost(String viewPoint1);

}
