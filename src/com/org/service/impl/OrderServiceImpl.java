package com.org.service.impl;


import java.util.List;

import com.org.dao.IOrderDao;
import com.org.model.Order;
import com.org.service.IOrderService;

public class OrderServiceImpl implements IOrderService {

	private IOrderDao orderdao;

	public IOrderDao getOrderdao() {
		return orderdao;
	}

	public void setOrderdao(IOrderDao orderdao) {
		this.orderdao = orderdao;
	}

	public List<Order> SearchOrderByUsername(String username) throws Exception {
		System.out.println("in service OrderServiceImpl.SearchOrderByUsername");
		try {
			return orderdao.SearchOrderByUsername(username);
		} catch (Exception e) {
			throw new Exception("按username搜索订单出现异常,请重试");
		}
	}

	public void SaveOrder(Order order) throws Exception {
		System.out.println("in service OrderServiceImpl.SaveOrder");
		try {
			orderdao.SaveOrder(order);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			throw new Exception("存入订单出现异常,请重试");
		}
	}
}

