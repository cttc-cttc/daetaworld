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
	
	@GetMapping(value="/jobLists/listAll")
	public String listAll() {
		logger.info("구인목록 페이지 접속");
		return "jobLists/listAll";
	}
	
	@GetMapping(value="/jobLists/listFavorite")
	public String listFavorite() {
		logger.info("구인목록 페이지 접속");
		return "jobLists/listFavorite";
	}
	
	@GetMapping(value="/jobLists/listUrgency")
	public String listUrgency() {
		logger.info("구인목록 페이지 접속");
		return "jobLists/listUrgency";
	}
	
	@GetMapping(value="/jobLists/listCountry")
	public String listCountry() {
		logger.info("구인목록 페이지 접속");
		return "jobLists/listCountry";
	}
	
	@GetMapping(value="/jobLists/listCare")
	public String listCare() {
		logger.info("구인목록 페이지 접속");
		return "jobLists/listCare";
	}
	
	@GetMapping(value="/jobLists/listRecommendation")
	public String listRecommendation() {
		logger.info("구인목록 페이지 접속");
		return "jobLists/listRecommendation";
	}
	
	@GetMapping(value="point/pointManagement")
	public String pointManagement() {
		return "point/pointManagement";
	}
	
	@GetMapping(value="point/pointHistory")
	public String pointHistory() {
		return "point/pointHistory";
	}
	
	@GetMapping(value="point/pointUse")
	public String pointUse() {
		return "point/pointUse";
	}
	
	
}
