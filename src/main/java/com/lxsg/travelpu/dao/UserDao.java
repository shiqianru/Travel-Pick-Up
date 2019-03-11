package com.lxsg.travelpu.dao;

import java.util.List;

import com.lxsg.travelpu.doman.PostVO;
import com.lxsg.travelpu.doman.UserVO;
import com.lxsg.travelpu.pojo.User;

public interface UserDao {//多个参数需要使用@Param
	User getAll();

	int editMaterial();
	
	//验证用户名密码是否正确
	String checkUser(String username);
	
	//得到当前用户
	UserVO getUserByName(UserVO user);
	
	//注册
	Integer regist(UserVO userVO);
	
	//验证用户名是否存在
	User isNameExist(String username);

	UserVO getUser(Integer id);

	//全部帖子
	List<PostVO> getAllPost();

	int updateUser(UserVO currUserVO);

	List<PostVO> searchPost(String searchContentUser);

}
