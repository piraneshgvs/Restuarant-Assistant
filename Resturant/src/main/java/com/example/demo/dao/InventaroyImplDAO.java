package com.example.demo.dao;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.example.demo.model.Foods;
import com.example.demo.model.Ordergrandtotal;
import com.example.demo.model.Ordersummary;
import com.example.demo.model.Phone;





@Component
public class InventaroyImplDAO implements InventaroyDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
		

	@Override
	public int insertFooditem(String foodname, int foodprice,byte[] images) {
		String query = "insert into food(food_name,price,images) values(?,?,?)";
		

		int out = jdbcTemplate.update(query,foodname, foodprice,images);

		return out;
	}

	@Override
	public int deleteFooditem(int foods) {
		System.out.println(foods);
		String query = "Delete from food where food_id=?";
        int out = jdbcTemplate.update(query, foods);

		return out;
	}

	@Override
	public List<Ordersummary> getOrdersummary(String date,String date1) {
		List<Ordersummary> ordersum=new ArrayList<Ordersummary>();
		String query = "select food.food_name, sum(cart.fQua) as Quantity,sum(cart.fTot) as Amount from food join cart  where cart.fid=food.food_id AND DATE(cart.date) between (?) and (?) group by food.food_name";
		List<Map<String, Object>> ordersummary = jdbcTemplate.queryForList(query,date,date1);

		for (Map<String, Object> foodRow : ordersummary) {
			
		
			String a = (String) foodRow.get("food_name");
			int b = Integer.parseInt(String.valueOf(foodRow.get("quantity")));
			long c =  Integer.parseInt(String.valueOf(foodRow.get("amount")));
			
			ordersum.add(new Ordersummary(a,b,c));
		}
		
		
		return ordersum;
	   }

	@Override
	public List<Ordergrandtotal> getGrandtotal(String date,String date1) {
		List<Ordergrandtotal> ordergrandtotal=new ArrayList<Ordergrandtotal>();
		
		String query ="select sum(fTot) from cart where DATE(date) between (?) and (?)";
		List<Map<String, Object>> ordergrand = jdbcTemplate.queryForList(query,date,date1);

		for (Map<String, Object> total : ordergrand ) {
			
		
		int a = Integer.parseInt(String.valueOf(total.get("sum(fTot)")));
			
			ordergrandtotal.add(new Ordergrandtotal(a));
		}
		
		
		return ordergrandtotal;
	   }

	@Override
	public List<String> editFooditem(int id) {
		List<String> update=new ArrayList<String>();
		int out=1;
		String query="select food_name,price from food where food_id=?";
		
		List<Map<String, Object>> updateid = jdbcTemplate.queryForList(query,id);

		for (Map<String, Object> updateids : updateid) {
			
		
			String a = (String) updateids.get("food_name");
			String b = String.valueOf(updateids.get("price"));
			
			
			update.add(a);
			update.add(b);
			update.add(String.valueOf(id));
				}
		
	return update;

		
	}

	@Override
	public void updateFoodItem(int id, String name, String price) {
		// TODO Auto-generated method stub
		
		String query = "update food set food_name=?,price=? where food_id= ? ";
		
	    jdbcTemplate.update(query,name,price,Integer.valueOf(id));
		
	}

	@Override
	public void updateFoodAvailable(int id) {
		// TODO Auto-generated method stub
		String query = "update food set available='no' where food_id= ? ";
		jdbcTemplate.update(query,id);
	}

	@Override
	public void updateFoodAvailable1(int id) {
		// TODO Auto-generated method stub
		String query = "update food set available='yes' where food_id= ? ";
		jdbcTemplate.update(query,id);
		
	}

	

}
