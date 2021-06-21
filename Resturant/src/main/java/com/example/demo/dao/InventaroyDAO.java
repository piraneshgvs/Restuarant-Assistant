package com.example.demo.dao;



import java.util.List;

import org.springframework.stereotype.Component;

import com.example.demo.model.Foods;
import com.example.demo.model.Ordergrandtotal;
import com.example.demo.model.Ordersummary;

@Component
public interface InventaroyDAO {
	

	public int insertFooditem(String foodname, int foodprice,byte[] images);
	public int deleteFooditem(int foods);
	public List<String> editFooditem(int id);
	public List<Ordersummary> getOrdersummary(String date,String date1);
	public List<Ordergrandtotal> getGrandtotal(String date,String date1);
	public void updateFoodItem(int id, String name, String price);
	public void updateFoodAvailable(int id);
	public void updateFoodAvailable1(int id);
	
	

}
