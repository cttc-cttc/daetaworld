package kr.co.deataworld.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@GetMapping(value="/jobAds/listAll")
	public String listAll() {
		logger.info("구인목록 페이지 접속");
		return "jobAds/listAll";
	}
	
	@GetMapping(value="/jobAds/listFavorite")
	public String listFavorite() {
		logger.info("구인목록 페이지 접속");
		return "jobAds/listFavorite";
	}
	
	@GetMapping(value="/jobAds/listUrgency")
	public String listUrgency() {
		logger.info("구인목록 페이지 접속");
		return "jobAds/listUrgency";
	}
	
	@GetMapping(value="/jobAds/listCountry")
	public String listCountry() {
		logger.info("구인목록 페이지 접속");
		return "jobAds/listCountry";
	}
	
	@GetMapping(value="/jobAds/listCare")
	public String listCare() {
		logger.info("구인목록 페이지 접속");
		return "jobAds/listCare";
	}
	
	@GetMapping(value="/jobAds/listRecommendation")
	public String listRecommendation() {
		logger.info("구인목록 페이지 접속");
		return "jobAds/listRecommendation";
	}
	
	@GetMapping(value="point/pointManagement")
	public String pointManagement(Model model) {
		model.addAttribute("leftMenu", "pointManagement");
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
