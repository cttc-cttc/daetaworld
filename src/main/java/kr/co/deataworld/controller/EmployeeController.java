package kr.co.deataworld.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
/*
 * 구직자 컨트롤러 (마이페이지)
 */
@Controller
public class EmployeeController {

	private static final Logger logger = LoggerFactory.getLogger(EmployeeController.class);
	
	//구직자 로그인 ID:user PW:user123
	
	
	
	
	
	
	
	//구직자 마이페이지 이동
	@GetMapping(value="employeeMapper/myInfo")
	public String myInfo(Model model) {
		model.addAttribute("leftsMenu", "myInfo");
		return "employee/myInfo/myInfo";
	}
	
	
	//구직자 내정보 수정
	@GetMapping(value="employeeMapper/myInfoUpdate")
	public String myInfoUpdate() {
		return "employee/myInfo/myInfoUpdate";
	}
	
	
	//구직자 자기소개서 관리
	@GetMapping(value="employeeMapper/resumeManagement")
	public String resumeManagement(Model model) {
		model.addAttribute("leftMenu", "resumeManagement");
		return "employee/resume/resumeManagement";
	}
	
	
	//구직자 자기소개서 작성
	@GetMapping(value="employeeMapper/resumeRegister")
	public String resumeRegister() {
		return "employee/resume/resumeRegister";
	}
	
	
	//구직자 대타내역
	@GetMapping(value="employeeMapper/pinchHistory")
	public String pinchHistory(Model model) {
		model.addAttribute("leftMenu", "pinchHistory");
		return "employee/pinch/pinchHistory";
	}
	
	
	//구직자 지원현황
	@GetMapping(value="employeeMapper/pinchStatus")
	public String pinchStatus(Model model) {
		model.addAttribute("leftMenu", "pinchStatus");
		return "employee/pinch/pinchStatus";
	}
	
	
	//구직자 알바요청
	@GetMapping(value="employeeMapper/requests")
	public String requests() {
		return "employee/resume/requests";
	}
	
	
	//구직자 종료된 공고
	@GetMapping(value="employeeMapper/pinchExpired")
	public String pinchExpired() {
		return "employee/pinch/pinchExpired";
	}
	
}
