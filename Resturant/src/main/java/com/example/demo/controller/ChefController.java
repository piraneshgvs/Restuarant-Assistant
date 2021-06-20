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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.ChefDAO;
import com.example.demo.dao.LoginDAO;
import com.example.demo.dao.RestuarantImplDAO;
import com.example.demo.entities.Item;
import com.example.demo.model.CutomerId;
import com.example.demo.model.Orders;

@Controller
public class ChefController {

	@Autowired
	private ChefDAO chefDAO;
	@Autowired
	private Orders table;
	/*
	 * @Autowired private CutomerId cutomerid;
	 */
	@Autowired
	private LoginDAO loginDAO;
	
	@RequestMapping(value = "/chef", method = RequestMethod.GET)
	public String tableView(ModelMap modelMap) {
	    List<List<Orders>> detail = chefDAO.showTable();
	    boolean out=detail.isEmpty();
	    if(out==true) {
	    	 modelMap.addAttribute("msg"," Orders Are Successfully Completed Waiting For New Orders");
	    }
	    else {
	   modelMap.addAttribute("userList",chefDAO.userId());
		modelMap.addAttribute("details",detail);}
		return "Chef";
		
	
	}
	
	
	@RequestMapping(value = "chef/finish/{id}", method = RequestMethod.GET)
	public String alterTable(@PathVariable("id") String id, ModelMap modelMap) {
	
		
		System.out.println(id);
		chefDAO.updateTable(id);
		modelMap.put("enable","enabled");
						
		return "redirect:/chef";
	
	}
	
	
}