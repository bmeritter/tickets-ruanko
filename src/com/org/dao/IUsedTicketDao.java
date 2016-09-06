package com.org.dao;

import java.util.List;
import com.org.model.*;
public interface IUsedTicketDao {
    List<Usedticket> SearchUsedTickets(String description);
    void saveUsedticket(Usedticket usedticket);
}
