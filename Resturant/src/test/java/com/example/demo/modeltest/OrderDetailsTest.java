package com.example.demo.modeltest;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.model.OrderDetails;

@SpringBootTest
public class OrderDetailsTest {
	
	OrderDetails orderDetails = new OrderDetails("123456");
	
	
	@Test
	public void checkId() {
		assertEquals(orderDetails.getUser_id(),"123456");
	}

}
