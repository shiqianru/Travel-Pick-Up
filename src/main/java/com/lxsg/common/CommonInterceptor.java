package com.lxsg.common;


import org.apache.struts2.ServletActionContext;

import com.lxsg.travelpu.doman.UserVO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class CommonInterceptor extends MethodFilterInterceptor{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected String doIntercept(ActionInvocation actionInvocation) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("---------------进入拦截器-------------");
		// 判断session中是否保存了后台用户的信息
		UserVO existAdminUser = (UserVO)ActionContext.getContext().getSession().get("userVO");
		if(existAdminUser == null){
			//没有登录进行访问
			ActionSupport actionSupport = (ActionSupport)actionInvocation.getAction();
			actionSupport.addActionError("亲！您还没有登录，没有权限来访问！");
			return "loginFail";
		}else{
			//已经登录
			return actionInvocation.invoke();
		}
	}

	

}
