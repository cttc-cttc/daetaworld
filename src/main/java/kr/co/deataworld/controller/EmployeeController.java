package kr.co.deataworld.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.service.EmployeeService;
/*
 * 구직자 컨트롤러 (마이페이지)
 */
@Controller
public class EmployeeController {
	@Inject
	EmployeeService service;
	private static final Logger logger = LoggerFactory.getLogger(EmployeeController.class);
	
	//내 정보 불러오기
	@GetMapping(value="employeeMapper/myInfo")
	public ModelAndView myInfo()throws Exception {
		ModelAndView mav = new ModelAndView();
		MemberDTO myInfo = service.myInfo();
		mav.addObject("myInfo", myInfo);
		mav.setViewName("employee/myInfo/myInfo");
		return mav;
	}
	
	
	//내 정보 수정하기
	@GetMapping(value="m_myInfoUpdate")
	public int m_myInfoUpdate(MemberDTO memberDTO)throws Exception {
		return 0;
	}
	
	
//	구직자 마이페이지 이동
//	@GetMapping(value="employeeMapper/myInfo")
//	public String myInfo(Model model) {
//		model.addAttribute("leftsMenu", "myInfo");
//		return "employee/myInfo/myInfo";
//	}
	
	
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
