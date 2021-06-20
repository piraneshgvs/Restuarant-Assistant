package com.example.demo.daotest;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.dao.RestuarantImplDAO;
import com.example.demo.model.Foods;

@SpringBootTest
public class RestuarantImplDAOTest {
	
	@Autowired
	RestuarantImplDAO restuarantImplDAO;
	
	
	@Test
	public void testFind() {
		int id=43;
		Foods foods = null;
		List<Foods> fList = restuarantImplDAO.getAllFoods();
		for (Foods foodi : fList) {
			if (foodi.getFid()==id) {
			
			    foods = foodi;
				break;
			}
		
		assertEquals(restuarantImplDAO.find(42),foods);
	}
	}
	
	@Test
	public void testGetAllFoods() {
		List<Foods> fList = restuarantImplDAO.getAllFoods();
		assertEquals(fList,fList);
	}
	
	@Test
	public void testGetAllFoods1() {
		List<Foods> fList = restuarantImplDAO.getAllFoods1();
		assertEquals(fList,fList);
	}

}
