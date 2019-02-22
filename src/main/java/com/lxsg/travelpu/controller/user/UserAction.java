package com.lxsg.travelpu.controller.user;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lxsg.common.ConstantClassField;
import com.lxsg.travelpu.doman.UserVO;
import com.lxsg.travelpu.pojo.User;
import com.lxsg.travelpu.service.user.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@Controller
@RequestMapping("/user")
public class UserAction extends ActionSupport {
	
	@Autowired
	private UserService userService;
	
	private String SUCCESS = ConstantClassField.SUCCESS;
	private String ERROR = ConstantClassField.ERROR;
	
	private String username;
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	//文件上传
	private File myfile; //得到上传的文件
    private String myfileContentType; //得到文件的类型
    private String myfileFileName; //得到文件的名称

	public File getMyfile() {
		return myfile;
	}

	public void setMyfile(File myfile) {
		this.myfile = myfile;
	}

	public String getMyfileContentType() {
		return myfileContentType;
	}

	public void setMyfileContentType(String myfileContentType) {
		this.myfileContentType = myfileContentType;
	}

	public String getMyfileFileName() {
		return myfileFileName;
	}

	public void setMyfileFileName(String myfileFileName) {
		this.myfileFileName = myfileFileName;
	}

	public String editMaterial(){
		String flag=userService.editMaterial();
		if(flag.equals("true")){
			return SUCCESS;
		}
		return ERROR;
	}
	
	/**
	 * 登录时验证用户名密码
	 * @return
	 */
	@RequestMapping(value="/checkUser", method = RequestMethod.POST)
	@ResponseBody
	public String checkUser(){
		HttpServletResponse response = ServletActionContext.getResponse();
        response.setCharacterEncoding("UTF-8");
        
        String pwd=userService.checkUser(username);
        try {
        	if(pwd!=null && pwd.equals(password)){
        		response.getWriter().write("1");
        	}else{
        		response.getWriter().write("0");
        	}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 登录
	 * @return
	 */
	@RequestMapping("/login")
	public String login(){
		UserVO userVO=new UserVO();
		userVO.setPassword(password);
		userVO.setUsername(username);
		
		User user=userService.getUserByName(userVO);
		
		ActionContext.getContext().getSession().put("user", user);
		
		
		return SUCCESS;
	}

	/**
	 * 注册
	 * @return
	 */
	@RequestMapping("/regist")
	public String regist(){
		User user=new User();
		if(myfile!=null){
			uploadDisplayPic();
			user.setDisplayPicUrl("upload/"+myfileFileName);
			System.out.println(myfileFileName);
		}
		user.setUsername(username);
		user.setPassword(password);
		
		Integer id=userService.regist(user);
		if(id!=null){
			ActionContext.getContext().getSession().put("user", user);
			return SUCCESS;
		}
		
        return ERROR;
    }
	
	public String uploadDisplayPic(){
		//获取要保存文件夹的物理路径(绝对路径)
        String realPath=ServletActionContext.getServletContext().getRealPath("/upload");
        File file = new File(realPath);
        
        //测试此抽象路径名表示的文件或目录是否存在。若不存在，创建此抽象路径名指定的目录，包括所有必需但不存在的父目录。
        if(!file.exists()){
        	file.mkdirs();
        }
        
        try {
            //保存文件
        	//FileUtils.copyFile(file1,file2);把file1拷贝到file2
        	//File(File parent, String child)根据 parent 抽象路径名和 child 路径名字符串创建一个新 File 实例
            FileUtils.copyFile(myfile, new File(file,myfileFileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
		return null;
	}
	
	/**
	 * 验证用户名是否存在
	 */
	@RequestMapping("/isNameExist")
	public String isNameExist(){
		HttpServletResponse response = ServletActionContext.getResponse();
        response.setCharacterEncoding("UTF-8");
		User user=userService.isNameExist(username);
		if(user!=null){
			try {
				response.getWriter().write("1");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			try {
				response.getWriter().write("0");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
}
