package com.lxsg.travelpu.service.attractions;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lxsg.travelpu.doman.AttractionsVO;
import com.lxsg.travelpu.doman.CityVO;
import com.lxsg.travelpu.doman.FoodVO;
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

}
