package com.org.service.impl;

import com.org.service.*;
import com.org.dao.*;
import com.org.model.*;

import java.util.List;
public class UsedTicketServiceImpl implements IUsedTicketService {	
	//注入的DAO对象
	private IUsedTicketDao ticketdao;
	public void setTicketdao(IUsedTicketDao Ticketdao) {
		this.ticketdao = Ticketdao;
	}
	public List<Usedticket> SearchUsedTickets(String description) throws Exception{
		System.out.println("in service UsedTicketServiceImpl.SearchUsedTickets   ");
		try {
			return ticketdao.SearchUsedTickets(description);     	
		} catch (Exception e) {	            
			throw new Exception("按description搜索票务出现异常,请重试");
		}
	}
	public boolean addUsedticket(Usedticket usedticket) throws Exception{
		try {
			ticketdao.saveUsedticket(usedticket);  
			return true;
		} catch (Exception e) {	            
			throw new Exception("发布二手票务出现异常,请重试");
		}
	}
	
}
