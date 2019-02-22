package com.lxsg.travelpu.service.user;

import org.springframework.stereotype.Service;

import com.lxsg.travelpu.doman.UserVO;
import com.lxsg.travelpu.pojo.User;


@Service
public interface UserService {

	String editMaterial();
	
	//验证用户名密码是否正确
	String checkUser(String username);
	
	//登录
	User getUserByName(UserVO userVO);
	
	//注册
	Integer regist(User user);
	
	//验证用户名是否存在
	User isNameExist(String username);

}
