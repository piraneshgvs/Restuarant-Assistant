package com.example.demo.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import com.example.demo.model.Phone;
import com.example.demo.model.Phone;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.*;



@Component
public class PhoneImplDAO implements PhoneDAO  {
	
	
	@Autowired
	private JdbcTemplate jdbcTemplate;


	@Override
	public int insertUser(String phonenumber) {
		
		
		String query = "insert into user(user_id, phonenumber) values(?,?)";
		
		LocalDate obj = LocalDate.now();
		LocalTime obj2 = LocalTime.now();
		String id = phonenumber+"-"+String.valueOf(obj)+"-"+String.valueOf(obj2);
		System.out.println(id);
		
		Phone.setUserid(id);
		Object[] args = new Object[] { id, phonenumber};
		int out = jdbcTemplate.update(query, args);

		
		
		return out;
	}

	
	
	
}
