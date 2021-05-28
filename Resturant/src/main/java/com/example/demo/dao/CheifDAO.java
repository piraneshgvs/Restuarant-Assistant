package com.example.demo.dao;

import org.springframework.stereotype.Component;
import com.example.demo.model.Orders;
import java.util.List;

@Component
public interface CheifDAO {
   public List<Orders> showTable(int id);
   public void updateTable(String id);
}
