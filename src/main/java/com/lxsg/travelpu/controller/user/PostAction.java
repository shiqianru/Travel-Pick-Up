package com.lxsg.travelpu.controller.user;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lxsg.common.ConstantClassField;
import com.lxsg.travelpu.doman.CategoryUrlVO;
import com.lxsg.travelpu.doman.CommentVO;
import com.lxsg.travelpu.doman.FollowVO;
import com.lxsg.travelpu.doman.LikeVO;
import com.lxsg.travelpu.doman.PostVO;
import com.lxsg.travelpu.doman.UserVO;
import com.lxsg.travelpu.service.user.PostService;
import com.lxsg.travelpu.service.user.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@RequestMapping("/post")
public class PostAction  extends ActionSupport{
	
	@Autowired
	private PostService postService;
	@Autowired
	private UserService userService;
	
	private List<PostVO> postList=new ArrayList<PostVO>();
	
	private String SUCCESS = ConstantClassField.SUCCESS;
	private String ERROR = ConstantClassField.ERROR;
	
	private Integer postId;
	private Integer userId;
	private Integer postUserId;
	private Integer currUserId;
	
	public Integer getPostUserId() {
		return postUserId;
	}

	public void setPostUserId(Integer postUserId) {
		this.postUserId = postUserId;
	}

	public Integer getCurrUserId() {
		return currUserId;
	}

	public void setCurrUserId(Integer currUserId) {
		this.currUserId = currUserId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getPostId() {
		return postId;
	}

	public void setPostId(Integer postId) {
		this.postId = postId;
	}
	
		
		
	private String postName;
	private String postcontent;
	private List<File> filePath;
	private List<String> filePathContentType;
	private List<String> filePathFileName;

	public List<String> getFilePathContentType() {
		return filePathContentType;
	}

	public void setFilePathContentType(List<String> filePathContentType) {
		this.filePathContentType = filePathContentType;
	}

	public List<String> getFilePathFileName() {
		return filePathFileName;
	}

	public void setFilePathFileName(List<String> filePathFileName) {
		this.filePathFileName = filePathFileName;
	}

	public String getPostName() {
		return postName;
	}

	public List<File> getFilePath() {
		return filePath;
	}

	public void setFilePath(List<File> filePath) {
		this.filePath = filePath;
	}

	public void setPostName(String postName) {
		this.postName = postName;
	}

	public String getPostcontent() {
		return postcontent;
	}

	public void setPostcontent(String postcontent) {
		this.postcontent = postcontent;
	}
	
	private String message;

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
		
	private String[] postPoint;

	public String[] getPostPoint() {
		return postPoint;
	}

	public void setPostPoint(String[] postPoint) {
		this.postPoint = postPoint;
	}
	
	private String point;

	public String getPoint() {
		return point;
	}

	public void setPoint(String point) {
		this.point = point;
	}
	private String commUserName;
	private String commentId;
	
	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}

	public String getCommUserName() {
		return commUserName;
	}

	public void setCommUserName(String commUserName) {
		this.commUserName = commUserName;
	}

	/**
	 * 去主页
	 * @param userVO
	 * @return
	 */
	@RequestMapping("/getAllPost")
	public String getAllPost(){
		UserVO userVO=(UserVO) ActionContext.getContext().getSession().get("userVO");

		//粉丝关注
		int fansCount=postService.getUserFansCount(userVO.getId());
		userVO.setFansCount(fansCount);
		int focusCount=postService.getUserFocusCount(userVO.getId());
		userVO.setFocusCount(focusCount);
				
		postList=postService.getAllPost(userVO.getId());
		System.out.println(postList.size());
		
		for (PostVO postVO : postList) {
			//得到帖子对应的图片列表
			List<CategoryUrlVO> imgUrlVO=postService.getCategoryByPostId(postVO.getId(),userVO.getId());
			if(imgUrlVO.size()>0){
				postVO.setHomePageImgUrlVO(imgUrlVO.get(0));
			}
			//得到点赞数
			int likeCount=0;
			likeCount=postService.getPostLikeCount(postVO.getId());
			if(likeCount>0){
				postVO.setLikeCount(likeCount);
			}else{
				postVO.setLikeCount(0);
			}
			
			//得到评论数
			int commentCount=0;
			commentCount=postService.getPostCommentCount(postVO.getId());
			if(commentCount>0){
				postVO.setCommentCount(commentCount);
			}else{
				postVO.setCommentCount(0);
			}
			
		}
		
		//相册最近三张
		List<CategoryUrlVO> recentCateList=postService.getRecentCate(userVO.getId());

		ActionContext.getContext().getSession().put("postList", postList);
		ActionContext.getContext().getSession().put("recentCateList", recentCateList);
		
		return SUCCESS;
	}
	
