package kr.co.deataworld.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ShopInfoDTO;
import kr.co.deataworld.service.EmployerService;
/*
 * 구인자 컨트롤러 (마이페이지)
 */
@Controller
public class EmployerController {
	
	@Autowired
	EmployerService service;
	
	private static final Logger logger = LoggerFactory.getLogger(EmployerController.class);
	
//	@Resource(name="profileUploadPath")
	private String profileUpload;
	
//	내 정보보기
	@GetMapping(value="employerMapper/myInfo")
	public String myInfo(Model model) throws Exception {
		model.addAttribute("leftMenu", "myInfo");
		String id = "owner";
		MemberDTO myInfo = service.myInfo(id);
		model.addAttribute("myInfo", myInfo);
		
		return "employer/myInfo/myInfo";
	}
	
//	내 정보 수정
	@ResponseBody
	@PostMapping(value="employerMapper/myInfoUpdate")
	public int myInfoUpdate(MemberDTO employerEntity) throws Exception {
		
		return service.myInfoUpdate(employerEntity);
	}
	
//	공고 등록
	@GetMapping(value="employerMapper/adsRegister")
	public String adsRegister(Model model) {
		model.addAttribute("leftMenu", "adsRegister");
		return "employer/ads/adsRegister";		
	}
	
//	농어촌 공고 등록
	@GetMapping(value="employerMapper/countryRegister")
	public String countryRegister(Model model) {
		model.addAttribute("leftMenu", "adsRegister");
		return "employer/ads/countryRegister";		
	}
	
//	주변 구직자 확인
	@GetMapping(value="employerMapper/checkEmployees")
	public String check_employees(Model model) {
		model.addAttribute("leftMenu", "adsRegister");
		return "employer/candidates/checkEmployees";
	}
	
//	공고 내역
	@GetMapping(value="employerMapper/adsHistory")
	public String adsHistory(Model model) throws Exception {
		model.addAttribute("leftMenu", "adsHistory");
		String id = "owner";
		List<Map<String, Object>> adsList = service.adsHistory(id);
		model.addAttribute("adsList", adsList);
		return "employer/ads/adsHistory";
	}
	
//	공고세부정보
	@GetMapping(value="employerMapper/adsRegistered")
	public String adsRegistered(@RequestParam("a_number")int a_number, Model model) throws Exception {
		model.addAttribute("leftMenu", "adsHistory");
		Map<String, Object> detail = service.adsRegistered(a_number);
		model.addAttribute("detail", detail);
		return "employer/ads/adsRegistered";
	}
	
//	등록 중인 공고
	@GetMapping(value="employerMapper/adsPending")
	public String adsPending(Model model) throws Exception {
		model.addAttribute("leftMenu", "adsHistory");
		String id = "owner";
		List<Map<String, Object>> adsPending = service.adsPending(id);
		model.addAttribute("adsPending", adsPending);
		return "employer/ads/adsPending";
	}
	
//	만료된 공고
	@GetMapping(value="employerMapper/adsExpired")
	public String adsExpired(Model model) throws Exception{
		model.addAttribute("leftMenu", "adsHistory");
		String id = "owner";
		List<Map<String,Object>> adsExpired = service.adsExpired(id);
		model.addAttribute("adsExpired", adsExpired);
		return "employer/ads/adsExpired";
	}	
	
//	지원받은 공고
	@GetMapping(value="employerMapper/adsApplied")
	public String adsApplied(Model model) throws Exception{
		model.addAttribute("leftMenu", "adsApplied");
		String id = "owner";
		List<Map<String, Object>> adsApplied = service.adsApplied(id);
		model.addAttribute("adsApplied", adsApplied);
		return "employer/ads/adsApplied";
	}

//	지원자 목록
	@GetMapping(value="employerMapper/candidates")
	public String candidates(@RequestParam("a_number")int a_number , Model model) throws Exception {
		model.addAttribute("leftMenu", "adsApplied");
		List<Map<String, Object>> candidates = service.candidates(a_number);
		model.addAttribute("candidates", candidates);
		return "employer/candidates/candidates";
	}	
	
//	가게 관리
	@GetMapping(value="employerMapper/shopManagement")
	public String shopManagement(Model model) throws Exception {
		model.addAttribute("leftMenu", "myInfo");
		String id = "owner";
		List<ShopInfoDTO> list = service.shopManagement(id);
		model.addAttribute("list", list);
		return "employer/shop/shopManagement";
	}
	
//	가게 등록한 내용보기
	@GetMapping(value="employerMapper/shopInfo")
	public String shopInfo(@RequestParam("s_name") String s_name, Model model) throws Exception{
		model.addAttribute("leftMenu", "myInfo");
		ShopInfoDTO shopInfo = service.shopInfo(s_name);
		model.addAttribute("shopInfo", shopInfo);		
		return "employer/shop/shopInfo";
	}
	
//	가게 등록
	@GetMapping(value="employerMapper/shopRegister")
	public String shopRegister(Model model) {
		model.addAttribute("leftMenu", "myInfo");
		return "employer/shop/shopRegister";
	}
	

}
