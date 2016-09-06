package com.org.dao;

import com.org.model.User;

public interface IUserDao {
	public boolean usernameExist(String username);
	public void save(User user);	
	public boolean loginQuery(String username,String password);
	

	
	//��id��ѯ�û�
	public User queryByID(int id);
	//��name pwd��ѯ�û�
	//���money
	public boolean updateByUsername(String username,double money);
	
	
	
}
