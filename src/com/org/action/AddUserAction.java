package com.org.action;

import java.util.Date;

import com.org.model.*;
import com.org.service.impl.*;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class AddUserAction extends ActionSupport {
	// �û�ID
	private int userid;
	// �û���
	private String username;
	// ����
	private String password;
	// ����
	private int age;
	// ����
	private Date birth;
	// email��ַ
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

	// �����Ե�setter��getter����

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
		// �����ܵĲ������õ�Userʵ����
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
		// ����ҵ���߼��������ò�Ʒ
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
			addActionError("����û�ʧ��!");
			return "input";
		}

	}

}
