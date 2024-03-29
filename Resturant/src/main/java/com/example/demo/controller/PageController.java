package com.example.demo.controller;


import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



import com.example.demo.dao.OrderDAO;
import com.example.demo.dao.PhoneDAO;
import com.example.demo.dao.RestuarantDAO;
import com.example.demo.model.Foodlist;
import com.example.demo.model.Foods;
import com.example.demo.model.Item;
import com.example.demo.model.Phone;


@Controller

public class PageController {

	
	
	@Autowired
	private RestuarantDAO restuarantDao;
	@Autowired
	private OrderDAO orderDAO;
	@Autowired
	private Foods food;
	@Autowired
	private Foodlist foodlist;
	@Autowired
	private Phone phone;
	@Autowired
	private PhoneDAO phoneDAO;
	
	
	private String msg="";
	/*
	@RequestMapping("/")
	public String home() {
		return "index";
	}
	

*/
	
	@RequestMapping("/")
	public String homepage() {
		
		return "Jungle Restaurant";
	}
	
	
	
	
	@RequestMapping("view/Menu")
	public String showAll(ModelMap modelMap) {

		//RestuarantImplDAO productModel = new RestuarantImplDAO();
	modelMap.put("products", restuarantDao.getAllFoods());
	
	return "Menu";	
	}
	
	
	
	@RequestMapping("/summary")
    public String showform(ModelMap map){  
    	map.addAttribute("addfood", foodlist);
    	
    	return "third"; 
    } 
	/*
	 * @RequestMapping(value="/Verification",) public String
	 * showError(@Valid @ModelAttribute("addfood") Foodlist F, ){ if
	 * (result.hasErrors()) { return "third"; } return "redirect:/saveOrder"; }
	 */
     
	@RequestMapping(value="/saveOrder", params="place", method=RequestMethod.POST)
	public String saveTrainee(@Valid @ModelAttribute("addfood") Foodlist foodlist,BindingResult result, HttpSession session,@RequestParam(required=false,name="tableno" ) String tableno,ModelMap map) {
		
		if (result.hasErrors()) { 
			return "third";
		}
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int out = orderDAO.insertFoodlist(cart,Integer.valueOf(tableno));
	    if(out<=0){ 
				map.addAttribute("message","Order Not Placed Please Select Food items");
				return "third";
		       } 
		
		return "Payment";
	}
	

	
	
	@RequestMapping(value="/phonenumber", method=RequestMethod.POST)
	public String insertuser(@RequestParam String phone) {
	    phoneDAO.insertUser(phone);
		return "redirect:/view/Menu";
	}
	@RequestMapping("/logout")
	public void logout(HttpSession session) {
		session.invalidate();
	}
	@RequestMapping("/sessionlock")
	public void lock(HttpSession session,@RequestParam String phone) {
		session.setAttribute("phone",phone);
		System.out.println("phoneeeee = "+phone);
	}
	
}
