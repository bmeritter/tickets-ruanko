package com.org.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.org.dao.*;
import com.org.model.Ticket;

public class TicketDaoImpl extends HibernateDaoSupport implements ITicketDao {

	@SuppressWarnings("unchecked")
	public List<Ticket> searchTicketsByKeyword(String title) {
		System.out.println("in dao TicketDaoImpl   search keyword");
		String query = "select u from Ticket as u where u.title like '"
				+ "%" + title + "%'";
		System.out.println("in dao TicketDaoImpl   search keyword query:"+query);
		List sl = getHibernateTemplate().find(query);
		System.out.println("in dao TicketDaoImpl   "+sl.size()+" tickets match");
		return sl;
	}

	@SuppressWarnings("unchecked")
	public List<Ticket> searchTicketsByCity(String city) {
		System.out.println("in dao TicketDaoImpl   search city");
		String query = "select u from Ticket as u where u.city like '"
				+ city + "'";
		System.out.println("in dao TicketDaoImpl   search city query:"+query);
		List sl = getHibernateTemplate().find(query);
		System.out.println("in dao TicketDaoImpl   "+sl.size()+" tickets match");
		return sl;
	}
	@SuppressWarnings("unchecked")
	public List<Ticket> searchTicketsByCate(String cate){
		System.out.println("in dao TicketDaoImpl   search cate");
		String query = "select u from Ticket as u where u.cate like '"
				+ cate + "'";
		System.out.println("in dao TicketDaoImpl   search cate query:"+query);
		List sl = getHibernateTemplate().find(query);
		System.out.println("in dao TicketDaoImpl   "+sl.size()+" tickets match");
		return sl;
	}
	@SuppressWarnings("unchecked")
	public List<Ticket> searchAllTickets(){
		System.out.println("in dao TicketDaoImpl   search all");
		String query = "from Ticket";
		System.out.println("in dao TicketDaoImpl   search all query:"+query);
		List sl = getHibernateTemplate().find(query);
		System.out.println("in dao TicketDaoImpl   "+sl.size()+" tickets match");
		return sl;
	}
	/*@SuppressWarnings("unchecked")
	public List<Filmticket> SearchFilmTicketsByAll(String cate,String city){
		System.out.println(cate+" "+city);
		String query = "select u from Filmticket as u where u.cate like '"
				+ cate + "'"+" and u.city like '"+city+"'";
		System.out.println(query);
		List sl = getHibernateTemplate().find(query);
		return sl;
	}*/
	
	
}
