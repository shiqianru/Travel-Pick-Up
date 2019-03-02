package com.lxsg.travelpu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lxsg.travelpu.dao.RecommendDao;
import com.lxsg.travelpu.doman.AttractionsVO;
import com.lxsg.travelpu.doman.CityVO;
import com.lxsg.travelpu.doman.FoodVO;
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


}
