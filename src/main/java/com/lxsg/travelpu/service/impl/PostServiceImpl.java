package com.lxsg.travelpu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lxsg.common.ConstantClassField;
import com.lxsg.travelpu.dao.PostDao;
import com.lxsg.travelpu.doman.CategoryUrlVO;
import com.lxsg.travelpu.doman.CommentVO;
import com.lxsg.travelpu.doman.LikeVO;
import com.lxsg.travelpu.doman.PostVO;
import com.lxsg.travelpu.doman.UserVO;
import com.lxsg.travelpu.service.user.PostService;

@Repository
public class PostServiceImpl implements PostService {
	
	@Autowired
	private PostDao postDao;

	@Override
	public List<PostVO> getAllPost(Integer integer) {
		// TODO Auto-generated method stub
		return postDao.getAllPost(integer);
	}

	@Override
	public PostVO getPostDetail(Integer postId) {
		// TODO Auto-generated method stub
		return postDao.getPostDetail(postId);
	}


	@Override
	public Integer post(PostVO postVO) {
		// TODO Auto-generated method stub
		return postDao.post(postVO);
	}

	@Override
	public int updateUserId(Integer pidInteger, Integer uid) {
		// TODO Auto-generated method stub
		return postDao.updateUserId(pidInteger,uid);
	}

	@Override
	public int insertCategory(List<CategoryUrlVO> urlList) {
		// TODO Auto-generated method stub
		return postDao.insertCategory(urlList);
	}

	@Override
	public int updatePostId(Integer id, Integer id2) {
		// TODO Auto-generated method stub
		return postDao.updatePostId(id,id2);
	}

	@Override
	public List<CategoryUrlVO> getCategoryByPostId(Integer postId,
			Integer integer) {
		// TODO Auto-generated method stub
		return postDao.getCategoryByPostId(postId,integer);
	}

	@Override
	public int laudPost(LikeVO likeVO) {
		// TODO Auto-generated method stub
		return postDao.laudPost(likeVO);
	}

	@Override
	public int getPostLikeCount(Integer postId) {
		// TODO Auto-generated method stub
		return postDao.getPostLikeCount(postId);
	}

	@Override
	public int isUserLikeThisPost(Integer postId, Integer id) {
		// TODO Auto-generated method stub
		return postDao.isUserLikeThisPost(postId,id);
	}

	@Override
	public int cancellaudPost(LikeVO likeVO) {
		// TODO Auto-generated method stub
		return postDao.cancellaudPost(likeVO);
	}

	@Override
	public int commentPost(CommentVO commentVO) {
		// TODO Auto-generated method stub
		return postDao.commentPost(commentVO);
	}

	@Override
	public List<CommentVO> getAllCommentOfPost(Integer postId) {
		// TODO Auto-generated method stub
		return postDao.getAllCommentOfPost(postId);
	}

	@Override
	public int isUserCommentThisPost(Integer postId, Integer id) {
		// TODO Auto-generated method stub
		return postDao.isUserCommentThisPost(postId,id);
	}

	@Override
	public int getPostCommentCount(Integer postId) {
		// TODO Auto-generated method stub
		return postDao.getPostCommentCount(postId);
	}
}
