package kr.co.deataworld.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
/*
 * 구직자 컨트롤러 (마이페이지)
 */
@Controller
public class EmployeeController {

	private static final Logger logger = LoggerFactory.getLogger(EmployeeController.class);
	
	@GetMapping(value="employeeMapper/myInfo")
	public String myInfo(Model model) {
		model.addAttribute("leftsMenu", "myInfo");
		return "employee/myInfo/myInfo";
	}
	
	@GetMapping(value="employeeMapper/myInfoUpdate")
	public String myInfoUpdate() {
		return "employee/myInfo/myInfoUpdate";
	}
	
	@GetMapping(value="employeeMapper/resumeManagement")
	public String resumeManagement(Model model) {
		model.addAttribute("leftMenu", "resumeManagement");
		return "employee/resume/resumeManagement";
	}
	
	@GetMapping(value="employeeMapper/resumeRegister")
	public String resumeRegister() {
		return "employee/resume/resumeRegister";
	}
	
	@GetMapping(value="employeeMapper/pinchHistory")
	public String pinchHistory(Model model) {
		model.addAttribute("leftMenu", "pinchHistory");
		return "employee/pinch/pinchHistory";
	}
	
	@GetMapping(value="employeeMapper/pinchStatus")
	public String pinchStatus(Model model) {
		model.addAttribute("leftMenu", "pinchStatus");
		return "employee/pinch/pinchStatus";
	}
	
	@GetMapping(value="employeeMapper/requests")
	public String requests() {
		return "employee/resume/requests";
	}
	
	@GetMapping(value="employeeMapper/pinchExpired")
	public String pinchExpired() {
		return "employee/pinch/pinchExpired";
	}
	
}
