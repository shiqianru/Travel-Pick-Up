package com.lxsg.travelpu.controller.user;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lxsg.common.ConstantClassField;
import com.lxsg.travelpu.doman.CategoryUrlVO;
import com.lxsg.travelpu.doman.CommentVO;
import com.lxsg.travelpu.doman.LikeVO;
import com.lxsg.travelpu.doman.PostVO;
import com.lxsg.travelpu.doman.UserVO;
import com.lxsg.travelpu.service.user.PostService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@RequestMapping("/post")
public class PostAction  extends ActionSupport{
	
	@Autowired
	private PostService postService;
	
	private List<PostVO> postList=new ArrayList<PostVO>();
	
	private String SUCCESS = ConstantClassField.SUCCESS;
	private String ERROR = ConstantClassField.ERROR;
	
	private Integer postId;
	private Integer userId;

	
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

	/**
	 * 去主页
	 * @param userVO
	 * @return
	 */
	@RequestMapping("/getAllPost")
	public String getAllPost(){
		UserVO userVO=(UserVO) ActionContext.getContext().getSession().get("userVO");
		postList=postService.getAllPost(userVO.getId());
		System.out.println(postList.size());
		
		for (PostVO postVO : postList) {
			//得到帖子对应的图片列表
			List<CategoryUrlVO> imgUrlVO=postService.getCategoryByPostId(postVO.getId(),userVO.getId());
			if(imgUrlVO.size()>0){
				postVO.setHomePageImgUrlVO(imgUrlVO.get(0));
			}
		}

		ActionContext.getContext().getSession().put("postList", postList);
		
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
		
		//得到帖子的总赞数和总评数
		int likeCount=postService.getPostLikeCount(postId);
		int commentCount=postService.getPostCommentCount(postId);

		//用户是否赞过该帖子
		int flag=postService.isUserLikeThisPost(postId,userVO.getId());
		if(flag>0){
			ActionContext.getContext().getSession().put("isLikeThisPost", "Y");
		}
		
		//用户是否评论过该帖子
		int count=postService.isUserCommentThisPost(postId,userVO.getId());
		if(count>0){
			ActionContext.getContext().getSession().put("isCommentThisPost", "Y");
		}
		

		List<CommentVO> commList=postService.getAllCommentOfPost(postId);

		ActionContext.getContext().getSession().put("commList", commList);
		ActionContext.getContext().getSession().put("likeCount", likeCount);
		ActionContext.getContext().getSession().put("commentCount", commentCount);
		ActionContext.getContext().getSession().put("postDetail", postVO);
		ActionContext.getContext().getSession().put("imgUrl", imgUrlVO);
		
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
					int c=postService.updatePostId(categoryUrlVO.getId(),postVO.getId());
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
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
	
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
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
	
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
		
		List<CommentVO> commList=postService.getAllCommentOfPost(postId);

		ActionContext.getContext().getSession().put("commList", commList);
		
		try {
			response.getWriter().write("1");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}
	
}
