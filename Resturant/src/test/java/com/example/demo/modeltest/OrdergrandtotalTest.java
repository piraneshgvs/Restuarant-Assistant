package com.example.demo.modeltest;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.model.Ordergrandtotal;

@SpringBootTest
public class OrdergrandtotalTest {

	Ordergrandtotal  ordergrandtotal = new Ordergrandtotal(1000000000);
	
	@Test
	public void checkTotal() {
		assertEquals(ordergrandtotal.getTotal(),1000000000);
	}
	
	
}
