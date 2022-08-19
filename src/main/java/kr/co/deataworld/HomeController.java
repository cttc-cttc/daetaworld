package kr.co.deataworld;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	HttpSession session;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index() {
		logger.info("메인화면 접속");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping(value = "employee_info", method = RequestMethod.GET)
	public ModelAndView employeeInfo() {
		logger.info("관리자화면 접속 : 구직자 회원정보");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminPage/employee_info");
		return mav;
	}
	
	@RequestMapping(value = "employer_info", method = RequestMethod.GET)
	public ModelAndView employerInfo() {
		logger.info("관리자화면 접속 : 구인자 회원정보");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminPage/employer_info");
		return mav;
	}
	
	@RequestMapping(value = "blacklist", method = RequestMethod.GET)
	public ModelAndView blacklist() {
		logger.info("관리자화면 접속 : 블랙리스트");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("adminPage/blacklist");
		return mav;
	}
}
