package com.org.action;

import com.opensymphony.xwork2.ActionSupport;
import com.org.service.*;

import java.util.*;

@SuppressWarnings( { "serial", "unchecked" })
public class TicketAction extends ActionSupport {
	//from the forms of jsp
	private String title;
	private String city;
	private int cateid;
	private String cate;//convert by "cateid"
	
	//the interface to service layer
	private ITicketService ticketservice;
	
	//return to jsp
	private List ticket;

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

	public int getCateid() {
		return cateid;
	}

	public void setCateid(int cateid) {
		this.cateid = cateid;
	}

	public String getCate() {
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}

	public ITicketService getTicketservice() {
		return ticketservice;
	}

	public void setTicketservice(ITicketService ticketservice) {
		this.ticketservice = ticketservice;
	}

	public List getTicket() {
		return ticket;
	}

	public void setTicket(List ticket) {
		this.ticket = ticket;
	}

	public String SearchTickets() throws Exception {
		System.out.println("in action TicketAction");
		if (this.getTitle() == null || this.getTitle().equals("")) {
			this.setTitle("");
		}
		if (this.getCateid() == 0) {
			this.setCate("电影");
		}
		if (this.getCateid() == 1) {
			this.setCate("演唱会");
		}
		if (this.getCateid() == 2) {
			this.setCate("体育赛事");
		}
		if (this.getCateid() == 3) {
			this.setCate("");
		} 
		if (this.getCity() == null || this.getCity().equals("") || this.getCity().equals("quanguo")) {
			this.setCity("");
		} 
		System.out.println("in action TicketAction   this.title="+this.title);
		System.out.println("in action TicketAction   this.city="+this.city);
		System.out.println("in action TicketAction   this.cate="+this.cate);
		ticket = ticketservice.searchTickets(this.title,this.city,this.cate);
		
		System.out.println("action TicketAction over");
		if(ticket==null||ticket.size()==0)
			return "fail";
		else
			return "success";
	}


}
