package com.example.demo.modeltest;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.validation.constraints.NotEmpty;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.model.Foodlist;

@SpringBootTest
public class FoodlistTest {

	
	Foodlist foodList = new Foodlist(10,2,1000,"3");
	
	
	
	@Test
	public void check() {
	
		assertEquals(foodList.getFid(),10);

		
	}
	

	@Test
	public void checkQuantity() {
		assertEquals(foodList.getfQua(),2);
	}
	
	@Test
	public void checkTotal() {
		assertEquals(foodList.getfTot(),1000);
	}
	
	@Test
	public void checkTable() {
		assertEquals(foodList.getTableno(),3);
	}
}
