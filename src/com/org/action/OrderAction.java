package com.org.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.org.model.Order;
import com.org.service.IOrderService;

public class OrderAction {
	private IOrderService ordercontrol;
	private int orderid;
	private String username;
	private String realname;
	private String address;
	private String telephone;
	private String description;
	private String paytype;
	private String tickettitle;
	private String price;
	
	private List<Order> order;

	public List<Order> getOrder() {
		return order;
	}

	public void setOrder(List<Order> order) {
		this.order = order;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public IOrderService getOrdercontrol() {
		return ordercontrol;
	}

	public void setOrdercontrol(IOrderService ordercontrol) {
		this.ordercontrol = ordercontrol;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPaytype() {
		return paytype;
	}

	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}

	public String getTickettitle() {
		return tickettitle;
	}

	public void setTickettitle(String tickettitle) {
		this.tickettitle = tickettitle;
	}

	public String SearchOrderByUsername() throws Exception {
		if (this.getUsername() == null) {
			return "input";
		} else if (this.getUsername() == "" || this.getUsername().equals("")) {
			return "input";
		} else {
			order = ordercontrol.SearchOrderByUsername(this.getUsername());
			return "success";
		}
	}
	@SuppressWarnings("unchecked")
	public String SaveOrderTmp(){
		System.out.println("in action OrderAction.SaveOrderTmp   ");
		System.out.println(this.getTickettitle());
		System.out.println(this.getPrice());
		ActionContext.getContext().getSession().put("Tickettitle", this.getTickettitle());
		ActionContext.getContext().getSession().put("Ticketprice", this.getPrice());
		System.out.println("action OrderAction.SaveOrderTmp over");
		return "success";
	}
	public String SaveOrder() throws Exception {
		System.out.println("in action OrderAction.SaveOrder   ");
		this.setTickettitle(ActionContext.getContext().getSession().get("Tickettitle").toString());
		this.setPrice(ActionContext.getContext().getSession().get("Ticketprice").toString());

		Order ordertemp = new Order();
		ordertemp.setUsername(this.getUsername());
		ordertemp.setRealname(this.getRealname());
		ordertemp.setDescription(this.getDescription());
		ordertemp.setAddress(this.getAddress());
		ordertemp.setPaytype(this.getPaytype());
		ordertemp.setTickettitle(this.getTickettitle());
		ordertemp.setPrice(this.getPrice());
		ordertemp.setTelephone(this.getTelephone());

		ordercontrol.SaveOrder(ordertemp);
		System.out.println("action OrderAction.SaveOrder over");
		return "success";
	}
}
