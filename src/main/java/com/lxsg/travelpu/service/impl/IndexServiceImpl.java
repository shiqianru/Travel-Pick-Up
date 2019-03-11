package com.lxsg.travelpu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lxsg.travelpu.dao.IndexDao;
import com.lxsg.travelpu.doman.AttractionsVO;
import com.lxsg.travelpu.doman.PostVO;
import com.lxsg.travelpu.service.common.IndexService;

@Repository
public class IndexServiceImpl implements IndexService {

	@Autowired
	private IndexDao indexDao;

	@Override
	public List<PostVO> getIndexPostList() {
		// TODO Auto-generated method stub
		return indexDao.getIndexPostList();
	}

	@Override
	public List<AttractionsVO> getIndexAttrList() {
		// TODO Auto-generated method stub
		return indexDao.getIndexAttrList();
	}
}
