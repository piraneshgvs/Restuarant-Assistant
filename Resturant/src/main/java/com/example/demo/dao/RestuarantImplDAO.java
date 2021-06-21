package com.example.demo.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.example.demo.model.Foods;

@Component
public class RestuarantImplDAO implements RestuarantDAO {
	
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	private static List<Foods> fList;
     

    /*
	
	public RestuarantImplDAO() {
		this.fList = new ArrayList<Foods>();
		this.fList.add(new Foods(1, "name 1", 20));
		this.fList.add(new Foods(2, "name 2", 21));
		this.fList.add(new Foods(3, "name 3", 22));
		this.fList.add(new Foods(4, "name 4", 23));
	}
	*/
	

	public List<Foods> findAll() {
		return this.fList;
	}

	public Foods find(int id) {
		for (Foods foodi : fList) {
			if (foodi.getFid()==id) {
			System.out.println("inside:find");
				return foodi;
			}
		}
		return null;
	}

	@Override
	public List<Foods> getAllFoods() {
		fList = new ArrayList<Foods>();
		String query = "select * from food where available='yes'";
		List<Map<String, Object>> foodRows = jdbcTemplate.queryForList(query);

		for (Map<String, Object> foodRow : foodRows) {
			
			int a = Integer.parseInt(String.valueOf(foodRow.get("food_id")));
			String b = (String) foodRow.get("food_name");
			int c = Integer.parseInt(String.valueOf(foodRow.get("price")));
			String d = (String) foodRow.get("available");
			byte[] e= (byte[]) foodRow.get("images");
			
			
			fList.add(new Foods(a,b,c,d,e));
		}
	
		return fList;
	}

	@Override
	public List<Foods> getAllFoods1() {
		ArrayList<Foods> fList1 = new ArrayList<Foods>();
		String query = "select * from food ";
		List<Map<String, Object>> foodRows = jdbcTemplate.queryForList(query);

		for (Map<String, Object> foodRow : foodRows) {
			
			int a = Integer.parseInt(String.valueOf(foodRow.get("food_id")));
			String b = (String) foodRow.get("food_name");
			int c = Integer.parseInt(String.valueOf(foodRow.get("price")));
			String d = (String) foodRow.get("available");
            byte[] e= (byte[]) foodRow.get("images");
			
			
			fList1.add(new Foods(a,b,c,d,e));

			
		}
	
		return fList1;
	}
	
	
	
	
	
}
