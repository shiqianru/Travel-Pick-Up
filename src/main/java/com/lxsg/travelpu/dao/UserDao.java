package com.lxsg.travelpu.dao;

import org.mybatis.spring.annotation.MapperScan;

import com.lxsg.travelpu.doman.UserVO;
import com.lxsg.travelpu.pojo.User;


public interface UserDao {//多个参数需要使用@Param
	User getAll();

	int editMaterial();
	
	//验证用户名密码是否正确
	String checkUser(String username);
	
	//得到当前用户
	User getUserByName(UserVO user);
	
	//注册
	Integer regist(User user);
	
	//验证用户名是否存在
	User isNameExist(String username);
}
