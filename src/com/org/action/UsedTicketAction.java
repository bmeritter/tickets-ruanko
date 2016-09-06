package com.org.action;


import com.opensymphony.xwork2.ActionSupport;
import com.org.model.Usedticket;
import com.org.service.*;
import java.util.*;

@SuppressWarnings( { "serial", "unchecked" })
public class UsedTicketAction extends ActionSupport {
	private String description;
	private IUsedTicketService usedticketcontrol;
	public IUsedTicketService getUsedticketcontrol() {
		return usedticketcontrol;
	}

	public void setUsedticketcontrol(IUsedTicketService usedticketcontrol) {
		this.usedticketcontrol = usedticketcontrol;
	}
	private List ticket;
	private int ticketid;
	private int userid;
	private String city;
	private String title;
	private String cate;
	private double price;
	private String telephone;
	private Date deadline;
	private String qq;
	private String ico;

	public int getTicketid() {
		return ticketid;
	}

	public void setTicketid(int ticketid) {
		this.ticketid = ticketid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCate() {
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public Date getDeadline() {
		return deadline;
	}

	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}

	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}

	public String getIco() {
		return ico;
	}

	public void setIco(String ico) {
		this.ico = ico;
	}

	public List getTicket() {
		return ticket;
	}

	public void setTicket(List ticket) {
		this.ticket = ticket;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String SearchUsedTickets() throws Exception {
		// 不输入查询关键字，不执行操作
		System.out.println("in action TicketAction.SearchUsedTickets   ");
		if (this.getDescription() == null) {
			return "input";
		} else if (this.getDescription() == ""
				|| this.getDescription().equals("")) {
			return "input";
		}
		ticket = usedticketcontrol.SearchUsedTickets(this.getDescription());
		return "success";
		
	}
	public String AddUsedticket() throws Exception {
		Usedticket usedticket = new Usedticket();
		usedticket.setCate(cate);
		usedticket.setCity(city);
		usedticket.setDeadline(deadline);
		usedticket.setDescription(description);
		usedticket.setIco(ico);
		usedticket.setPrice(price);
		usedticket.setQq(qq);
		usedticket.setTelephone(telephone);
		usedticket.setTitle(title);
		usedticket.setUserid(userid);
		System.out.println(title);
		usedticketcontrol.addUsedticket(usedticket);
		return "success";
			
		
	}
}

