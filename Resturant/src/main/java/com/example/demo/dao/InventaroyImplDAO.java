package com.example.demo.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.example.demo.model.Foods;
import com.example.demo.model.Ordergrandtotal;
import com.example.demo.model.Ordersummary;



@Component
public class InventaroyImplDAO implements InventaroyDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
		

	@Override
	public int insertFooditem(Foods foods) {
		String query = "insert into food values(?,?,?)";
		Object[] args = new Object[] { foods.getFid(),foods.getfName(),foods.getfPrice() };

		int out = jdbcTemplate.update(query, args);

		return out;
	}

	@Override
	public int deleteFooditem(int foods) {
		String query = "Delete from food where food_id=?";
        int out = jdbcTemplate.update(query, foods);

		return out;
	}

	@Override
	public List<Ordersummary> getOrdersummary() {
		List<Ordersummary> ordersum=new ArrayList<Ordersummary>();
		String query = "select food.food_name, sum(cart.fQua) as Quantity,sum(cart.fTot) as Amount from food join cart  where cart.fid=food.food_id group by food.food_name";
		List<Map<String, Object>> ordersummary = jdbcTemplate.queryForList(query);

		for (Map<String, Object> foodRow : ordersummary) {
			
		
			String a = (String) foodRow.get("food_name");
			int b = Integer.parseInt(String.valueOf(foodRow.get("quantity")));
			long c =  Integer.parseInt(String.valueOf(foodRow.get("amount")));
			
			ordersum.add(new Ordersummary(a,b,c));
		}
		
		
		return ordersum;
	   }

	@Override
	public List<Ordergrandtotal> getGrandtotal() {
		List<Ordergrandtotal> ordergrandtotal=new ArrayList<Ordergrandtotal>();
		
		String query ="select sum(fTot) from cart";
		List<Map<String, Object>> ordergrand = jdbcTemplate.queryForList(query);

		for (Map<String, Object> total : ordergrand ) {
			
		
		int a = Integer.parseInt(String.valueOf(total.get("sum(fTot)")));
			
			ordergrandtotal.add(new Ordergrandtotal(a));
		}
		
		
		return ordergrandtotal;
	   }

	@Override
	public int updateFooditem(Foods foods) {
		String query="update food set food_name=?,price=? where food_id=?";
		Object[] args = new Object[] {foods.getfName(),foods.getfPrice(),foods.getFid() };

		int out = jdbcTemplate.update(query, args);

		return out;
	}
	
	

}
