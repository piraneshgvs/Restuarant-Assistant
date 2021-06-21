package com.example.demo.controllertest;
import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.servlet.http.HttpSession;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.ui.ModelMap;

import com.example.demo.controller.AdminController;


@SpringBootTest
public class AdminControllerTest {



	@Autowired
	AdminController adminController;
	

	
	@Test
	public void testShowForm() {
		//assertEquals(adminController.saveFooditem("Briyani",150),"redirect:/inventoryform");
	}

	
	@Test
	public void testRemoveFoodItem() {
		assertEquals(adminController.removeFooditem(42),"redirect:/inventoryform");
	}
	
	/*
	 * @Test public void testLogin() {
	 * 
	 * ModelMap modelMap=null; HttpSession session=null;
	 * assertEquals(adminController.login("9698543328", "987654", modelMap,
	 * session),"redirect:/inventoryform"); }
	 */
	
	@Test 
	public void testNotAvailableFooditem() {
		assertEquals(adminController.NotAvailableFooditem(42),"redirect:/inventoryform");
	}
	
	
	@Test 
	public void testAvailableFooditem() {
		assertEquals(adminController.AvailableFooditem(42),"redirect:/inventoryform");
	}

}