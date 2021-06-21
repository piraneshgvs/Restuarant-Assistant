package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.InventaroyDAO;
import com.example.demo.dao.LoginDAO;
import com.example.demo.dao.RestuarantDAO;
import com.example.demo.model.Foods;
import com.example.demo.model.Ordersummary;
import com.example.demo.model.StaffRole;

import java.io.IOException;
import java.util.*;

import javax.servlet.http.HttpSession;


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
	

	@Autowired
	private RestuarantDAO restuarantDao;
	
	@Autowired
	private StaffRole staffRole;
	
	@RequestMapping("/inventoryform")  
    public String showform(ModelMap map){  
    	map.addAttribute("allfoods",restuarantDao.getAllFoods1());
    	
    
    	return "Inventory"; 
    } 
	
	@RequestMapping(value="/addfood", method = RequestMethod.POST)
	public String saveFooditem(@RequestParam String foodname, @RequestParam int foodprice,@RequestParam("images") MultipartFile file) throws IOException {
	
		int result = inventaroyDAO.insertFooditem(foodname,foodprice,file.getBytes());
		return "redirect:/inventoryform";
	}
	
	@RequestMapping(value="/item/delete/{id}")
	public String removeFooditem(@PathVariable("id") int id) {
		
		inventaroyDAO.deleteFooditem(id);
		
		return "redirect:/inventoryform";
	}
	
	@RequestMapping(value="/item/edit/{id}")
	public String editFooditem(@PathVariable("id") int id, ModelMap map) {
		
		List<String> foodie = inventaroyDAO.editFooditem(id);
		map.addAttribute("foodname",foodie.get(0));
		map.addAttribute("foodprice",foodie.get(1));
		map.addAttribute("foodid",foodie.get(2));
		map.addAttribute("allfoods",restuarantDao.getAllFoods());

	
		
		return "Inventory";
	}
	
	@RequestMapping(value="/updateform", method=RequestMethod.POST)
	public String updateFooditem(@RequestParam String name, @RequestParam String price, @RequestParam int id, ModelMap map) {
		
	 inventaroyDAO.updateFoodItem(id,name,price);
		
		
		return "redirect:/inventoryform";
	}
	
	@RequestMapping(value="/foodnotavailable/{id}")
	public String NotAvailableFooditem(@PathVariable("id") int id) {


	 inventaroyDAO.updateFoodAvailable(id); 
		return "redirect:/inventoryform";
	}
	
	@RequestMapping(value="/foodavailable/{id}")
	public String AvailableFooditem(@PathVariable("id") int id) {


	 inventaroyDAO.updateFoodAvailable1(id);
		  
		
		return "redirect:/inventoryform";
	}
	
	

	
	@RequestMapping("/adminsummary")
	public String Ordersummary(ModelMap modelMap,@RequestParam(required=false,name="date") String date,@RequestParam(required=false,name="date1") String date1) {
		
		modelMap.addAttribute("date",date);
        modelMap.addAttribute("date1",date1);
        List<Ordersummary> data = inventaroyDAO.getOrdersummary(date,date1);
        boolean out=data.isEmpty();
        if(out==true)
        {
        	modelMap.addAttribute("msg","Datas Not Available Please Select Valid Dates");
        }
        else {
        modelMap.addAttribute("summary", inventaroyDAO.getOrdersummary(date,date1));
		modelMap.addAttribute("Total", inventaroyDAO.getGrandtotal(date,date1));
        }
	
	return "Adminsummary";	
	}
	

	
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(@RequestParam String id, @RequestParam String password,  ModelMap modelMap,HttpSession session){
		
		session.setAttribute("id",id);
		String ans = loginDAO.login(id, password);
		if(ans.equals("false")) {
			modelMap.addAttribute("message", "Please check your Phone nuumber and password");
			return "login";
		}
		else {
              String page = staffRole.getPage();
         System.out.println(page);
              if(page.equals("Admin")) {
            	  modelMap.addAttribute("name", staffRole.getName());
            	  return "redirect:/inventoryform";
              }
              else {
            	  modelMap.addAttribute("name", staffRole.getName());
            	  return "redirect:/chef";
              }
		}
		
		
		

		
	}
	
}
