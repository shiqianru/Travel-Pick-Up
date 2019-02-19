package com.lxsg.travelpu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lxsg.travelpu.doman.User;
import com.lxsg.travelpu.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

@Controller
public class Test{
	@Autowired
	private UserService userService;
	
	private User user;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String test(){
		user=userService.getAll();
		return "success";
	}

}
