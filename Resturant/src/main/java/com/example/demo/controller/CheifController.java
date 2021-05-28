package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.CheifDAO;
import com.example.demo.dao.RestuarantImplDAO;
import com.example.demo.entities.Item;
import com.example.demo.model.CutomerId;
import com.example.demo.model.Orders;

@Controller
public class CheifController {

	@Autowired
	private CheifDAO cheifDAO;
	@Autowired
	private Orders table;
	/*
	 * @Autowired private CutomerId cutomerid;
	 */
	
	@RequestMapping(value = "cheif/{id}", method = RequestMethod.GET)
	public String tableView(@PathVariable("id") int id, ModelMap modelMap) {
	
		
		
		List<Orders> order = cheifDAO.showTable(id);
		
		modelMap.put("orderlist", order);
		modelMap.put("tableno", CutomerId.getCutid());
		modelMap.put("enable","disabled");
	   System.out.println("cut"+CutomerId.getCutid());
		return "Cheif";
	
	}
	
	
	@RequestMapping(value = "cheif/finish/{id}", method = RequestMethod.GET)
	public String alterTable(@PathVariable("id") String id, ModelMap modelMap) {
	
		
		System.out.println(id);
		cheifDAO.updateTable(id);
		modelMap.put("enable","enabled");
						
		return "Cheif";
	
	}
	
	

}
