package kr.co.deataworld.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.JobCodeDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ShopInfoDTO;
import kr.co.deataworld.service.AccountService;
import kr.co.deataworld.service.EmployerService;
import kr.co.deataworld.util.ExtractAreaCode;
import kr.co.deataworld.util.FileProcess;
/*
 * 구인자 컨트롤러 (마이페이지)
 */
@Controller
public class EmployerController {
	
	@Autowired
	EmployerService service;
	
	@Autowired
	AccountService aService;
	
	private static final Logger logger = LoggerFactory.getLogger(EmployerController.class);
		
//	내 정보보기
	@GetMapping(value="employerMapper/myInfo")
	public String myInfo(@RequestParam("m_id")String m_id, Model model, HttpSession session) throws Exception {
		model.addAttribute("leftMenu", "myInfo");
		MemberDTO myInfo = service.myInfo(m_id);
		model.addAttribute("myInfo", myInfo);
		
		// 헤더 로그인 표시정보를 바꾸기 위한 세션값 갱신
		session.setAttribute("loginM_nick", myInfo.getM_nick());
		session.setAttribute("loginM_picture", myInfo.getM_picture());
		return "employer/myInfo/myInfo";
	}
	
//	내 정보 수정
	@ResponseBody
	@PostMapping(value="employerMapper/myInfoUpdate")
	public int myInfoUpdate(MemberDTO employerEntity, MultipartFile chooseFile, String preFileName) throws Exception {
		// 사진을 변경했다면 로컬 프로필 이미지 폴더에서 기존 사진을 삭제하고 새 사진을 저장
		System.out.println(chooseFile);
		if(chooseFile != null) {
			String savedName = FileProcess.updateImg(chooseFile, FileProcess.PROFILE_IMG_PATH, preFileName);
			employerEntity.setM_picture(savedName);
		}
		
		// 지역코드 설정
		Map<String, String> addrParam = ExtractAreaCode.getAreaCode(employerEntity.getM_address1());
		String areaCode = aService.getAreaCode(addrParam);
		System.out.println("지역코드: "+areaCode);
		employerEntity.setA_code(areaCode);
		
		return service.myInfoUpdate(employerEntity);
	}
	
//	공고 등록
	@GetMapping(value="employerMapper/adsRegister")
	public String adsRegister(@RequestParam("m_id")String m_id, Model model) throws Exception {
		model.addAttribute("leftMenu", "adsRegister");
		List<ShopInfoDTO>shopList = service.shopManagement(m_id);
		model.addAttribute("shopList", shopList);
		model.addAttribute("m_id", m_id);
		return "employer/ads/adsRegister";		
	}
	
	@PostMapping(value="employerMapper/adsRegister")
	public String adsRegister(@RequestParam Map<String, Object> map) throws Exception {
		System.out.println(map);		
		ShopInfoDTO shopInfo = service.shopInfo((String) map.get("s_name"));
		map.put("s_number", shopInfo.getS_number());		
		int r = service.adsRegister(map);
		return "redirect:/employerMapper/adsHistory";
	}
	
//	농어촌 공고 등록
	@GetMapping(value="employerMapper/countryRegister")
	public String countryRegister(@RequestParam("m_id")String m_id, Model model) {
		model.addAttribute("leftMenu", "adsRegister");
		model.addAttribute("m_id", m_id);
		return "employer/ads/countryRegister";		
	}
	
