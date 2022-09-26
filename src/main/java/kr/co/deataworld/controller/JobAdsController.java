package kr.co.deataworld.controller;


import java.util.HashMap;
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
	
	
		// 일반구인목록

	@GetMapping(value = "/jobAds/listAll")
	public String listAll(Model model,JobAdsCriteria cri) throws Exception {
		logger.info("구인목록 페이지 접속");
		
		JobAdsPageMaker pageMaker = new JobAdsPageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.countJobAdsList());
		List<JobAdsDTO>list = service.listAds(cri);
		List<String> areaName1List = service.getAreaName1(); // 지역 카테고리1 목록
		List<String> job1List = service.getJob1();//직종 카테고리1 목록
		
		
		model.addAttribute("areaName1List", areaName1List);
		model.addAttribute("job1List", job1List);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "jobAds/listAll";
	}
	
	
	
	// 선택한 지역 카테고리1로 지역 카테고리2 목록 반환
	@ResponseBody
	@PostMapping(value = "/jobAds/getAreaName2")
	public List<Map<String, String>> getName2(@RequestParam("a_name1") String a_name1) {
		return service.getAreaName2(a_name1);
	}
	
	//선택한 직종 카테고리1로 직종 카테고리2 목록 반환
	@ResponseBody
	@PostMapping(value = "/jobAds/getJob2")
	public List<Map<String , Object>>getSelectJob2(@RequestParam("j_type1")String j_type1){
		return service.getJob2(j_type1);
	}
	
	
	//급구 구인목록
	@GetMapping(value = "/jobAds/listUrgency")
	public String listUrgency1(Model model ,JobAdsCriteria cri) throws Exception{
		
		JobAdsPageMaker pageMaker = new JobAdsPageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.countJobAdsList());
		List<JobAdsDTO>list2 = service.listUrgency(cri);
		List<String> areaName1ListUr = service.getAreaName1(); // 지역 카테고리1 목록
		List<String> job1ListUrgency = service.getJob1();//직종 카테고리1 목록
		
		
		model.addAttribute("areaName1ListUr", areaName1ListUr);
		model.addAttribute("job1ListUrgency", job1ListUrgency);
		model.addAttribute("list2", list2);
		model.addAttribute("pageMaker", pageMaker);
		return "jobAds/listUrgency";
	}
	
	
	
	//구인목록-농어촌
	@GetMapping(value = "/jobAds/listCountry")
	public String listCountry(Model model,JobAdsCriteria cri)throws Exception{
		
		JobAdsPageMaker pageMaker = new JobAdsPageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.countJobAdsList());
		List<JobAdsDTO>list3 = service.listCountry(cri);
		List<String> areaName1ListCountry = service.getAreaName1(); // 지역 카테고리1 목록
		List<String> job1ListCountry = service.getJob1();//직종 카테고리1 목록
		
		
		model.addAttribute("areaName1ListCountry", areaName1ListCountry);
		model.addAttribute("job1ListCountry", job1ListCountry);
		model.addAttribute("list3", list3);
		model.addAttribute("pageMaker", pageMaker);
		
		
		
		
		return "jobAds/listCountry";
		
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
	
	//구인하단검색(구인목록에서)
		@GetMapping(value = "jobAds/favoriteSearch")//value에 해당하는값은 메소드이름
		public String favoriteSearch(@RequestParam Map<Object,Object>map,Model model) {
			List<JobAdsDTO>list = service.favoriteSearch(map);
			model.addAttribute("list", list);
			return "jobAds/search/favoriteSearch";  //return은 경로지정
		}
	
	


	

	// 구인목록 상세(가게번호 누르고 들어갈때)
	@GetMapping(value = "jobAds/listAllDetail")
	public String listAdsDetail(@RequestParam("s_number")int s_number,
								@RequestParam("m_id")String m_id,
								@RequestParam("a_number")int a_number, Model model) throws Exception {
		Map<String, Object> chk = new HashMap<String, Object>();
		chk.put("m_id", m_id);
		chk.put("s_number", s_number);
		chk.put("a_number", a_number);
		int result = eService.applyCheck(chk);
		Map<String, Object> map = service.listDetail(chk);
		model.addAttribute("result", result);
		model.addAttribute("map", map);
		return "jobAds/listAllDetail";		
	}
	
	
	@GetMapping(value = "/jobAds/listFavorite")
	public String listFavorite() {
		logger.info("구인목록 페이지 접속");
		return "jobAds/listFavorite";
	}
	
	
	@GetMapping(value = "/jobAds/listRecommendation")
	public String listRecommendation() {
		logger.info("구인목록 페이지 접속");
		return "jobAds/listRecommendation";
	}
}
