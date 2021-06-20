package com.example.demo.daotest;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.example.demo.dao.LoginImplDAO;

@SpringBootTest
public class LoginImplDAOTest {
	
	@Autowired
	LoginImplDAO loginImplDAO;
	
	
	@Test
	public void testLogin() {
		assertEquals(loginImplDAO.login("+919677670928", "123456"),"false");
	}
	

}
