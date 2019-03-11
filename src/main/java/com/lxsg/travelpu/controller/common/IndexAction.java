package com.lxsg.travelpu.controller.common;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lxsg.common.ConstantClassField;
import com.lxsg.travelpu.doman.AttractionsVO;
import com.lxsg.travelpu.doman.CategoryUrlVO;
import com.lxsg.travelpu.doman.PostVO;
import com.lxsg.travelpu.service.common.IndexService;
import com.lxsg.travelpu.service.user.PostService;
import com.opensymphony.xwork2.ActionContext;

@Controller
@RequestMapping("/index")
public class IndexAction {
	
	@Autowired
	private IndexService indexService;
	@Autowired
	private PostService postService;
	
	private String SUCCESS = ConstantClassField.SUCCESS;
	private String ERROR = ConstantClassField.ERROR;
	
	@RequestMapping("/toIndex")
	public String toIndex(){
		List<PostVO> indexPostList=indexService.getIndexPostList();
		for (PostVO postVO : indexPostList) {
			List<CategoryUrlVO> cateList=postService.getCategoryByPostId(postVO.getId(), postVO.getUserId());
			if(cateList.size()>0){
				postVO.setHomePageImgUrlVO(cateList.get(0));
			}
			postVO.setLikeCount(postService.getPostLikeCount(postVO.getId()));
			postVO.setCommentCount(postService.getPostCommentCount(postVO.getId()));
		}
		
		ActionContext.getContext().getSession().put("indexPostList", indexPostList);
		
		List<AttractionsVO> indexAttrList=indexService.getIndexAttrList();
		ActionContext.getContext().getSession().put("indexAttrList", indexAttrList);
		
		return SUCCESS;
	}

}
