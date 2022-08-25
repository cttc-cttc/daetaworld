package kr.co.deataworld.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 메인화면 접속 컨트롤러
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		logger.info("메인화면 접속");
		return "index";
	}
	
	@GetMapping(value="myPage")
	public String myPage() {
		logger.info("마이페이지 접속");
		return "myPage";
	}
	
	@GetMapping(value="pointManagement")
	public String pointManagement() {
		return "pointManagement";
	}
	
	@GetMapping(value="pointHistory")
	public String pointHistory() {
		return "pointHistory";
	}
	
	@GetMapping(value="pointUse")
	public String pointUse() {
		return "pointUse";
	}
}
