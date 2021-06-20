package com.example.demo.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.example.demo.model.CutomerId;
import com.example.demo.model.Foods;
import com.example.demo.model.OrderDetails;
import com.example.demo.model.Orders;

@Component
public class ChefImplDAO implements ChefDAO {

	
	private List<List<Orders>> flist; 
	private List<Orders> foodList;
	private List<OrderDetails> user;
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	private Orders orders;
	
	@Autowired
	private OrderDetails orderDetails;
	
	

	@Override
	public List<OrderDetails> userId(){
		user = new ArrayList<OrderDetails>();
		
		String query1 = "select distinct user_id from cart where status='no'";
		String user_id=null;
		List<Map<String, Object>> userid = jdbcTemplate.queryForList(query1);
		for(Map<String, Object> users : userid) {
			
			user_id = (String) users.get("user_id");
			user.add(new OrderDetails(user_id));
	}
		return user;
	}
	
	
	@Override
	public List<List<Orders>> showTable() {
		
		flist = new ArrayList<List<Orders>>();
		foodList = new ArrayList<Orders>();
		
		
		String query1 = "select distinct user_id from cart where status='no'";
		String user_id=null;
		List<Map<String, Object>> userid = jdbcTemplate.queryForList(query1);
		for(Map<String, Object> user : userid) {
			
			user_id = (String) user.get("user_id");
			
			String query2 = "select c.tabno,c.fQua,f.food_name from cart c,food f where c.fid=f.food_id and user_id=?";
			List<Map<String, Object>> foodRows = jdbcTemplate.queryForList(query2,user_id);
			for (Map<String, Object> foodRow : foodRows) {
				
				int tableNo = Integer.parseInt(String.valueOf(foodRow.get("tabno")));
			    String foodId = (String) foodRow.get("food_name");
			    int foodQuantity = Integer.parseInt(String.valueOf(foodRow.get("fQua")));
			
			    foodList.add(new Orders(user_id,foodId, tableNo, foodQuantity));
			}
			
			flist.add(foodList);
		}
		return flist;
	}


	@Override
	public void updateTable(String id) {
		
		String query = "update cart set status='yes' where user_id=(?)";
		 jdbcTemplate.update(query, id);
	}

	
	

	
	
}