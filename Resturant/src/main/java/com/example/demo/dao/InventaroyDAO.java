package com.example.demo.dao;



import java.util.List;

import org.springframework.stereotype.Component;

import com.example.demo.model.Foods;
import com.example.demo.model.Ordergrandtotal;
import com.example.demo.model.Ordersummary;

@Component
public interface InventaroyDAO {
	
	public int insertFooditem(Foods foods);
	public int deleteFooditem(int foods);
	public int updateFooditem(Foods foods);
	public List<Ordersummary> getOrdersummary();
	public List<Ordergrandtotal> getGrandtotal();
	

}
