package com.lxsg.travelpu.dao;

import java.util.List;

import com.lxsg.travelpu.doman.AttractionsVO;
import com.lxsg.travelpu.doman.CityVO;
import com.lxsg.travelpu.doman.FoodVO;

public interface RecommendDao {

	List<AttractionsVO> getRecommend();

	AttractionsVO getAttrDetail(String viewTitle);

	List<CityVO> getAllCitys();

	List<FoodVO> getAllFoods();

	List<AttractionsVO> getAttrOfCity(Integer id);

}
