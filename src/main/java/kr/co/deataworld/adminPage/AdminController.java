package kr.co.deataworld.adminPage;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.deataworld.HomeController;

/*
 * 관리자화면 컨트롤러
 */
@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "admin/employee_info", method = RequestMethod.GET)
	public ModelAndView employeeInfo() {
		logger.info("관리자화면 접속 : 구직자 회원정보");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminPage/employee_info");
		return mav;
	}
	
	@RequestMapping(value = "admin/employer_info", method = RequestMethod.GET)
	public ModelAndView employerInfo() {
		logger.info("관리자화면 접속 : 구인자 회원정보");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminPage/employer_info");
		return mav;
	}
	
	@RequestMapping(value = "admin/blacklist", method = RequestMethod.GET)
	public ModelAndView blacklist() {
		logger.info("관리자화면 접속 : 블랙리스트");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminPage/blacklist");
		return mav;
	}
	
	@RequestMapping(value = "admin/job_ads", method = RequestMethod.GET)
	public ModelAndView jobAds() {
		logger.info("관리자화면 접속 : 구인공고 신고");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminPage/job_ads");
		return mav;
	}
	
	@RequestMapping(value = "admin/free_board", method = RequestMethod.GET)
	public ModelAndView freeBoard() {
		logger.info("관리자화면 접속 : 자유게시판 글 신고");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminPage/free_board");
		return mav;
	}
	
	@RequestMapping(value = "admin/free_comment", method = RequestMethod.GET)
	public ModelAndView freeComment() {
		logger.info("관리자화면 접속 : 자유게시판 댓글 신고");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminPage/free_comment");
		return mav;
	}
	
	@RequestMapping(value = "admin/temping_board", method = RequestMethod.GET)
	public ModelAndView tempingBoard() {
		logger.info("관리자화면 접속 : 땜빵게시판 글 신고");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminPage/temping_board");
		return mav;
	}
	
	@RequestMapping(value = "admin/temping_comment", method = RequestMethod.GET)
	public ModelAndView tempingComment() {
		logger.info("관리자화면 접속 : 땜빵게시판 댓글 신고");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminPage/temping_comment");
		return mav;
	}
	
	@RequestMapping(value = "admin/profile", method = RequestMethod.GET)
	public ModelAndView profile() {
		logger.info("관리자화면 접속 : 유저 프로필");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminPage/profile");
		return mav;
	}
}
