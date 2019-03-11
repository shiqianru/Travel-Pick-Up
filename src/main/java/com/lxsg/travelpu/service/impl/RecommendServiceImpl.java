package com.lxsg.travelpu.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lxsg.travelpu.dao.RecommendDao;
import com.lxsg.travelpu.doman.AttractionsVO;
import com.lxsg.travelpu.doman.CityVO;
import com.lxsg.travelpu.doman.FoodVO;
import com.lxsg.travelpu.doman.PostVO;
import com.lxsg.travelpu.service.attractions.RecommendService;

@Repository
public class RecommendServiceImpl implements RecommendService {
	
	@Autowired
	private RecommendDao recommendDao;

	@Override
	public List<AttractionsVO> getRecommend() {
		// TODO Auto-generated method stub
		return recommendDao.getRecommend();
	}

	@Override
	public AttractionsVO getAttrDetail(String viewTitle) {
		// TODO Auto-generated method stub
		return recommendDao.getAttrDetail(viewTitle);
	}

	@Override
	public List<CityVO> getAllCitys() {
		// TODO Auto-generated method stub
		return recommendDao.getAllCitys();
	}

	@Override
	public List<FoodVO> getAllFoods() {
		// TODO Auto-generated method stub
		return recommendDao.getAllFoods();
	}

	@Override
	public List<AttractionsVO> getAttrOfCity(Integer id) {
		// TODO Auto-generated method stub
		return recommendDao.getAttrOfCity(id);
	}

	@Override
	public List<CityVO> getShowCity() {
		// TODO Auto-generated method stub
		return recommendDao.getShowCity();
	}

	@Override
	public List<FoodVO> getShowFood() {
		// TODO Auto-generated method stub
		return recommendDao.getShowFood();
	}

	@Override
	public List<AttractionsVO> getShowAttr() {
		// TODO Auto-generated method stub
		return recommendDao.getShowAttr();
	}

	@Override
	public List<AttractionsVO> getAllAttrs() {
		// TODO Auto-generated method stub
		return recommendDao.getAllAttrs();
	}

	@Override
	public List<AttractionsVO> getSubAttrs(int firstIndex, int lastIndex) {
		// TODO Auto-generated method stub
		return recommendDao.getSubAttrs(firstIndex,lastIndex);
	}

	@Override
	public List<CityVO> searchCity(String searchContent) {
		// TODO Auto-generated method stub
		return recommendDao.searchCity(searchContent);
	}

	@Override
	public List<FoodVO> getFoodOfAttr(Integer id) {
		// TODO Auto-generated method stub
		return recommendDao.getFoodOfAttr(id);
	}

	@Override
	public FoodVO getFoodDetail(Integer id) {
		// TODO Auto-generated method stub
		return recommendDao.getFoodDetail(id);
	}

	@Override
	public CityVO getCityDetail(Integer id) {
		// TODO Auto-generated method stub
		return recommendDao.getCityDetail(id);
	}

	@Override
	public List<AttractionsVO> sortNew() {
		// TODO Auto-generated method stub
		return recommendDao.sortNew();
	}

	@Override
	public List<Map<String, Object>> sortHot() {
		// TODO Auto-generated method stub
		return recommendDao.sortHot();
	}

	@Override
	public AttractionsVO getAttr(int h_id) {
		// TODO Auto-generated method stub
		return recommendDao.getAttr(h_id);
	}

	@Override
	public List<AttractionsVO> getPointAttr(String point) {
		// TODO Auto-generated method stub
		return recommendDao.getPointAttr(point);
	}

	@Override
	public List<PostVO> getRelaPost(String viewPoint1) {
		// TODO Auto-generated method stub
		return recommendDao.getRelaPost(viewPoint1);
	}


}
