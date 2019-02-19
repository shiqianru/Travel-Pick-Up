package com.lxsg.travelpu.dao;

import org.mybatis.spring.annotation.MapperScan;

import com.lxsg.travelpu.doman.User;

public interface UserDao {//多个参数需要使用@Param
	User getAll();
}
