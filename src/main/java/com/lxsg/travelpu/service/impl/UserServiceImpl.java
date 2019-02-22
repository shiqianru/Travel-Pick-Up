package com.lxsg.travelpu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lxsg.travelpu.dao.UserDao;
import com.lxsg.travelpu.doman.UserVO;
import com.lxsg.travelpu.pojo.User;
import com.lxsg.travelpu.service.user.UserService;

@Repository
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;

	@Override
	public String editMaterial() {
		// TODO Auto-generated method stub
		int count=userDao.editMaterial();
		if(count>0){
			return "true";
		}
		return "false";
	}

	@Override
	public String checkUser(String username) {
		return userDao.checkUser(username);
	}

	@Override
	public User getUserByName(UserVO userVO) {
		return userDao.getUserByName(userVO);
	}

	@Override
	public Integer regist(User user) {
		// TODO Auto-generated method stub
		return userDao.regist(user);
	}

	@Override
	public User isNameExist(String username) {
		// TODO Auto-generated method stub
		return userDao.isNameExist(username);
	}
	
}
