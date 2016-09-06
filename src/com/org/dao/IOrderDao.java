package com.org.dao;

import java.util.List;

import com.org.model.Order;

public interface IOrderDao {
	List<Order> SearchOrderByUsername(String username);
	void SaveOrder(Order order);
}
