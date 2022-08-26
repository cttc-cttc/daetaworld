package kr.co.deataworld.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/*
 * 관리자화면 컨트롤러
 */
@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "admin/employee_list", method = RequestMethod.GET)
	public ModelAndView employeeList() {
		logger.info("관리자화면 접속 : 구직자 회원 리스트");
		ModelAndView mav = new ModelAndView();
		mav.addObject("leftMenu", "employee_list");
		mav.setViewName("admin/employee_list");
		return mav;
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
