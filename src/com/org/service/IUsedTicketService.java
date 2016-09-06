package com.org.service;

import java.util.List;
import com.org.model.*;
public interface IUsedTicketService {
	List<Usedticket> SearchUsedTickets(String description) throws Exception;
	public boolean addUsedticket(Usedticket usedticket) throws Exception;
}
