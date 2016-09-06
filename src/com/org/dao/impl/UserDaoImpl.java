package com.org.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.org.dao.IUserDao;
import com.org.model.*;

public class UserDaoImpl extends HibernateDaoSupport implements
		IUserDao {

	// 添加用户
	public void save(User user) {
		System.out.println("in dao UserDaoImpl   save");
		this.getHibernateTemplate().save(user);
	}

	// 按id查询用户
	public User queryByID(int id) {
		return (User) this.getHibernateTemplate().get(User.class, id);
	}

	// 按name查询用户
	@SuppressWarnings("unchecked")
	public boolean loginQuery(String username, String password) {
		System.out.println("in dao UserDaoImpl   loginQuery");
		String query = "select u from User as u where u.username like '"
			+ username + "'"+" and u.password like '"+password+"'";
		System.out.println("in dao UserDaoImpl   query:"+query);
		List list = getHibernateTemplate().find(query);
		System.out.println("in dao UserDaoImpl   "+list.size()+" users match");
		if (list.size()!=0){
			return true;
		}
		else
			return false;

	}

	// 添加money
	@SuppressWarnings("unchecked")
	public boolean usernameExist(String username) {
		System.out.println("in dao UserDaoImpl   usernameExist");
		String query = "select u from User as u where u.username like '"
				+ username + "'";
		System.out.println("in dao UserDaoImpl   query:"+query);
		List sl = getHibernateTemplate().find(query);
		System.out.println("in dao UserDaoImpl   "+sl.size()+" users match");
		if (sl.size()!=0){
			return true;
		}
		else
			return false;
	}

	// 按name 查询用户
	@SuppressWarnings("unchecked")
	public boolean updateByUsername(String username, double money) {
		
		System.out.println(username);
		System.out.println(money);
		User user = new User();
		List list = this.getHibernateTemplate().find("from User");
		System.out.println(list.size());
		for (int i = 0; i < list.size(); ++i) {
			user = (User) list.get(i);
			//this.getHibernateTemplate().delete(user);
			if (username.equals(user.getUsername())) {
				
				user.setMoney(money);
				System.out.println(user.getUsername());
				System.out.println(user.getMoney());
				this.getHibernateTemplate().update(user);
				//this.getHibernateTemplate().save(user);
				return true;
			}
		}
		return false;
	}
}
