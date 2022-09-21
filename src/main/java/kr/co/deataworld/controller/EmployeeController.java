package kr.co.deataworld.controller;

import java.lang.ProcessBuilder.Redirect;
import java.lang.annotation.Retention;
import java.util.List;

import javax.inject.Inject;

import org.apache.catalina.filters.AddDefaultCharsetFilter;
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
import kr.co.deataworld.dto.ResumeDTO;
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
	@ResponseBody
	@PostMapping(value="employeeMapper/myInfoUpdate")
	public int myInfoUpdate(MemberDTO memberDTO)throws Exception{
		return service.myInfoUpdate(memberDTO);
	}
	
	
	//구직자 자기소개서 관리
	@GetMapping(value="employeeMapper/resumeManagement")
	public ModelAndView resumeManagement()throws Exception {
		String m_id = "user";
		ModelAndView mav = new ModelAndView();
		List<ResumeDTO> list = service.resumeManagement(m_id);
		mav.addObject("list", list);
		mav.setViewName("employee/resume/resumeManagement");
		return mav;
	}
	
	
	//자소서 글 읽기
	@GetMapping(value="employeeMapper/selectResume")
	public ModelAndView selectResume(@RequestParam("i_number") int i_number) throws Exception {
		ModelAndView mav = new ModelAndView();
		ResumeDTO resume = service.selectResume(i_number);
		mav.addObject("resume", resume);
		mav.setViewName("employee/resume/selectResume");
		return mav;
	}
	
	
	//선택한 자소서 수정 폼으로 이동
	@GetMapping(value="employeeMapper/resumeUpdate")
	public ModelAndView resumeUpdate(@RequestParam("i_number")int i_number)throws Exception {
		ModelAndView mav = new ModelAndView();
		ResumeDTO resume = service.selectResume(i_number);
		mav.addObject("resume", resume);
		mav.setViewName("employee/resume/resumeUpdate");
		return mav;
		
	}
	
	
	//ajax를 이용한 자기소개서 수정 저장
	@ResponseBody
	@PostMapping(value="employeeMapper/resumeUpdate")
	public int resumeUpdate(ResumeDTO resumDTO)throws Exception {
		return service.resumeUpdate(resumDTO);
	}
	
	
	//자기소개서 삭제
	@GetMapping(value="employeeMapper/resumeDelete")
	public String resumeDelete(@RequestParam("i_number")int i_number)throws Exception {
		service.resumeDelete(i_number);
		return "redirect:resumeManagement";
	}
	
	
//	//구직자 자기소개서 작성 폼으로 이동
//	@GetMapping(value="employeeMapper/resumeRegister")
//	public String resumeRegister()throws Exception {
//		String m_id="user";
//		if(service.resumeRegister(m_id).size()) {
//			
//		}
//		
//		return "employee/resume/resumeRegister";
//	}
	
	//구직자 자기소개서 작성 폼으로 이동
	@GetMapping(value="employeeMapper/resumeRegister")
	public String resumeRegister()throws Exception {
		return "employee/resume/resumeRegister";
	}
	
	
	//구직자 자기소개서 작성 저장
	@PostMapping(value="employeeMapper/resumeRegister")
	public String resumeRegister(ResumeDTO resumeDTO)throws Exception {
		service.resumeRegister(resumeDTO);
		return "redirect:resumeManagement";
	}
	
	
	//자소서 대표 설정
	@GetMapping(value="employeeMapper/resumeDefault")
	public String defaultIntro(ResumeDTO resumeDTO)throws Exception{
		service.resumeDefaultInit(resumeDTO);
		service.resumeDefault(resumeDTO);
		return "redirect:resumeManagement";
	}
	
//	ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
	
	
	
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
