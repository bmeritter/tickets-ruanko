package com.org.dao.impl;


import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.org.dao.IOrderDao;
import com.org.model.Order;

public class OrderDaoImpl extends HibernateDaoSupport implements IOrderDao {
	
	
	@SuppressWarnings("unchecked")
	public List<Order> SearchOrderByUsername(String username) {
		System.out.println("in dao OrderDaoImpl   SearchOrderByUsername");
		String query = "select u from Order as u where u.username like '"
				+ "%" + username + "%'";
		System.out.println("in dao OrderDaoImpl   search keyword query:"+query);
		List sl = getHibernateTemplate().find(query);
		return sl;
	}

	public void SaveOrder(Order order) {
		System.out.println("in dao OrderDaoImpl   SaveOrder");
		this.getHibernateTemplate().save(order);
	}
}

