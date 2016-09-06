package com.org.service;

import java.util.List;

import com.org.model.Order;

public interface IOrderService {
	List<Order> SearchOrderByUsername(String username) throws Exception;
	void SaveOrder(Order order) throws Exception;
}
