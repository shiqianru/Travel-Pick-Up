package com.lxsg.travelpu.service.impl;

import java.util.List;
import java.util.Map;

import org.omg.PortableServer.ID_ASSIGNMENT_POLICY_ID;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lxsg.common.ConstantClassField;
import com.lxsg.travelpu.dao.PostDao;
import com.lxsg.travelpu.doman.CategoryUrlVO;
import com.lxsg.travelpu.doman.CommentVO;
import com.lxsg.travelpu.doman.FollowVO;
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

	@Override
	public PostVO getPrePost(Integer postId) {
		// TODO Auto-generated method stub
		return postDao.getPrePost(postId);
	}

	@Override
	public CategoryUrlVO getPrePostCate(Integer id) {
		// TODO Auto-generated method stub
		return postDao.getPrePostCate(id);
	}

	@Override
	public PostVO getAfterPost(Integer postId) {
		// TODO Auto-generated method stub
		return postDao.getAfterPost(postId);
	}

	@Override
	public CategoryUrlVO getAfterPostCate(Integer id) {
		// TODO Auto-generated method stub
		return postDao.getAfterPostCate(id);
	}

	@Override
	public List<PostVO> getNewestPost() {
		// TODO Auto-generated method stub
		return postDao.getNewestPost();
	}

	@Override
	public List<Map<String, Object>> getHotPost() {
		// TODO Auto-generated method stub
		return postDao.getHotPost();
	}

	@Override
	public UserVO getPostUser(Integer userId) {
		// TODO Auto-generated method stub
		return postDao.getPostUser(userId);
	}

	@Override
	public int setFollow(FollowVO followVO) {
		// TODO Auto-generated method stub
		return postDao.setFollow(followVO);
	}

	@Override
	public int deleteFollower(Integer currUserId, Integer postUserId) {
		// TODO Auto-generated method stub
		return postDao.deleteFollower(currUserId,postUserId);
	}

	@Override
	public int deleteFollowing(Integer postUserId, Integer currUserId) {
		// TODO Auto-generated method stub
		return postDao.deleteFollowing(postUserId, currUserId);
	}

	@Override
	public int isFocusPostUser(Integer id, Integer userId) {
		// TODO Auto-generated method stub
		return postDao.isFocusPostUser(id,userId);
	}

	@Override
	public List<Integer> getFollowUserId(Integer id) {
		// TODO Auto-generated method stub
		return postDao.getFollowUserId(id);
	}

	@Override
	public int getUserFansCount(Integer id) {
		// TODO Auto-generated method stub
		return postDao.getUserFansCount(id);
	}

	@Override
	public int getUserFocusCount(Integer id) {
		// TODO Auto-generated method stub
		return postDao.getUserFocusCount(id);
	}

	@Override
	public List<Integer> getFocus(Integer id) {
		// TODO Auto-generated method stub
		return postDao.getFocus(id);
	}

	@Override
	public List<Integer> getFans(Integer id) {
		// TODO Auto-generated method stub
		return postDao.getFans(id);
	}

	@Override
	public List<CategoryUrlVO> getAlbum(Integer id) {
		// TODO Auto-generated method stub
		return postDao.getAlbum(id);
	}

	@Override
	public int getPointCount(String string) {
		// TODO Auto-generated method stub
		return postDao.getPointCount(string);
	}

	@Override
	public List<PostVO> getPointPost(String point) {
		// TODO Auto-generated method stub
		return postDao.getPointPost(point);
	}

	@Override
	public int updateLikeCount(UserVO postUserVO) {
		// TODO Auto-generated method stub
		return postDao.updateLikeCount(postUserVO);
	}

	@Override
	public int updateCommentCount(UserVO postUserVO) {
		// TODO Auto-generated method stub
		return postDao.updateCommentCount(postUserVO);
	}

	@Override
	public CommentVO getCommentVO(String commentId) {
		// TODO Auto-generated method stub
		return postDao.getCommentVO(commentId);
	}

	@Override
	public List<CommentVO> getAllCommentOfComment(Integer postId, Integer c_id) {
		// TODO Auto-generated method stub
		return postDao.getAllCommentOfComment(postId,c_id);
	}

	@Override
	public List<CategoryUrlVO> getRecentCate(Integer id) {
		// TODO Auto-generated method stub
		return postDao.getRecentCate(id);
	}
}
