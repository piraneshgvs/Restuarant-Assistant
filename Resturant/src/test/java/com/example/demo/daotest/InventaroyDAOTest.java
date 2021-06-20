package com.example.demo.daotest;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.dao.InventaroyImplDAO;

@SpringBootTest
public class InventaroyDAOTest {
	
	@Autowired
	InventaroyImplDAO inventaroyImplDAO;
	
	
	@Test
	public void testInsertFoodItem() {
		assertEquals(inventaroyImplDAO.insertFooditem("Briyani", 150), 1);
	}
	
	@Test
	public void testDeleteFoodItem() {
		assertEquals(inventaroyImplDAO.deleteFooditem(42), 0);
	}

}
