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
import kr.co.deataworld.dto.JobApplyDTO;
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
	public String listAll(Model model, JobAdsCriteria cri) throws Exception {
		logger.info("구인목록 페이지 접속");

		JobAdsPageMaker pageMaker = new JobAdsPageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.countJobAdsList());
		List<Map<String, Object>> list = service.listAds(cri);
		List<String> areaName1List = service.getAreaName1(); // 지역 카테고리1 목록
		List<String> job1List = service.getJob1();// 직종 카테고리1 목록

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

	// 선택한 직종 카테고리1로 직종 카테고리2 목록 반환
	@ResponseBody
	@PostMapping(value = "/jobAds/getJob2")
	public List<Map<String, Object>> getSelectJob2(@RequestParam("j_type1") String j_type1) {
		return service.getJob2(j_type1);
	}

	// 급구 구인목록
	@GetMapping(value = "/jobAds/listUrgency")
	public String listUrgency1(Model model, JobAdsCriteria cri) throws Exception {

		JobAdsPageMaker pageMaker = new JobAdsPageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.countJobAdsList());
		List<Map<String, Object>> list2 = service.listUrgency(cri);
		List<String> areaName1ListUr = service.getAreaName1(); // 지역 카테고리1 목록
		List<String> job1ListUrgency = service.getJob1();// 직종 카테고리1 목록

		model.addAttribute("areaName1ListUr", areaName1ListUr);
		model.addAttribute("job1ListUrgency", job1ListUrgency);
		model.addAttribute("list2", list2);
		model.addAttribute("pageMaker", pageMaker);
		return "jobAds/listUrgency";
	}

	// 구인목록-농어촌
	@GetMapping(value = "/jobAds/listCountry")
	public String listCountry(Model model, JobAdsCriteria cri) throws Exception {

		JobAdsPageMaker pageMaker = new JobAdsPageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.countJobAdsList());
		List<Map<String, Object>> list3 = service.listCountry(cri);
		List<String> areaName1ListCountry = service.getAreaName1(); // 지역 카테고리1 목록
		List<String> job1ListCountry = service.getJob1();// 직종 카테고리1 목록

		model.addAttribute("areaName1ListCountry", areaName1ListCountry);
		model.addAttribute("job1ListCountry", job1ListCountry);
		model.addAttribute("list3", list3);
		model.addAttribute("pageMaker", pageMaker);

		return "jobAds/listCountry";

	}

	// 지역,직종 상단검색
	@GetMapping(value = "jobAds/listJobAdsSearch")
	public String listJobAdsSearch(@RequestParam Map<String, Object> map, Model model) {
		System.out.println("--------------------받은 값 : " + map);

		List<String> areaName1List = service.getAreaName1(); // 지역 카테고리1 목록
		List<String> job1List = service.getJob1();// 직종 카테고리1 목록

		List<Map<String, Object>> list1 = service.listJobAdsSearch(map);

		model.addAttribute("list1", list1);

		model.addAttribute("areaName1List", areaName1List);
		model.addAttribute("job1List", job1List);

		return "jobAds/search/listJobAdsSearch";
	}
	
	
	// 일반/긴급/농어촌 구인목록 상세 (로그인 상태가 아닐때)
	@GetMapping(value = "jobAds/nonMember")
	public String nonMember(@RequestParam("a_number") int a_number, Model model)throws Exception{
		Map<String, Object> non = service.nonMember(a_number);
		int result = 0;
		model.addAttribute("result", result);
		model.addAttribute("map", non);
		return "jobAds/listAllDetail";
	}


	// 구인목록 상세(가게번호 누르고 들어갈때)
	@GetMapping(value = "jobAds/listAllDetail")
	public String listAdsDetail(@RequestParam("s_name") String s_name, @RequestParam("s_number") String s_number,
			@RequestParam("m_id") String m_id, @RequestParam("a_number") int a_number, Model model, JobApplyDTO jobApplyDTO) throws Exception {
		Map<String, Object> chk = new HashMap<String, Object>();
		chk.put("s_number", s_number);
		chk.put("m_id", m_id);
		chk.put("s_name", s_name);
		chk.put("a_number", a_number);
		int result = eService.applyCheck(chk);
		System.out.println("신청한 공고인지 조회좀 해볼게");
		
		if(result == 0) { //지원한거 없네? 그럼 지원신청해줄게
			Map<String, Object> map = service.listDetail(chk);
			model.addAttribute("result", result);
			model.addAttribute("map", map);
			System.out.println("지원신청 할까?");
			return "jobAds/listAllDetail";
			
		} else { //지원했었네? 그럼 거절한건지 볼까?
			//result1 은 0=거절한거 아님, 1=거절했었네
			int result1 = eService.cancelAdsCheck(jobApplyDTO);
			
			if(result1 == 0) { //지원은 했지만 거절하지않음 -> 신청중인 상태
				int result2 = 1;
				System.out.println("너 이미 신청했잖아 " + result2 + " 이거 가지고 가버려");
				Map<String, Object> map = service.listDetail(chk);
				model.addAttribute("result", result2);
				model.addAttribute("map", map);
				return "jobAds/listAllDetail";
			}else { //지원했다가 거절했네?.. 근데 다시 신청하려고?
				System.out.println("너 거절했었는데?");
				int result3 = 9;
				Map<String, Object> map = service.listDetail(chk);
				model.addAttribute("map", map);
				model.addAttribute("result", result3);
//				eService.reApply(jobApplyDTO); //거절상태를 신청중 으로 업데이트 -> 재신청 완료
				System.out.println("거절했었네? 근데 다시 신청해줘? " + result3 + " 이거 가져가서 다시 신청해봐");
				return "jobAds/listAllDetail";
			}
		}
	}


	@GetMapping(value = "/jobAds/listRecommendation")
	public String listRecommendation() {
		logger.info("직업추천 페이지 접속");
		return "jobAds/listRecommendation";
	}

//	// 상단 필터
//	@ResponseBody
//	@PostMapping(value = "/jobAds/findAll")
//	public List<Map<String, Object>> findAll() {
//
//		return service.findAll();
//	}
}
