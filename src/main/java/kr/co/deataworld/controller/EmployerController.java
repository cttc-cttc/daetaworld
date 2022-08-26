package kr.co.deataworld.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EmployerController {
	
	private static final Logger logger = LoggerFactory.getLogger(EmployerController.class);
	
	@GetMapping(value="employer/myInfo")
	public String myInfo() {
		return "employer/myInfo";
	}
	
	@GetMapping(value="employer/myInfoUpdate")
	public String myInfoUpdate() {
		return "employer/myInfoUpdate";
	}
	
	@GetMapping(value="employer/adsRegister")
	public String adsRegister() {
		return "employer/adsRegister";		
	}
	
	@GetMapping(value="employer/checkEmployees")
	public String check_employees() {
		return "employer/checkEmployees";
	}

	@GetMapping(value="employer/candidates")
	public String candidates() {
		return "employer/candidates";
	}	
	
	@GetMapping(value="employer/shopManagement")
	public String shopManagement() {
		return "employer/shopManagement";
	}
	
	@GetMapping(value="employer/shopRegister")
	public String shopRegister() {
		return "employer/shopRegister";
	}
	
	@GetMapping(value="employer/adsHistory")
	public String adsHistory() {
		return "employer/adsHistory";
	}
	
	@GetMapping(value="employer/adsPending")
	public String adsPending() {
		return "employer/adsPending";
	}
	
	@GetMapping(value="employer/adsExpired")
	public String adsExpired() {
		return "employer/adsExpired";
	}
}
