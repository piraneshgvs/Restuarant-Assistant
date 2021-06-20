package com.example.demo.controllertest;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.controller.PageController;

@SpringBootTest
public class PageControllerTest {
	
	
	@Autowired
	PageController pageController;
	
	@Test
	public void testHome() {
		assertEquals(pageController.homepage(), "Jungle Restuarant");
	}

	
	@Test
	public void testInsertUser() {
		assertEquals(pageController.insertuser("+919677670928"),"redirect:/view/Menu");
	}
}
