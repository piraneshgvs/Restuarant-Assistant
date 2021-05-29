package com.example.demo.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.OrderDAO;
import com.example.demo.dao.PhoneDAO;
import com.example.demo.dao.RestuarantDAO;
import com.example.demo.dao.RestuarantImplDAO;
import com.example.demo.entities.Item;
import com.example.demo.model.Foodlist;
import com.example.demo.model.Foods;
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
		return "Jungle Restuarant";
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
    	 
    	map.addAttribute("addMsg", "");
    	return "third"; 
    } 
	
     
	@RequestMapping(value="/saveOrder", params="place", method=RequestMethod.POST)
	public String saveTrainee(@ModelAttribute("addfood") Foodlist F, ModelAndView mv, HttpSession session,@RequestParam String tableno) {
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int result = orderDAO.insertFoodlist(cart,Integer.valueOf(tableno));
		
		if(result>0)
		{
			mv.addObject("addMsg", "Order Placed Successfully");
		}else {
			mv.addObject("addMsg", "Order Not Placed Select Food items");
		}
		mv.setViewName("third");
		return "Payment";
	}
	

	
	
	@RequestMapping(value="/phonenumber", method=RequestMethod.POST)
	public String insertuser(@RequestParam String phone) {
		System.out.println(phone);
		phoneDAO.insertUser(phone);
		return "redirect:/view/Menu";
	}
	
	
	
	@RequestMapping(value="/feedback", method=RequestMethod.POST)
	public String insertfeedback(@RequestParam String feedbac) {
		System.out.println(feedbac);
		orderDAO.insertFeedback(feedbac);
		return "Payment";
	}
	
	
	
	
	
	
	/*
	@RequestMapping("/")
	public String showAll(ModelMap modelMap) {
	RestuarantImplDAO productModel = new RestuarantImplDAO();
	modelMap.put("products", productModel.findAll());
	return "Menu";

	}
*/


}
