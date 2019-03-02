package com.lxsg.travelpu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lxsg.travelpu.doman.CategoryUrlVO;
import com.lxsg.travelpu.doman.CommentVO;
import com.lxsg.travelpu.doman.LikeVO;
import com.lxsg.travelpu.doman.PostVO;

public interface PostDao {

	List<PostVO> getAllPost(Integer id);

	PostVO getPostDetail(Integer postId);


	//发帖
	Integer post(PostVO postVO);

	int updateUserId(Integer pidInteger, Integer uid);

	int insertCategory(List<CategoryUrlVO> urlList);

	int updatePostId(Integer cid, Integer pid);

	List<CategoryUrlVO> getCategoryByPostId(Integer postId, Integer uid);

	int laudPost(LikeVO likeVO);

	int getPostLikeCount(Integer postId);

	int isUserLikeThisPost(Integer postId, Integer uid);

	int cancellaudPost(LikeVO likeVO);

	int commentPost(CommentVO commentVO);

	List<CommentVO> getAllCommentOfPost(Integer postId);

	int isUserCommentThisPost(Integer postId, Integer id);

	int getPostCommentCount(Integer postId);
}
