package kr.co.deataworld.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.deataworld.dto.AreaCodeDTO;
import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.service.JobAdsService;

/*
 * 구인공고, 직업추천 컨트롤러
 */
@Controller
public class JobAdsController {

	private static final Logger logger = LoggerFactory.getLogger(JobAdsController.class);

	@Inject
	JobAdsService service;

	// 구인목록-드롭다운도 같이

	@GetMapping(value = "/jobAds/listAll")
	public String listAll(Model model) {
		logger.info("구인목록 페이지 접속");

		List<JobAdsDTO> list = service.listAds();
		List<AreaCodeDTO> listdrop = service.selectDropdown();

		model.addAttribute("list", list);

		model.addAttribute("listdrop", listdrop);

		return "jobAds/listAll";
	}

	// 구인목록-2번째 드롭다운
	@PostMapping(value = "/jobAds/listAll")
	@ResponseBody
	public String listdrop2(@RequestParam("select") String select, Model model) {
		List<AreaCodeDTO> listdrop2 = service.selectSecond(select);
		model.addAttribute("listdrop2", listdrop2);
		return "jobAds/listAll";

	}

	// 구인목록 상세
	@GetMapping(value = "jobAds/listAllDetail")
	public ModelAndView listAdsDetail(@RequestParam("a_number") int a_number) {
		ModelAndView mav = new ModelAndView();
		JobAdsDTO jobAdsDTO = service.listAllDetail(a_number);
		mav.addObject("jobAdsDTO", jobAdsDTO);
		mav.setViewName("jobAds/listAllDetail");
		return mav;

	}

	@GetMapping(value = "/jobAds/listFavorite")
	public String listFavorite() {
		logger.info("구인목록 페이지 접속");
		return "jobAds/listFavorite";
	}

	@GetMapping(value = "/jobAds/listUrgency")
	public String listUrgency() {
		logger.info("구인목록 페이지 접속");
		return "jobAds/listUrgency";
	}

	@GetMapping(value = "/jobAds/listCountry")
	public String listCountry() {
		logger.info("구인목록 페이지 접속");
		return "jobAds/listCountry";
	}

	@GetMapping(value = "/jobAds/listRecommendation")
	public String listRecommendation() {
		logger.info("구인목록 페이지 접속");
		return "jobAds/listRecommendation";
	}
}
