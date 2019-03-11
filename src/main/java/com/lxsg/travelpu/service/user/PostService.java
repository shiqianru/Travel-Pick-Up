package com.lxsg.travelpu.service.user;

import java.util.List;
import java.util.Map;

import com.lxsg.travelpu.doman.CategoryUrlVO;
import com.lxsg.travelpu.doman.CommentVO;
import com.lxsg.travelpu.doman.FollowVO;
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

	PostVO getPrePost(Integer postId);

	CategoryUrlVO getPrePostCate(Integer id);

	PostVO getAfterPost(Integer postId);

	CategoryUrlVO getAfterPostCate(Integer id);

	List<PostVO> getNewestPost();

	List<Map<String, Object>> getHotPost();

	UserVO getPostUser(Integer userId);

	int setFollow(FollowVO followVO);

	int deleteFollower(Integer currUserId, Integer postUserId);

	int deleteFollowing(Integer postUserId, Integer currUserId);

	int isFocusPostUser(Integer id, Integer userId);

	List<Integer> getFollowUserId(Integer id);

	int getUserFansCount(Integer id);

	int getUserFocusCount(Integer id);

	List<Integer> getFocus(Integer id);

	List<Integer> getFans(Integer id);

	List<CategoryUrlVO> getAlbum(Integer id);

	int getPointCount(String string);

	List<PostVO> getPointPost(String point);

	int updateLikeCount(UserVO postUserVO);

	int updateCommentCount(UserVO postUserVO);

	CommentVO getCommentVO(String commentId);

	List<CommentVO> getAllCommentOfComment(Integer postId, Integer c_id);

	List<CategoryUrlVO> getRecentCate(Integer id);



}
