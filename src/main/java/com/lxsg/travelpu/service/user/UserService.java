package com.lxsg.travelpu.service.user;

import java.util.List;

import org.springframework.stereotype.Service;

import com.lxsg.travelpu.doman.PostVO;
import com.lxsg.travelpu.doman.UserVO;
import com.lxsg.travelpu.pojo.User;


@Service
public interface UserService {

	String editMaterial();
	
	//验证用户名密码是否正确
	String checkUser(String username);
	
	//登录
	UserVO getUserByName(UserVO userVO);
	
	//注册
	Integer regist(UserVO userVO);
	
	//验证用户名是否存在
	User isNameExist(String username);

	int updateUser(UserVO currUserVO);

	List<PostVO> searchPost(String searchContentUser);


}
