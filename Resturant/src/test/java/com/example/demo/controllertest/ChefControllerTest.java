package com.example.demo.controllertest;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.controller.ChefController;

@SpringBootTest
public class ChefControllerTest {
	
	@Autowired
	ChefController chefController;
	
	
	@Test
	public void testAlertTable() {
		assertEquals(chefController.alterTable("1234", null),"redirect:/chef");
	}

}
