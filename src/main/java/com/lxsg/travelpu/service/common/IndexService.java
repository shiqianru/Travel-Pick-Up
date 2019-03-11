package com.lxsg.travelpu.service.common;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lxsg.travelpu.doman.AttractionsVO;
import com.lxsg.travelpu.doman.PostVO;

@Service
public interface IndexService {

	List<PostVO> getIndexPostList();

	List<AttractionsVO> getIndexAttrList();

}
