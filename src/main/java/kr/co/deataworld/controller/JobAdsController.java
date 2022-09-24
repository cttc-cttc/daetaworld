package kr.co.deataworld.controller;


import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.deataworld.dto.JobAdsCriteria;
import kr.co.deataworld.dto.JobAdsPageMaker;
import kr.co.deataworld.dto.JobCountryCriteria;
import kr.co.deataworld.dto.JobCountryPageMaker;
import kr.co.deataworld.dto.AreaCodeDTO;
import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.service.EmployeeService;
import kr.co.deataworld.service.JobAdsService;

/*
 * 구인공고, 직업추천 컨트롤러
 */

@Controller
public class JobAdsController {

	private static final Logger logger = LoggerFactory.getLogger(JobAdsController.class);

	@Inject
	JobAdsService service;
	
	@Inject
	EmployeeService eService;
	
	
		// 구인목록-일반/급구

	@GetMapping(value = "/jobAds/listAll")
	public String listAll(Model model,JobAdsCriteria cri) throws Exception {
		logger.info("구인목록 페이지 접속");
		
		JobAdsPageMaker pageMaker = new JobAdsPageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.countJobAdsList());
		List<JobAdsDTO>list = service.listAds(cri);
		
	

		model.addAttribute("list", list);
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "jobAds/listAll";
	}
	
	
	
	
	
	
	//구인목록-농어촌
	@GetMapping(value = "/jobAds/listCountry")
	public String listCountry(Model model,JobCountryCriteria cri1)throws Exception{
		
		
		JobCountryPageMaker pageMaker1 = new JobCountryPageMaker();
		pageMaker1.setCri1(cri1);
		pageMaker1.setCri1(cri1);
		pageMaker1.setTotalCount1(service.countCountry());
		List<JobAdsDTO>list = service.listCountry(cri1);
		
	

		model.addAttribute("list1", list);
		
		model.addAttribute("pageMaker1", pageMaker1);
		
		return "jobAds/listCountry";
		
	}
	
			
	//선택박스
	@GetMapping(value = "jobAds/areaSearch")
	public String selectDropdown(@RequestParam("area") String area, Model model)throws Exception{
		List<AreaCodeDTO>listdrop = service.areaSearch(area);
		model.addAttribute("listdrop", listdrop);
		return "jobAds/search/AreaSearch";
	}
	
	
	
	
	//붙여넣기
//	
//	@ResponseBody
//	public ResponseEntity<List<JobAdsDTO>> ajaxProject(String select) throws Exception {
//		ResponseEntity<List<JobAdsDTO>> entity =null;
//		try{
//			
//			List<JobAdsDTO> list=service.selectDropdown(select);
//			entity =new ResponseEntity<List<JobAdsDTO>>(list, HttpStatus.OK);
//		}catch(Exception e){
//			e.printStackTrace();
//			//에러일 경우 에러 코드 전송 400
//			entity =new ResponseEntity<String>(HttpStatus.BAD_REQUEST);		
//		}
//		
//		return entity;
//		
//		chrome-extension://aejoelaoggembcahagimdiliamlcdmfm/restlet_client.html
//		 위주소에서 데이터가 Json 형태로 던져 주는지 확인 해보세요. 사용방법은 구글 검색
//	}

//	@ResponseBody
//	@PostMapping(value="/jobAds/listAll")
//	public ResponseEntity<List<AreaCodeDTO>>useAjax(String select) throws Exception{
//		ResponseEntity<List<AreaCodeDTO>> entity =null;
//		try{
//			
//			List<AreaCodeDTO>list1= service.selectDropdown(select);
//			
//			entity =new ResponseEntity<List<AreaCodeDTO>>(list1, HttpStatus.OK);
//		}catch(Exception e){
//			e.printStackTrace();
//			//에러일 경우 에러 코드 전송 400
//		//	entity =new ResponseEntity<String select>(HttpStatus.BAD_REQUEST);		
//		}
//		
//		return entity;
//	}
//	
	
//	//구인검색-지역
//	@GetMapping(value = "jobAds/AreaSearch")
//	public String AreaSearch(@RequestParam Map<Object,Object>map,Model model) {
//		List<AreaCodeDTO>listSi = service.AreaSearch(map);
//		model.addAttribute("listSi", listSi);
//		return "jobAds/search/AreaSearch";
//	}
//	
//	
	
	
	
	//구인하단검색(구인목록에서)
	@GetMapping(value = "jobAds/JobAdsSearch")//value에 해당하는값은 메소드이름
	public String JobAdsSearch(@RequestParam Map<Object,Object>map,Model model) {
		List<JobAdsDTO>list = service.JobAdsSearch(map);
		model.addAttribute("list", list);
		return "jobAds/search/JobAdsSearch";  //return은 경로지정
	}
	
	
	


	

	// 구인목록 상세(가게번호 누르고 들어갈때)
	@GetMapping(value = "jobAds/listAllDetail")
	public String listAdsDetail(@RequestParam("s_number") int s_number,Model model) throws Exception {
		int result = eService.applyCheck(s_number);
		Map<String, Object> map = service.listDetail(s_number);
		model.addAttribute("result", result);
		model.addAttribute("map", map);
		return "jobAds/listAllDetail";		
	}
	
	
	@GetMapping(value = "/jobAds/listFavorite")
	public String listFavorite() {
		logger.info("구인목록 페이지 접속");
		return "jobAds/listFavorite";
	}
	//긴급구인 목록
	@GetMapping(value = "/jobAds/listUrgency")
	public String listUrgency(Model model,JobAdsCriteria cri) {
		logger.info("구인목록 페이지 접속");
		JobAdsPageMaker pageMaker = new JobAdsPageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.countJobAdsList());
		List<JobAdsDTO>list = service.listAds(cri);
		
		

		model.addAttribute("list", list);
		
		model.addAttribute("pageMaker", pageMaker);

		return "jobAds/listUrgency";
	}

	
	@GetMapping(value = "/jobAds/listRecommendation")
	public String listRecommendation() {
		logger.info("구인목록 페이지 접속");
		return "jobAds/listRecommendation";
	}
}
