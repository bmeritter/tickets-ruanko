package com.org.service;
import java.util.List;
import com.org.model.*;
public interface ITicketService {
	List<Ticket> searchTicketsByKeyword(String title) throws Exception;
	List<Ticket> searchTicketsByCity(String city) throws Exception;
	List<Ticket> searchTicketsByCate(String cate) throws Exception;
	List<Ticket> searchTickets(String title,String city,String cate) throws Exception;
	//List<Ticket> SearchFilmTicketsByAll(String cate,String city) throws Exception;
}
