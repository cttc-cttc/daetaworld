package kr.co.deataworld.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.deataworld.entity.JobAdsEntity;
import kr.co.deataworld.service.JobAdsService;

/**
 * Header, 메인화면, Footer 관련 컨트롤러
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Inject
	JobAdsService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		logger.info("메인화면 접속");
		// 메인화면 일반구인 목록 6개
		List<JobAdsEntity> commonList = service.mainCommonList();
		model.addAttribute("common_list", commonList);
		
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
	
	@GetMapping(value="pointMapper/pointManagement")
	public String pointManagement(Model model) {
		model.addAttribute("leftMenu", "pointManagement");
		return "common/point/pointManagement";
	}
	
	@GetMapping(value="pointMapper/pointHistory")
	public String pointHistory() {
		return "common/point/pointHistory";
	}
	
	@GetMapping(value="pointMapper/pointUse")
	public String pointUse() {
		return "common/point/pointUse";
	}
	
	
}
