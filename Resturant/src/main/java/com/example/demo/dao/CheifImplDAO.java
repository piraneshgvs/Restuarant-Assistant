package com.example.demo.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.example.demo.model.CutomerId;
import com.example.demo.model.Foods;
import com.example.demo.model.Orders;

@Component
public class CheifImplDAO implements CheifDAO {

	
	private List<Orders> flist; 
	
	
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	@Override
	public List<Orders> showTable(int id) {
		
		flist = new ArrayList<Orders>();
		
		String user_id = null;
		String query1 = "select distinct user_id from cart where tabno=(?) and status='no'";
		List<Map<String, Object>> userid = jdbcTemplate.queryForList(query1,id);
		for (Map<String, Object> user : userid) {
		
		user_id = (String) user.get("user_id");
		break;
		}
		
		
		CutomerId.setCutid(user_id);
		System.out.println("inside"+CutomerId.getCutid());
		String query = "select fid, fQua from cart where user_id=(?) and status='no'";
		List<Map<String, Object>> foodRows = jdbcTemplate.queryForList(query,user_id);

		for (Map<String, Object> foodRow : foodRows) {
			
			int a = Integer.parseInt(String.valueOf(foodRow.get("fid")));
			int c = Integer.parseInt(String.valueOf(foodRow.get("fQua")));
		
			String query2 = "select food_name from food where food_id=(?)";
			List<Map<String, Object>> foodNames = jdbcTemplate.queryForList(query2,a);
			for(Map<String, Object> foodName : foodNames) {
				
				String fName = (String) foodName.get("food_name");
				System.out.println(fName);
				flist.add(new Orders(fName, c, id));
			}
			
			
		}
		String query3 = "update cart set status='pros' where user_id=(?)";
		 jdbcTemplate.update(query3, user_id);
		
		
		return flist;
	}


	@Override
	public void updateTable(String id) {
		
		String query = "update cart set status='yes' where user_id=(?)";
		 jdbcTemplate.update(query, id);
	}

	
	

	
	
}
