package com.org.service;

import com.org.model.User;

public interface IUserService {
	boolean regist(User user) throws Exception;
	boolean login(String username,String password) throws Exception;
}
