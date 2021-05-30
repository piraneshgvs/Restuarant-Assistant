package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.InventaroyDAO;
import com.example.demo.dao.LoginDAO;
import com.example.demo.model.Foods;
import com.example.demo.model.Ordersummary;


@Controller
public class AdminController {
	
	@Autowired
	private Foods foods;
	@Autowired
	private Ordersummary ordersummary;
	
	@Autowired
	private InventaroyDAO inventaroyDAO;
	@Autowired
	private LoginDAO loginDAO;
	
	@RequestMapping("/inventoryform")  
    public String showform(ModelMap map){  
    	map.addAttribute("addItem", foods);
    	map.addAttribute("addMsg", "");
    	return "Inventory"; 
    } 
	
	@RequestMapping(value="/insertfood", method = RequestMethod.POST, params = "submit")
	public ModelAndView saveFooditem(@ModelAttribute("addItem") Foods f, ModelAndView mv) {
		int result = inventaroyDAO.insertFooditem(f);
		if(result>0)
		{
			mv.addObject("addMsg", "FoodItem Added Successfully");
		}else {
			mv.addObject("addMsg", "FoodItem not Added Successfully");
		}
		mv.setViewName("Inventory");
		return mv;
	}
	
	@RequestMapping(value="/insertfood", method = RequestMethod.POST, params = "delete")
	public ModelAndView removeFooditem(@ModelAttribute("addItem") Foods f,ModelAndView mv) {
		System.out.println("foodid : "+f);
		int result = inventaroyDAO.deleteFooditem(f.getFid());
		if(result>0)
		{
			mv.addObject("addMsg", "FoodItem Removed Successfully");
		}else {
			mv.addObject("addMsg", "FoodItem not Removed Successfully");
		}
		mv.setViewName("Inventory");
		return mv;
	}
	
	@RequestMapping(value="/insertfood",method = RequestMethod.POST, params = "update")
	public String updateFooditem(@ModelAttribute("addItem") Foods f) {
		inventaroyDAO.updateFooditem(f);
		return "Inventory";
		
	}
	
	@RequestMapping("/adminsummary")
	public String Ordersummary(ModelMap modelMap) {

		modelMap.addAttribute("summary", inventaroyDAO.getOrdersummary());
		modelMap.addAttribute("Total", inventaroyDAO.getGrandtotal());
	
	return "Adminsummary";	
	}

	
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(@RequestParam String id, @RequestParam String password, @RequestParam String role, ModelMap modelMap){
		
		String ans = loginDAO.login(id, password,role);
		if(ans.equals("false")) {
			modelMap.addAttribute("message", "Please check your Phone nuumber and password");
			return "Adminlogin";
		}
		else {
			modelMap.addAttribute("title", ans);
			modelMap.put("listfeedback", loginDAO.getAllFeedback());
			return "Adminpage";
		}
		
		
		

		
	}
}
