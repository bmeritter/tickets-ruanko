package com.org.action;

import java.util.Date;

import com.org.model.*;
import com.org.service.impl.*;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class AddUserAction extends ActionSupport {
	// 用户ID
	private int userid;
	// 用户名
	private String username;
	// 密码
	private String password;
	// 年龄
	private int age;
	// 生日
	private Date birth;
	// email地址
	private String email;
	private String address;
	private String telephone;
	private double money;

	public void setMoney(double money) {
		this.money = money;
	}

	public double getMoney() {
		return money;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
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

	// 各属性的setter和getter方法

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

	private UserServiceImpl addusercontrol;



	public UserServiceImpl getAddusercontrol() {
		return addusercontrol;
	}

	public void setAddusercontrol(UserServiceImpl addusercontrol) {
		this.addusercontrol = addusercontrol;
	}

	public String AddUser() throws Exception {
		// 将接受的参数设置到User实例中
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
		System.out.println(user.getUserid());
		System.out.println(user.getUsername());
		System.out.println(user.getPassword());
		System.out.println(user.getAddress());
		System.out.println(user.getAge());
		System.out.println(user.getEmail());
		System.out.println(user.getMoney());
		System.out.println(user.getTelephone());
		System.out.println(user.getBirth());
		if (addusercontrol.regist(user)) {
			return "success";
		} else {
			addActionError("添加用户失败!");
			return "input";
		}

	}

}
