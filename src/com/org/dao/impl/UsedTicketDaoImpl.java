package com.org.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.org.dao.*;
import com.org.model.Usedticket;

public class UsedTicketDaoImpl extends HibernateDaoSupport implements
		IUsedTicketDao {

	@SuppressWarnings("unchecked")
	public List<Usedticket> SearchUsedTickets(String description) {
		System.out.println("in dao UsedTicketDaoImpl   SearchUsedTickets");
		String query = "select u from Usedticket as u where u.description like '"
				+ "%" + description + "%'";
		System.out.println("in dao UsedTicketDaoImpl   search keyword query:"+query);
		List sl = getHibernateTemplate().find(query);
		return sl;
	}

	public void saveUsedticket(Usedticket usedticket) {
		this.getHibernateTemplate().save(usedticket);
	}

}
