package kr.co.deataworld.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EmployeeController {

	private static final Logger logger = LoggerFactory.getLogger(EmployeeController.class);
	
	@GetMapping(value="employee/myInfo")
	public String myInfo(Model model) {
		model.addAttribute("leftMenu", "myInfo");
		return "employee/myInfo";
	}
	
	@GetMapping(value="employee/myInfoUpdate")
	public String myInfoUpdate() {
		return "employee/myInfoUpdate";
	}
	
	@GetMapping(value="employee/resumeManagement")
	public String resumeManagement(Model model) {
		model.addAttribute("leftMenu", "resumeManagement");
		return "employee/resumeManagement";
	}
	
	@GetMapping(value="employee/resumeRegister")
	public String resumeRegister() {
		return "employee/resumeRegister";
	}
	
	@GetMapping(value="employee/pinchHistory")
	public String pinchHistory(Model model) {
		model.addAttribute("leftMenu", "pinchHistory");
		return "employee/pinchHistory";
	}
	
	@GetMapping(value="employee/pinchStatus")
	public String pinchStatus(Model model) {
		model.addAttribute("leftMenu", "pinchStatus");
		return "employee/pinchStatus";
	}
	
	@GetMapping(value="employee/requests")
	public String requests() {
		return "employee/requests";
	}
	
	@GetMapping(value="employee/pinchExpired")
	public String pinchExpired() {
		return "employee/pinchExpired";
	}
	
}
