package com.example.demo.dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import com.example.demo.entities.*;
import com.example.demo.model.Foodlist;
import com.example.demo.model.Phone;

@Component
public class OrderImplDAO implements OrderDAO{
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public int insertFoodlist(List<Item> cart, int tableno) {
		int out=1;
		int sum=0;
		
		System.out.println("userid:"+Phone.getUserid());

		String query = "insert into cart(tabno,user_id,fid,fQua,fTot,fgtotal) values(?,?,?,?,?,?)";
		for(int i=0;i<cart.size();i++) {
		System.out.println("id:"+cart.get(i).getProduct().getFid());
		System.out.println("quantity"+cart.get(i).getQuantity());
		int p=cart.get(i).getQuantity()*cart.get(i).getProduct().getfPrice();
		System.out.println("price"+(p));
		sum+=p;
		
		Object[] args = new Object[] { tableno, Phone.getUserid(), cart.get(i).getProduct().getFid(), cart.get(i).getQuantity(), p, sum };
				out = jdbcTemplate.update(query, args);
		if(out<0) {
			return out;
		}

		}

		return out;

	}

	@Override
	public void insertFeedback(String feedback) {
		
		String query = "update user set feedback= ? where user_id= ? ;";
		String userid = Phone.getUserid();
	    jdbcTemplate.update(query,feedback,userid);
	}
}
