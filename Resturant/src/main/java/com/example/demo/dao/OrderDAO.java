package com.example.demo.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.example.demo.model.Foodlist;
import com.example.demo.model.Item;


@Component
public interface OrderDAO {
	
	public int insertFoodlist(List<Item> cart,int tableno);
    
}
