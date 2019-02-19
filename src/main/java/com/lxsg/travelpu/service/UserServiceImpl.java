package com.lxsg.travelpu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lxsg.travelpu.dao.UserDao;
import com.lxsg.travelpu.doman.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User getAll() {
		// TODO Auto-generated method stub
		return userDao.getAll();
	}

}