	@PostMapping(value="employerMapper/countryRegister")
	public String countryRegister(@RequestParam Map<String, Object> map) {
		System.out.println(map);
		return "redirect/employerMapper/adsHistory";
	}
	
//	주변 구직자 확인 전 가게 목록 
	@GetMapping(value="employerMapper/checkEmployees")
	public String checkEmployees(@RequestParam("m_id")String m_id, Model model) throws Exception {
		model.addAttribute("leftMenu", "adsRegister");
		List<Map<String, Object>> shopInfo = service.checkEmployees(m_id); 
		model.addAttribute("shopInfo", shopInfo);
		return "employer/candidates/checkEmployees";
	}
	
//	가게의 주변 구직자 확인
	@GetMapping(value="employerMapper/nearCandidates")
	public String nearCandidates(@RequestParam("address") String address, 
			@RequestParam("a_number") int a_number, Model model) throws Exception {
		model.addAttribute("leftMenu", "adsRegister");
		List<MemberDTO> candidates = service.nearCandidates(address);
		model.addAttribute("candidates", candidates);
		model.addAttribute("a_number", a_number);
		return "employer/candidates/nearCandidates";
	}
	
//	가게 주변 구직자 정보 확인
	@GetMapping(value="employerMapper/nearCanDetail")
	public String nearCanDetail(@RequestParam Map<String, Object> map, Model model) throws Exception {
		model.addAttribute("leftMenu", "adsRegister");
		Map<String, Object> detail = service.nearCanDetail(map); 
		model.addAttribute("detail", detail);		
		return "employer/candidates/nearCanDetail";
	}
	
//	공고 내역
	@GetMapping(value="employerMapper/adsHistory")
	public String adsHistory(@RequestParam("m_id")String m_id, Model model) throws Exception {
		model.addAttribute("leftMenu", "adsHistory");
		List<Map<String, Object>> adsList = service.adsHistory(m_id);
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
	
	@PostMapping(value="employerMapper/adsUpdate")
	public String adsUpdate(@RequestParam Map<String, Object> map) throws Exception{		
		System.out.println(map);
		int r = service.adsUpdate(map);
		return "redirect:/employer/ads/adsHistory";
	}
	
//	등록 중인 공고
	@GetMapping(value="employerMapper/adsPending")
	public String adsPending(@RequestParam("m_id")String m_id, Model model) throws Exception {
		model.addAttribute("leftMenu", "adsHistory");
		List<Map<String, Object>> adsPending = service.adsPending(m_id);
		model.addAttribute("adsPending", adsPending);
		return "employer/ads/adsPending";
	}
	
//	만료된 공고
	@GetMapping(value="employerMapper/adsExpired")
	public String adsExpired(@RequestParam("m_id")String m_id, Model model) throws Exception{
		model.addAttribute("leftMenu", "adsHistory");
		List<Map<String,Object>> adsExpired = service.adsExpired(m_id);
		model.addAttribute("adsExpired", adsExpired);
		return "employer/ads/adsExpired";
	}	
	
//	지원받은 공고
	@GetMapping(value="employerMapper/adsApplied")
	public String adsApplied(@RequestParam("m_id")String m_id, Model model) throws Exception{
		model.addAttribute("leftMenu", "adsApplied");
		List<Map<String, Object>> adsApplied = service.adsApplied(m_id);
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
	
//	지원자 정보보기
	@GetMapping(value="employerMapper/canDetail")
	public String canDetail(@RequestParam("m_id")String m_id, 
			@RequestParam("a_number")int a_number, 
			@RequestParam("i_number")int i_number , Model model) throws Exception {
		model.addAttribute("leftMenu", "adsApplied");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("m_id", m_id);
		map.put("i_number", i_number);
		Map<String, Object> detail = service.canDetail(map);
		model.addAttribute("detail", detail);
		model.addAttribute("a_number", a_number);
		return "employer/candidates/canDetail";
	}
	
//	알바 선요청
	@ResponseBody
	@PostMapping(value="employerMapper/applyRequest")
	public int applyRequest(@RequestParam Map<String, Object> map) throws Exception {
		return service.applyRequest(map);		
	}
	
//	지원 수락
	@ResponseBody
	@PostMapping(value="employerMapper/applyAccept")
	public int applyAccept(@RequestParam("m_id")String m_id) throws Exception {		
		return service.applyAccept(m_id);
	}
	
//	지원 거절
	@ResponseBody
	@PostMapping(value="employerMapper/applyDeny")
	public int applyDeny(@RequestParam("m_id")String m_id) throws Exception {
		return service.applyDeny(m_id);		
	}
	
//	가게 관리
	@GetMapping(value="employerMapper/shopManagement")
	public String shopManagement(@RequestParam("m_id")String m_id, Model model) throws Exception {
		model.addAttribute("leftMenu", "myInfo");
		List<ShopInfoDTO> list = service.shopManagement(m_id);
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
	public String shopRegister(@RequestParam("m_id")String m_id, Model model) throws Exception {
		model.addAttribute("leftMenu", "myInfo");
		model.addAttribute("m_id", m_id);
		// 직종 목록 받아오기
		List<JobCodeDTO> jobList = service.jobList();
		model.addAttribute("jobList", jobList);
		return "employer/shop/shopRegister";
	}
	

}