	@RequestMapping("/getFocusList")
	public String getFocusList(){
		UserVO userVO=(UserVO) ActionContext.getContext().getSession().get("userVO");
		List<UserVO> focusUserList=new ArrayList<UserVO>();
		List<Integer> focusList=postService.getFocus(userVO.getId());
		for (Integer integer : focusList) {
			if(integer!=null){
				UserVO user=postService.getPostUser(integer);
				focusUserList.add(user);
			}
		}
		ActionContext.getContext().getSession().put("focusUserList", focusUserList);
		return SUCCESS;
	}
	@RequestMapping("/getFansList")
	public String getFansList(){
		UserVO userVO=(UserVO) ActionContext.getContext().getSession().get("userVO");
		List<UserVO> fansUserList=new ArrayList<UserVO>();
		List<Integer> fansList=postService.getFans(userVO.getId());
		for (Integer integer : fansList) {
			if(integer!=null){
				UserVO user=postService.getPostUser(integer);
				fansUserList.add(user);
			}
		}
		ActionContext.getContext().getSession().put("fansUserList", fansUserList);
		return SUCCESS;
	}
	
	/**
	 * 帖子主页
	 * @return
	 */
	@RequestMapping("/getPostDetail")
	public String getPostDetail(){
		UserVO userVO=(UserVO) ActionContext.getContext().getSession().get("userVO");
		PostVO postVO=postService.getPostDetail(postId);
		//得到帖子对应的图片列表
		List<CategoryUrlVO> imgUrlVO=postService.getCategoryByPostId(postId,userVO.getId());
		
		//得到帖子作者
		UserVO user=postService.getPostUser(postVO.getUserId());
		ActionContext.getContext().getSession().put("postUser", user);
		
		//得到帖子的总赞数和总评数
		int likeCount=postService.getPostLikeCount(postId);
		int commentCount=postService.getPostCommentCount(postId);

		ActionContext.getContext().getSession().put("isLikeThisPost", "N");
		//用户是否赞过该帖子
		int flag=postService.isUserLikeThisPost(postId,userVO.getId());
		if(flag>0){
			ActionContext.getContext().getSession().put("isLikeThisPost", "Y");
		}
		
		ActionContext.getContext().getSession().put("isCommentThisPost", "N");
		//用户是否评论过该帖子
		int count=postService.isUserCommentThisPost(postId,userVO.getId());
		if(count>0){
			ActionContext.getContext().getSession().put("isCommentThisPost", "Y");
		}
		
		//当前帖子的上一个帖子
		PostVO prePostVO=postService.getPrePost(postId);
		if(prePostVO!=null){
			CategoryUrlVO categoryUrlVO=postService.getPrePostCate(prePostVO.getId());
			ActionContext.getContext().getSession().put("precategoryUrlVO", categoryUrlVO);
		}
		
		//当前帖子的下一个帖子
		PostVO afterPostVO=postService.getAfterPost(postId);
		if(afterPostVO!=null){
			CategoryUrlVO categoryUrlVO=postService.getAfterPostCate(afterPostVO.getId());
			ActionContext.getContext().getSession().put("aftercategoryUrlVO", categoryUrlVO);
		}

		List<CommentVO> commList=postService.getAllCommentOfPost(postId);

		ActionContext.getContext().getSession().put("commList", commList);
		ActionContext.getContext().getSession().put("likeCount", likeCount);
		ActionContext.getContext().getSession().put("commentCount", commentCount);
		ActionContext.getContext().getSession().put("postDetail", postVO);
		ActionContext.getContext().getSession().put("imgUrl", imgUrlVO);
		ActionContext.getContext().getSession().put("prePostVO", prePostVO);
		ActionContext.getContext().getSession().put("afterPostVO", afterPostVO);
		
		return SUCCESS;
	}
	
