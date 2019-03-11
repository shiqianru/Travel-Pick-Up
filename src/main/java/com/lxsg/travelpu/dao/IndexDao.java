package com.lxsg.travelpu.dao;

import java.util.List;

import com.lxsg.travelpu.doman.AttractionsVO;
import com.lxsg.travelpu.doman.PostVO;

public interface IndexDao {

	List<PostVO> getIndexPostList();

	List<AttractionsVO> getIndexAttrList();

}
