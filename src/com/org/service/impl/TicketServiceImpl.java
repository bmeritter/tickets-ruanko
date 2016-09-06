package com.org.service.impl;

import com.org.service.*;
import com.org.dao.*;
import com.org.model.*;

import cose.util.Segment;

import java.util.ArrayList;
import java.util.List;
public class TicketServiceImpl implements ITicketService {	
	//注入的DAO对象
	private ITicketDao ticketdao;

	public ITicketDao getTicketdao() {
		return ticketdao;
	}

	public void setTicketdao(ITicketDao ticketdao) {
		this.ticketdao = ticketdao;
	}

	private List<Ticket> retainTickets(List<Ticket> l1,List<Ticket>l2){
		List<Ticket> result = new ArrayList<Ticket>();
		for(int i=0 ; i <l1.size();i++){
			for(int j=0 ; j<l2.size();j++){
				if(l1.get(i).getId()==l2.get(j).getId()){
					result.add(l1.get(i));
					break;
				}
			}
		}
		return result;
	}
	
	public List<Ticket> searchTickets(String title,String city,String cate) throws Exception{
		System.out.println("in service TicketServiceImpl");
		List<Ticket> ticket = ticketdao.searchAllTickets();
		
		if(title.equals("")){System.out.println("in service TicketServiceImpl   not search title");}
		else{
			/*List<Ticket> temp = this.searchTicketsByKeyword(title);
			ticket=retainTickets(ticket,temp);
			System.out.println("in service TicketServiceImpl   "+ticket.size()+" tickets match");*/
			
			Segment s = new Segment();
			System.out.println("in service TicketServiceImpl   title:"+title);
			List <String> wordlist=s.segment(title);
			System.out.println("segment result:");
			for(int i=0;i<wordlist.size();i++){
				System.out.println(wordlist.get(i));
			}
			for(int i=0;i<wordlist.size();i++){
				List<Ticket> temp = this.searchTicketsByKeyword(wordlist.get(i));
				ticket=retainTickets(ticket,temp);
			}
			System.out.println("in service TicketServiceImpl   "+ticket.size()+" tickets match");
		}
		
		
		if(city.equals("")){System.out.println("in service TicketServiceImpl   not search city");}
		else{
			List<Ticket> temp = this.searchTicketsByCity(city);
			ticket=retainTickets(ticket,temp);
			System.out.println("in service TicketServiceImpl   "+ticket.size()+" tickets match");
		}
		if(cate.equals("")){System.out.println("in service TicketServiceImpl   not search cate");}
		else{
			List<Ticket> temp = this.searchTicketsByCate(cate);
			ticket=retainTickets(ticket,temp);
			System.out.println("in service TicketServiceImpl   "+ticket.size()+" tickets match");
		}
		System.out.println("service TicketServiceImpl is over");
		return ticket;
	};
	
	public List<Ticket> searchTicketsByKeyword(String title) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("in service TicketServiceImpl   search keyword");
		try {
			return ticketdao.searchTicketsByKeyword(title);     	
		} catch (Exception e) {
			System.err.println(e.getMessage());
			throw new Exception("按title搜索票务出现异常,请重试");
		}
	}
	public List<Ticket> searchTicketsByCity(String city) throws Exception{
		// TODO Auto-generated method stub
		System.out.println("in service TicketServiceImpl   search city");
		try {
			return ticketdao.searchTicketsByCity(city);     	
		} catch (Exception e) {
			System.err.println(e.getMessage());
			throw new Exception("搜索city票务出现异常,请重试");
		}
	};
	public List<Ticket> searchTicketsByCate(String cate) throws Exception{
		// TODO Auto-generated method stub
		System.out.println("in service TicketServiceImpl   search cate");
		try {
			return ticketdao.searchTicketsByCate(cate);     	
		} catch (Exception e) {
			System.err.println(e.getMessage());
			throw new Exception("搜索cate票务出现异常,请重试");
		}
	};
}
