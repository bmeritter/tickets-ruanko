package com.org.service.impl;

import com.org.dao.IUserDao;
import com.org.model.User;
import com.org.service.IUserService;

public class UserServiceImpl implements IUserService {
	private IUserDao userdao;
	public boolean regist(User user) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("in service UserServiceImpl.regist");
		if(userdao.usernameExist(user.getUsername())){
			System.out.println("service UserServiceImpl.regist is over fail");
			return false;
		}
		else{
			userdao.save(user);
			System.out.println("service UserServiceImpl.regist is over success");
			return true;
		}
	}
	public IUserDao getUserdao() {
		return userdao;
	}
	public void setUserdao(IUserDao userdao) {
		this.userdao = userdao;
	}
	public boolean login(String username, String password) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("in service UserServiceImpl.login");
		if(userdao.loginQuery(username, password)){
			System.out.println("service UserServiceImpl.login is over success");
			return true;
		}
		else{
			System.out.println("service UserServiceImpl.login is over fail");
			return false;
		}
	}

}
