package kr.co.deataworld.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
		
		// 메인화면 - 긴급구인 리스트 6개
		List<Map<String, Object>> urgencyList = service.mainUrgencyList();
		model.addAttribute("urgency_list", urgencyList);
		
		// 메인화면 - 일반구인 리스트 6개
		List<Map<String, Object>> commonList = service.mainCommonList();
		model.addAttribute("common_list", commonList);
		
		return "index";
	}
	
	@GetMapping(value="daetaFooter/emailFAQ")
	public String emailFAQ() {
		return "daetaFooter/emailFAQ";
		
	}
	@GetMapping(value="daetaFooter/introCom")
	public String introCom() {
		return "daetaFooter/introCom";
		
	}
	@GetMapping(value="daetaFooter/oftenFAQ")
	public String oftenFAQ() {
		return "daetaFooter/oftenFAQ";
		
	}
	@GetMapping(value="daetaFooter/psPoli")
	public String psPoli() {
		return "daetaFooter/psPoli";
		
	}
	@GetMapping(value="daetaFooter/terms")
	public String terms() {
		return "daetaFooter/terms";
		
	}
	@GetMapping(value="daetaFooter/userGuide")
	public String userGuide() {
		return "daetaFooter/userGuide";
		
	}
	
}
