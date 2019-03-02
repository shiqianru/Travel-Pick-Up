package com.lxsg.travelpu.service.user;

import java.util.List;

import com.lxsg.travelpu.doman.CategoryUrlVO;
import com.lxsg.travelpu.doman.CommentVO;
import com.lxsg.travelpu.doman.LikeVO;
import com.lxsg.travelpu.doman.PostVO;
import com.lxsg.travelpu.doman.UserVO;

public interface PostService {

	//全部帖子
	List<PostVO> getAllPost(Integer integer);

	PostVO getPostDetail(Integer postId);

	//发帖
	Integer post(PostVO postVO);

	int updateUserId(Integer pidInteger, Integer id);

	int insertCategory(List<CategoryUrlVO> urlList);

	int updatePostId(Integer id, Integer id2);

	List<CategoryUrlVO> getCategoryByPostId(Integer postId, Integer integer);

	int laudPost(LikeVO likeVO);

	int getPostLikeCount(Integer postId);

	int isUserLikeThisPost(Integer postId, Integer id);

	int cancellaudPost(LikeVO likeVO);

	int commentPost(CommentVO commentVO);

	List<CommentVO> getAllCommentOfPost(Integer postId);

	int isUserCommentThisPost(Integer postId, Integer id);

	int getPostCommentCount(Integer postId);

}