	/**
	 * 发帖
	 * @return
	 * @throws IOException
	 */
	@RequestMapping("/post")
	public String post() throws IOException{
		UserVO userVO=(UserVO) ActionContext.getContext().getSession().get("userVO");
		PostVO postVO=new PostVO();
		List<CategoryUrlVO> urlList=new ArrayList<CategoryUrlVO>();
		if(filePath!=null){
			//文件保存路径
	        String path = ServletActionContext.getServletContext().getRealPath("/upload");
	        File file = new File(path);
	        //不存在则创建
	        if(!file.exists()){
	            file.mkdir();
	        }
	        //循环将文件上传到指定路径
	        for(int i = 0; i< filePath.size(); i++){
	        	System.out.println(filePathFileName.get(i));
	        	CategoryUrlVO categoryUrlVO=new CategoryUrlVO();
	        	categoryUrlVO.setImageUrl(filePathFileName.get(i));
	        	categoryUrlVO.setUserVO(userVO);
	        	categoryUrlVO.setUserId(userVO.getId());
	        	urlList.add(categoryUrlVO);
	            FileUtils.copyFile(filePath.get(i), new File(file,filePathFileName.get(i)));
	        }
        	int c=postService.insertCategory(urlList);
        	System.out.println(c);
		}
		if(postPoint.length>0){
			postVO.setPostPoint1(postPoint[0]);
			if(postPoint[1]!=null){
				postVO.setPostPoint2(postPoint[1]);
			}
			if(postPoint[2]!=null){
				postVO.setPostPoint2(postPoint[2]);
			}
		}
		postVO.setCategoryUrl(urlList);
		postVO.setPostName(postName);
		postVO.setPostContent(postcontent);
		
		//存入数据库
		Integer count=postService.post(postVO);
		//---------------------------------------------------
		
		if(count>0){
			int result=postService.updateUserId(postVO.getId(),userVO.getId());
			if(urlList!=null){
				for (CategoryUrlVO categoryUrlVO : urlList) {
					categoryUrlVO.setPostVO(postVO);
					categoryUrlVO.setPostId(postVO.getId());
					int c=postService.updatePostId(categoryUrlVO.getCa_id(),postVO.getId());
				}
				ActionContext.getContext().getSession().put("imgUrl", urlList);
			}
			if(result>0){
				ActionContext.getContext().getSession().put("postDetail", postVO);
				return SUCCESS;
			}
		}
		
		return ERROR;
	}
	
	@RequestMapping("/test")
	public String test(){
		int result=postService.updateUserId(new Integer(6),new Integer(1));
		if(result>0){
			return SUCCESS;
		}
		return ERROR;
	}
	
	/**
	 * 点赞帖子
	 * @return
	 */
	@RequestMapping("/laudPost")
	public String laudPost(){
		HttpServletResponse response = ServletActionContext.getResponse();
        response.setCharacterEncoding("UTF-8");
        
		System.out.println(postId+"----------------"+userId);
		LikeVO likeVO=new LikeVO();
		likeVO.setPostId(postId);
		likeVO.setUserId(userId);
		int count=postService.laudPost(likeVO);
		if(count>0){
			int result=postService.getPostLikeCount(postId);
			System.out.println(result);
			try {
				response.getWriter().write(Integer.toString(result));
			} catch (IOException e) {
				e.printStackTrace();
			}
			
			UserVO postUserVO=postService.getPostUser(postUserId);
			int likeCount=postUserVO.getLikeCount();
			likeCount++;
			postUserVO.setLikeCount(likeCount);
			int c=postService.updateLikeCount(postUserVO);
		}
		return null;
	}
	
	/**
	 * 取消点赞帖子
	 * @return
	 */
	@RequestMapping("/cancellaudPost")
	public String cancellaudPost(){
		HttpServletResponse response = ServletActionContext.getResponse();
        response.setCharacterEncoding("UTF-8");
        
		System.out.println(postId+"----------------"+userId);
		LikeVO likeVO=new LikeVO();
		likeVO.setPostId(postId);
		likeVO.setUserId(userId);
		int count=postService.cancellaudPost(likeVO);
		if(count>0){
			int result=postService.getPostLikeCount(postId);
			System.out.println(result);
			try {
				response.getWriter().write(Integer.toString(result));
			} catch (IOException e) {
				e.printStackTrace();
			}
			UserVO postUserVO=postService.getPostUser(postUserId);
			int likeCount=postUserVO.getLikeCount();
			likeCount--;
			postUserVO.setLikeCount(likeCount);
			int c=postService.updateLikeCount(postUserVO);
		}
		return null;
	}
	
