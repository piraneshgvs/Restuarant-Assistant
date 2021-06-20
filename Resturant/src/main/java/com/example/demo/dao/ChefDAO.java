package com.example.demo.dao;

import org.springframework.stereotype.Component;

import com.example.demo.model.OrderDetails;
import com.example.demo.model.Orders;
import java.util.List;

@Component
public interface ChefDAO {
   public List<List<Orders>> showTable();
   public void updateTable(String id);
   public List<OrderDetails> userId();
}