package com.lxsg.travelpu.doman;

import org.mybatis.spring.annotation.MapperScan;

@MapperScan
public class Test {
	
	private String name;
	
	private String age;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}
	
	

}