	/**
	 * 评论帖子
	 * @return
	 */
	@RequestMapping("/commentPost")
	public String commentPost(){
		HttpServletResponse response = ServletActionContext.getResponse();
        response.setCharacterEncoding("UTF-8");
        
		CommentVO commentVO=new CommentVO();
		commentVO.setUserId(userId);
		commentVO.setPostId(postId);
		commentVO.setCommentContent(message);
		
		int count=postService.commentPost(commentVO);
		System.out.println(count);
		
		//****************************************************
		UserVO postUserVO=postService.getPostUser(postUserId);
		int commentCount=postUserVO.getCommentCount();
		commentCount++;
		postUserVO.setCommentCount(commentCount);
		int c=postService.updateCommentCount(postUserVO);
		System.out.println(c);
		//*****************************************************
		
		List<CommentVO> commList=postService.getAllCommentOfPost(postId);
		int commCount=postService.getPostCommentCount(postId);

		ActionContext.getContext().getSession().put("commList", commList);
		ActionContext.getContext().getSession().put("commentCount", commCount);
		
		try {
			response.getWriter().write("1");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}
	
	@RequestMapping("/commentComment")
	public String commentComment(){
		HttpServletResponse response = ServletActionContext.getResponse();
        response.setCharacterEncoding("UTF-8");
        //被评论的帖子
		CommentVO commentVO=postService.getCommentVO(commentId);
		
		//新建评论的评论对象
		CommentVO commentCommentVO=new CommentVO();
		commentCommentVO.setUserId(userId);
		commentCommentVO.setPostId(postId);
		commentCommentVO.setCommentId(commentVO.getC_id());
		commentCommentVO.setCommentContent(message);
		//插入评论
		int count=postService.commentPost(commentCommentVO);
		System.out.println(count);
		
		//****************************************************
		UserVO postUserVO=postService.getPostUser(postUserId);
		int commentCount=postUserVO.getCommentCount();
		commentCount++;
		postUserVO.setCommentCount(commentCount);
		int c=postService.updateCommentCount(postUserVO);
		System.out.println(c);
		//*****************************************************
		
		List<CommentVO> commCommentList=postService.getAllCommentOfComment(postId,new Integer(commentId));
		commentVO.setCommCommentList(commCommentList);
		List<CommentVO> commList=postService.getAllCommentOfPost(postId);
		
		int commCount=postService.getPostCommentCount(postId);

		ActionContext.getContext().getSession().put("commList", commList);
		ActionContext.getContext().getSession().put("commentCount", commCount);
		
		try {
			response.getWriter().write("1");
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 广场
	 */
	@RequestMapping("/square")
	public String square(){
		//广场帖子列表 倒序
		List<PostVO> postList=postService.getNewestPost();
		for (PostVO postVO : postList) {
			//得到帖子对应的图片列表
			List<CategoryUrlVO> imgUrlVO=postService.getCategoryByPostId(postVO.getId(),postVO.getUserId());
			if(imgUrlVO.size()>0){
				postVO.setHomePageImgUrlVO(imgUrlVO.get(0));
			}
			postVO.setLikeCount(postService.getPostLikeCount(postVO.getId()));
			postVO.setCommentCount(postService.getPostCommentCount(postVO.getId()));
		}
		ActionContext.getContext().getSession().put("squareNewestPost", postList);
		
		//热门帖子 2个
		List<PostVO> hotPost=new ArrayList<PostVO>();
		List<Map<String, Object>> hotPostList=postService.getHotPost();
		for (Map<String, Object> map2 : hotPostList) {
			Integer postId = (Integer) map2.get("postId");
			Long c=(Long) map2.get("count");
			int count=c.intValue();
			PostVO postVO=postService.getPostDetail(postId);
			//得到帖子对应的图片列表
			List<CategoryUrlVO> imgUrlVO=postService.getCategoryByPostId(postVO.getId(),postVO.getUserId());
			if(imgUrlVO.size()>0){
				postVO.setHomePageImgUrlVO(imgUrlVO.get(0));
			}
			postVO.setLikeCount(postService.getPostLikeCount(postVO.getId()));
			postVO.setCommentCount(postService.getPostCommentCount(postVO.getId()));
			hotPost.add(postVO);
		}
		getPointCount();
		ActionContext.getContext().getSession().put("squareHotPost", hotPost);
		return SUCCESS;
	}

	public void getPointCount() {
		int rcCount=postService.getPointCount("日常");
		int kjCount=postService.getPointCount("科技");
		int msCount=postService.getPointCount("美食");
		int lsCount=postService.getPointCount("历史");
		int ssCount=postService.getPointCount("时尚");
		int ysCount=postService.getPointCount("艺术");

		ActionContext.getContext().getSession().put("rcCount", rcCount);
		ActionContext.getContext().getSession().put("kjCount", kjCount);
		ActionContext.getContext().getSession().put("msCount", msCount);
		ActionContext.getContext().getSession().put("lsCount", lsCount);
		ActionContext.getContext().getSession().put("ssCount", ssCount);
		ActionContext.getContext().getSession().put("ysCount", ysCount);
	}
	/**
	 * 好友圈
	 * @return
	 */
	@RequestMapping("/friendSquare")
	public String friendSquare(){
		UserVO currUserVO=(UserVO) ActionContext.getContext().getSession().get("userVO");
		List<PostVO> friendPostList=new ArrayList<PostVO>();
		List<Integer> followIdList=postService.getFollowUserId(currUserVO.getId());
		for (Integer integer : followIdList) {
			List<PostVO> postOfUserList=postService.getAllPost(integer);
			for (PostVO postVO : postOfUserList) {
				friendPostList.add(postVO);
			}
		}
		getPointCount();
		ActionContext.getContext().getSession().put("followUserPost", friendPostList);
		return SUCCESS;
	}
	
	@RequestMapping("/getPointPost")
	public String getPointPost(){
		List<PostVO> list=postService.getPointPost(point);
		for (PostVO postVO : list) {
			List<CategoryUrlVO> cateList=postService.getCategoryByPostId(postVO.getId(),postVO.getUserId());
			if(cateList.size()>0){
				postVO.setHomePageImgUrlVO(cateList.get(0));
			}
		}
		
		ActionContext.getContext().getSession().put("pointPost", list);
		return SUCCESS;
	}
	
	/**
	 * 作者主页
	 * @return
	 */
	@RequestMapping("/getUserHomePage")
	public String getUserHomePage(){
		//作者对象**********************
		UserVO userVO=postService.getPostUser(userId);
		ActionContext.getContext().getSession().put("postUser", userVO);
		//************************
		List<PostVO> postList=postService.getAllPost(userId);
		for (PostVO postVO : postList) {
			//得到帖子对应的图片列表
			List<CategoryUrlVO> imgUrlVO=postService.getCategoryByPostId(postVO.getId(),userVO.getId());
			if(imgUrlVO.size()>0){
				postVO.setHomePageImgUrlVO(imgUrlVO.get(0));
			}
			//得到点赞数
			int likeCount=0;
			likeCount=postService.getPostLikeCount(postVO.getId());
			if(likeCount>0){
				postVO.setLikeCount(likeCount);
			}else{
				postVO.setLikeCount(0);
			}
			
			//得到评论数
			int commentCount=0;
			commentCount=postService.getPostCommentCount(postVO.getId());
			if(commentCount>0){
				postVO.setCommentCount(commentCount);
			}else{
				postVO.setCommentCount(0);
			}
		}
		
		UserVO currUserVO=(UserVO) ActionContext.getContext().getSession().get("userVO");
		int result=postService.isFocusPostUser(currUserVO.getId(),userId);
		if(result>0){
			ActionContext.getContext().getSession().put("isFocusPostUser", "Y");
		}else{
			ActionContext.getContext().getSession().put("isFocusPostUser", "N");
		}

		ActionContext.getContext().getSession().put("postUserList", postList);
		return SUCCESS;
	}
	
	@RequestMapping("/followUser")
	public String followUser(){
		HttpServletResponse response = ServletActionContext.getResponse();
        response.setCharacterEncoding("UTF-8");
        
		FollowVO followVO1=new FollowVO();
		followVO1.setUserId(currUserId);
		followVO1.setFollowingId(postUserId);
		int result1=postService.setFollow(followVO1);
		
		FollowVO followVO2=new FollowVO();
		followVO2.setUserId(postUserId);
		followVO2.setFollowerId(currUserId);
		int result2=postService.setFollow(followVO2);
		
		if(result1>0 && result2>0){
			try {
				response.getWriter().write("Y");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	@RequestMapping("/unFollowUser")
	public String unFollowUser(){
		HttpServletResponse response = ServletActionContext.getResponse();
        response.setCharacterEncoding("UTF-8");
        
		int result1=postService.deleteFollowing(currUserId,postUserId);
		
		int result2=postService.deleteFollower(postUserId,currUserId);
		
		if(result1>0 && result2>0){
			try {
				response.getWriter().write("Y");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	@RequestMapping("/getAlbum")
	public String getAlbum(){
		UserVO currUserVO=(UserVO) ActionContext.getContext().getSession().get("userVO");
		List<CategoryUrlVO> albumList=postService.getAlbum(currUserVO.getId());

		ActionContext.getContext().getSession().put("currUserAlbumList", albumList);
		return SUCCESS;
	}
	
}
