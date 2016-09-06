package com.org.dao;

import com.org.model.User;

public interface IUserDao {
	public boolean usernameExist(String username);
	public void save(User user);	
	public boolean loginQuery(String username,String password);
	

	
	//按id查询用户
	public User queryByID(int id);
	//按name pwd查询用户
	//添加money
	public boolean updateByUsername(String username,double money);
	
	
	
}
