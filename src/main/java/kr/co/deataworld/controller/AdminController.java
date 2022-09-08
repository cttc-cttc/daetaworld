package kr.co.deataworld.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.deataworld.entity.EmployeeEntity;
import kr.co.deataworld.service.AdminService;
import kr.co.deataworld.util.PageProcess;

/*
 * 관리자화면 컨트롤러
 */
@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	AdminService service;
	
	@RequestMapping(value = "admin/employee_list", method = RequestMethod.GET)
	public String employeeList(Model model, int page) throws Exception {
		logger.info("관리자화면 접속 : 구직자 회원 리스트");
		
		PageProcess pp = new PageProcess();
		pp.setCurrPage(page); // 현재 페이지
		pp.setPagePerList(10); // 한 페이지에 보여줄 구직자 수
		pp.setPagePerNavi(10); // 페이지 네비게이터에 표시할 페이지 수
		pp.setBoardCnt(service.employeeCnt()); // 전체 구직자 수
		
		List<EmployeeEntity> eList = service.employeeList(pp);
		model.addAttribute("eList", eList);
		model.addAttribute("pp", pp);
		model.addAttribute("leftMenu", "employee_list");
		return "admin/employee_list";
	}
	
	@RequestMapping(value = "admin/employee_profile", method = RequestMethod.GET)
	public ModelAndView employeeProfile() {
		logger.info("관리자화면 접속 : 구직자 회원 프로필");
		ModelAndView mav = new ModelAndView();
		mav.addObject("leftMenu", "employee_list");
		mav.setViewName("admin/employee_profile");
		return mav;
	}
	
	@RequestMapping(value = "admin/employer_list", method = RequestMethod.GET)
	public ModelAndView employerList() {
		logger.info("관리자화면 접속 : 구인자 회원 리스트");
		ModelAndView mav = new ModelAndView();
		mav.addObject("leftMenu", "employer_list");
		mav.setViewName("admin/employer_list");
		return mav;
	}
	
	@RequestMapping(value = "admin/employer_profile", method = RequestMethod.GET)
	public ModelAndView employerProfile() {
		logger.info("관리자화면 접속 : 구인자 회원 프로필");
		ModelAndView mav = new ModelAndView();
		mav.addObject("leftMenu", "employer_list");
		mav.setViewName("admin/employer_profile");
		return mav;
	}
	
	@RequestMapping(value = "admin/blacklist", method = RequestMethod.GET)
	public ModelAndView blacklist() {
		logger.info("관리자화면 접속 : 블랙리스트");
		ModelAndView mav = new ModelAndView();
		mav.addObject("leftMenu", "blacklist");
		mav.setViewName("admin/blacklist");
		return mav;
	}
	
	@RequestMapping(value = "admin/job_ads", method = RequestMethod.GET)
	public ModelAndView jobAds() {
		logger.info("관리자화면 접속 : 구인공고 신고");
		ModelAndView mav = new ModelAndView();
		mav.addObject("leftMenu", "job_ads");
		mav.setViewName("admin/job_ads");
		return mav;
	}
	
	@RequestMapping(value = "admin/free_board", method = RequestMethod.GET)
	public ModelAndView freeBoard() {
		logger.info("관리자화면 접속 : 자유게시판 글 신고");
		ModelAndView mav = new ModelAndView();
		mav.addObject("leftMenu", "free_board");
		mav.setViewName("admin/free_board");
		return mav;
	}
	
	@RequestMapping(value = "admin/free_comment", method = RequestMethod.GET)
	public ModelAndView freeComment() {
		logger.info("관리자화면 접속 : 자유게시판 댓글 신고");
		ModelAndView mav = new ModelAndView();
		mav.addObject("leftMenu", "free_comment");
		mav.setViewName("admin/free_comment");
		return mav;
	}
	
	@RequestMapping(value = "admin/temping_board", method = RequestMethod.GET)
	public ModelAndView tempingBoard() {
		logger.info("관리자화면 접속 : 땜빵게시판 글 신고");
		ModelAndView mav = new ModelAndView();
		mav.addObject("leftMenu", "temping_board");
		mav.setViewName("admin/temping_board");
		return mav;
	}
	
	@RequestMapping(value = "admin/temping_comment", method = RequestMethod.GET)
	public ModelAndView tempingComment() {
		logger.info("관리자화면 접속 : 땜빵게시판 댓글 신고");
		ModelAndView mav = new ModelAndView();
		mav.addObject("leftMenu", "temping_comment");
		mav.setViewName("admin/temping_comment");
		return mav;
	}

}
