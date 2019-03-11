package com.lxsg.travelpu.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.lxsg.travelpu.doman.CategoryUrlVO;
import com.lxsg.travelpu.doman.CommentVO;
import com.lxsg.travelpu.doman.FollowVO;
import com.lxsg.travelpu.doman.LikeVO;
import com.lxsg.travelpu.doman.PostVO;
import com.lxsg.travelpu.doman.UserVO;

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
