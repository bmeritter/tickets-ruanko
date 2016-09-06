package com.org.dao;
import java.util.List;
import com.org.model.*;
public interface ITicketDao {
    List<Ticket> searchTicketsByKeyword(String title);
    List<Ticket> searchTicketsByCity(String city);
    List<Ticket> searchTicketsByCate(String cate);
    List<Ticket> searchAllTickets();
}
