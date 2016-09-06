package com.org.action;

import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.org.model.User;
import com.org.service.IUserService;

@SuppressWarnings("serial")
public class UserAction extends ActionSupport{
	private int userid;
	private String username;
	private String password;
	private int age;
	private Date birth;
	private String email;
	private String address;
	private String telephone;
	private double money;
	
	private IUserService userservice;
	
	
	public int getUserid() {
		return userid;
	}


	public void setUserid(int userid) {
		this.userid = userid;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public Date getBirth() {
		return birth;
	}


	public void setBirth(Date birth) {
		this.birth = birth;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
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


	public double getMoney() {
		return money;
	}


	public void setMoney(double money) {
		this.money = money;
	}

	public IUserService getUserservice() {
		return userservice;
	}


	public void setUserservice(IUserService userservice) {
		this.userservice = userservice;
	}

	public String regist() throws Exception {
		System.out.println("in action UserAction.regist");
		User user = new User();
		user.setUsername(this.getUsername());
		user.setPassword(this.getPassword());
		user.setAge(this.getAge());
		user.setBirth(this.getBirth());
		user.setEmail(this.getEmail());
		user.setAddress(this.getAddress());
		user.setTelephone(this.getTelephone());
		user.setBirth(this.getBirth());
		double temp = 0;
		user.setMoney(temp);
		// 调用业务逻辑组件保存该产品
		if (userservice.regist(user)) {
			System.out.println("action UserAction.Regist is over");
			return "success";
		} else {
			System.out.println("action UserAction.Regist is over");
			addActionError("添加用户失败!");
			return "error";
		}

	}
	
	@SuppressWarnings("unchecked")
	public String login() throws Exception {
		System.out.println("in action UserAction.login");
		if (userservice.login(this.getUsername(), this.getPassword())) {
			// 如果为合法用户，在session范围中添加属性login，其属性值为true，
			ActionContext.getContext().getSession().put("login", username);
			System.out.println("action UserAction.login is over");
			return "success";
		} else {
			System.out.println("action UserAction.login is over");
			return "error";
		}
	}
	
	@SuppressWarnings("unchecked")
	public String logout() throws Exception {
		Map session = ActionContext.getContext().getSession();
		session.remove("login");
		return "success";
	}
}
