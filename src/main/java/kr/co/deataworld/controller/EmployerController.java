package kr.co.deataworld.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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
import kr.co.deataworld.service.NotificationService;
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
	
	@Autowired
	NotificationService nService;
	
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
	
//	회원 탈퇴	
	@PostMapping(value="employerMapper/r_signOut")
	public String r_signOut(@RequestParam("m_id")String m_id, HttpSession session) throws Exception{
		service.signOut(m_id);
		session.invalidate();
		return "redirect:/";
	}
	
//	공고 등록
	@GetMapping(value="employerMapper/adsRegister")
	public String adsRegister(@RequestParam("m_id")String m_id, Model model, HttpServletRequest request) throws Exception {
		model.addAttribute("leftMenu", "adsRegister");
		List<ShopInfoDTO>shopList = service.shopManagement(m_id);
		// 보유 포인트 체크
		int point = service.pointChk(m_id);
		model.addAttribute("point", point);
		model.addAttribute("shopList", shopList);
		model.addAttribute("m_id", m_id);
		
		HttpSession session = request.getSession();
		session.setAttribute("loginPoint", point);
		return "employer/ads/adsRegister";		
	}
	
	@PostMapping(value="employerMapper/adsRegister")
	public String adsRegister(@RequestParam Map<String, Object> map, HttpServletRequest request) throws Exception {
		System.out.println(map);		
		ShopInfoDTO shopInfo = service.shopInfo((String) map.get("s_name"));
		map.put("s_number", shopInfo.getS_number());
		map.put("job_code", shopInfo.getJ_code());
		int r = service.adsRegister(map);
		return "redirect:/employerMapper/adsHistory?m_id=" + map.get("m_id");
	}
	
//	농어촌 공고 등록
	@GetMapping(value="employerMapper/countryRegister")
	public String countryRegister(@RequestParam("m_id")String m_id, Model model) throws Exception {
		model.addAttribute("leftMenu", "adsRegister");
		int point = service.pointChk(m_id);
		model.addAttribute("point", point);
		model.addAttribute("m_id", m_id);
		return "employer/ads/countryRegister";		
	}
	
	@PostMapping(value="employerMapper/countryRegister")
	public String countryRegister(@RequestParam Map<String, Object> map, MultipartFile[] shopImages) throws Exception {
		
		// 지역코드 설정을 위한 문자열 추출 (예시: 서울 송파구 동남로 99, 경기도 수원시 권선구 ??로) 
		String address1 = (String) map.get("s_address1"); // "서울 송파구 동남로 99"
		String[] addressSplit = address1.split(" "); // ["서울", "송파구", "동남로", "99"]
		String addrName1 = addressSplit[0]; // "서울"
		String addrName2 = addressSplit[1]; // "송파구"
		if(addressSplit[2].endsWith("구")) { // a_name2에 시 구가 있을 경우
			addrName2 = addressSplit[2];
		}
		String addrName1_1 = String.valueOf(addrName1.charAt(0)); // "서"
		String addrName1_2 = String.valueOf(addrName1.charAt(1)); // "울"
		addrName2 = addrName2.substring(0, addrName2.length()-1); // "송파"
				
		Map<String, String> addrParam = new HashMap<String, String>();
		addrParam.put("addrName1_1", addrName1_1);
		addrParam.put("addrName1_2", addrName1_2);
		addrParam.put("addrName2", addrName2);
		String areaCode = aService.getAreaCode(addrParam); // 11710 (서울시 송파구 지역코드)
		System.out.println("지역코드: "+areaCode);
		map.put("a_code", areaCode);
		
		logger.info("가게사진 파일 수: " + shopImages.length);
		if(!shopImages[0].getOriginalFilename().isEmpty()) {
			switch(shopImages.length) {
			case 1:
				map.put("s_picture1", FileProcess.insertImg(shopImages[0], FileProcess.SHOP_IMG_PATH));
				break;
			case 2:
				map.put("s_picture1", FileProcess.insertImg(shopImages[0], FileProcess.SHOP_IMG_PATH));
				map.put("s_picture2", FileProcess.insertImg(shopImages[1], FileProcess.SHOP_IMG_PATH));
				break;
			case 3:
				map.put("s_picture1", FileProcess.insertImg(shopImages[0], FileProcess.SHOP_IMG_PATH));
				map.put("s_picture2", FileProcess.insertImg(shopImages[1], FileProcess.SHOP_IMG_PATH));
				map.put("s_picture3", FileProcess.insertImg(shopImages[2], FileProcess.SHOP_IMG_PATH));
				break;
			}
		}	
		
		service.countryRegister(map);
		return "redirect:/employerMapper/adsHistory?m_id=" + map.get("m_id");
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
		
		// 지역코드 설정을 위한 문자열 추출 (예시: 서울 송파구 동남로 99, 경기도 수원시 권선구 ??로)		
		String[] addressSplit = address.split(" "); // ["서울", "송파구", "동남로", "99"]
		String addrName1 = addressSplit[0]; // "서울"
		String addrName2 = addressSplit[1]; // "송파구"
		if(addressSplit[2].endsWith("구")) { // a_name2에 시 구가 있을 경우
			addrName2 = addressSplit[2];
		}
		String addrName1_1 = String.valueOf(addrName1.charAt(0)); // "서"
		String addrName1_2 = String.valueOf(addrName1.charAt(1)); // "울"
		addrName2 = addrName2.substring(0, addrName2.length()-1); // "송파"
		
		Map<String, String> addrParam = new HashMap<String, String>();
		addrParam.put("addrName1_1", addrName1_1);
		addrParam.put("addrName1_2", addrName1_2);
		addrParam.put("addrName2", addrName2);
		String areaCode = aService.getAreaCode(addrParam); // 11710 (서울시 송파구 지역코드)
		
		List<MemberDTO> candidates = service.nearCandidates(areaCode);
		model.addAttribute("candidates", candidates);
		model.addAttribute("a_number", a_number);
		return "employer/candidates/nearCandidates";
	}
	
//	가게 주변 구직자 정보 확인
	@GetMapping(value="employerMapper/nearCanDetail")
	public String nearCanDetail(@RequestParam Map<String, Object> map, Model model) throws Exception {
		model.addAttribute("leftMenu", "adsRegister");
		Map<String, Object> detail = service.nearCanDetail(map); 
		int detailCnt = service.nearCanDetailCnt(map); 
		model.addAttribute("detail", detail);
		model.addAttribute("detailCnt", detailCnt);
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
		return "redirect:/employerMapper/adsHistory?m_id=" + map.get("m_id");
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
	public String adsApplied(@RequestParam("m_id")String m_id, String pageType, Model model) throws Exception{
		model.addAttribute("leftMenu", "adsApplied");
		List<Map<String, Object>> adsApplied = service.adsApplied(m_id);
		model.addAttribute("adsApplied", adsApplied);				
		
		// 타입 1 알림을 클릭해 들어온 경우
		if(pageType != null) {
			Map<String, Object> delNotiInfo = new HashMap<String, Object>();
			delNotiInfo.put("m_id", m_id);
			delNotiInfo.put("n_type", 1);
			nService.deletePart(delNotiInfo);
		}
		return "employer/ads/adsApplied";
	}
	
//	구인완료
	@ResponseBody
	@PostMapping(value="employerMapper/adsComplete")
	public int adsComplete(@RequestParam("a_number")int a_number) throws Exception{
		return service.adsComplete(a_number);
	}
	
//	구인재개
	@ResponseBody
	@PostMapping(value="employerMapper/reAdsRegister")
	public int reAdsRegister(@RequestParam("a_number")int a_number) throws Exception{
		return service.reAdsRegister(a_number);
	}
	
//	요청한 공고 목록
	@GetMapping(value="employerMapper/adsRequested")
	public String adsRequested(@RequestParam("m_id")String m_id, String pageType, Model model)throws Exception{
		model.addAttribute("leftMenu", "adsApplied");
		List<Map<String, Object>> adsRequested = service.adsRequested(m_id);
		model.addAttribute("adsRequested", adsRequested);
		
		// 타입 2 알림을 클릭해 들어온 경우
		if(pageType != null) {
			Map<String, Object> delNotiInfo = new HashMap<String, Object>();
			delNotiInfo.put("m_id", m_id);
			delNotiInfo.put("n_type", 2);
			nService.deletePart(delNotiInfo);
		}
		return "employer/ads/adsRequested";
	}
	
//	요청 취소
	@GetMapping(value="employerMapper/cancelRequest")
	public String cancelRequest(@RequestParam("ja_number")int ja_number, @RequestParam("m_id")String m_id)throws Exception{
		service.cancelRequest(ja_number);
		return "redirect:/employerMapper/adsRequested?m_id=" + m_id;
	}

//	지원자 목록
	@GetMapping(value="employerMapper/candidates")
	public String candidates(@RequestParam("a_number")int a_number , Model model) throws Exception {
		model.addAttribute("leftMenu", "adsApplied");
		List<Map<String, Object>> candidates = service.candidates(a_number);
		model.addAttribute("candidates", candidates);
		return "employer/candidates/candidates";
	}	
	
//	확정자 목록
	@GetMapping(value="employerMapper/confirmedCandidates")
	public String confirmedCandidates(@RequestParam("a_number")int a_number, Model model) throws Exception{
		model.addAttribute("leftMenu", "adsApplied");
		List<Map<String, Object>> candidates = service.confirmedCandidates(a_number);
		model.addAttribute("candidates", candidates);
		return "employer/candidates/confirmedCandidates";
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
		map.put("a_number", a_number);
		Map<String, Object> detail = service.canDetail(map);
		model.addAttribute("detail", detail);
		model.addAttribute("a_number", a_number);
		return "employer/candidates/canDetail";
	}
	
//	알바 선요청
	@ResponseBody
	@PostMapping(value="employerMapper/applyRequest")
	public int applyRequest(@RequestParam Map<String, Object> map) throws Exception {
		service.applyRequest(map);
		
		// 알림타입 6: 구인자가 구직자에게 주변노예 요청을 하면 해당 구직자에게 알림발송
		Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
		notiInsertInfo.put("m_id", map.get("m_id"));
		notiInsertInfo.put("n_type", 6);
		return nService.insertNotiType6(notiInsertInfo);
	}
	
//	지원 수락
	@ResponseBody
	@PostMapping(value="employerMapper/applyAccept")
	public int applyAccept(@RequestParam("ja_number")int ja_number, 
						  String user_id, String s_name) throws Exception {		
		service.applyAccept(ja_number);
		
		// 알림타입 7: 구인자가 구직자의 공고지원을 수락/거절하면 구직자에게 알림발송
		Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
		notiInsertInfo.put("m_id", user_id);
		notiInsertInfo.put("n_type", 7);
		notiInsertInfo.put("s_name", s_name);
		notiInsertInfo.put("ja_status", "y");
		return nService.insertNotiType7(notiInsertInfo);
	}
	
//	지원 거절
	@ResponseBody
	@PostMapping(value="employerMapper/applyDeny")
	public int applyDeny(@RequestParam("ja_number")int ja_number, 
						String user_id, String s_name) throws Exception {
		service.applyDeny(ja_number);
		
		// 알림타입 7: 구인자가 구직자의 공고지원을 수락/거절하면 구직자에게 알림발송
		Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
		notiInsertInfo.put("m_id", user_id);
		notiInsertInfo.put("n_type", 7);
		notiInsertInfo.put("s_name", s_name);
		notiInsertInfo.put("ja_status", "n");
		return nService.insertNotiType7(notiInsertInfo);
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
		
		// 직종 목록 받아오기
		List<JobCodeDTO> jobList = service.jobList();
		model.addAttribute("jobList", jobList);
		
		JobCodeDTO jobName = jobList.get(shopInfo.getJ_code()-1);
		model.addAttribute("jobName", jobName);
		
		return "employer/shop/shopInfo";
	}
	
	@PostMapping(value="employerMapper/shopInfo")
	public String shopInfo(ShopInfoDTO shopInfo, MultipartFile license, String pre_license,
			MultipartFile[] shopImages, String preS_picture1, String preS_picture2, String preS_picture3) throws Exception {

		if(!license.getOriginalFilename().isEmpty()) {
			String savedName = FileProcess.updateImg(license, FileProcess.SHOP_LICENSE_PATH, pre_license);
			shopInfo.setBusiness_license(savedName);
		}else {
			shopInfo.setBusiness_license(pre_license);
		}
		
		// 가게사진 설정
		// 등록을 안하면 파일 수 1에 파일명 "" 빈값으로 들어옴
		// 기존 사진이 없다면 등록, 있으면 변경
		logger.info("가게사진 파일 수: " + shopImages.length);
		if(!shopImages[0].getOriginalFilename().isEmpty()) {
			
			// 정보수정에서 사진을 하나라도 등록하면 일단 기존 사진부터 모두 삭제
			FileProcess.deleteAllShopImg(preS_picture1, preS_picture2, preS_picture3);
			
			switch(shopImages.length) {
			case 1:
				if(preS_picture1 == null) {
					shopInfo.setS_picture1(FileProcess.insertImg(shopImages[0], FileProcess.SHOP_IMG_PATH));
				} else {
					shopInfo.setS_picture1(FileProcess.updateImg(shopImages[0], FileProcess.SHOP_IMG_PATH, preS_picture1));
				}
				break;
			case 2:
				if(preS_picture2 == null) {
					shopInfo.setS_picture1(FileProcess.insertImg(shopImages[0], FileProcess.SHOP_IMG_PATH));
					shopInfo.setS_picture2(FileProcess.insertImg(shopImages[1], FileProcess.SHOP_IMG_PATH));
				} else {
					shopInfo.setS_picture1(FileProcess.updateImg(shopImages[0], FileProcess.SHOP_IMG_PATH, preS_picture1));
					shopInfo.setS_picture2(FileProcess.updateImg(shopImages[1], FileProcess.SHOP_IMG_PATH, preS_picture2));
				}
				break;
			case 3:
				if(preS_picture3 == null) {
					shopInfo.setS_picture1(FileProcess.insertImg(shopImages[0], FileProcess.SHOP_IMG_PATH));
					shopInfo.setS_picture2(FileProcess.insertImg(shopImages[1], FileProcess.SHOP_IMG_PATH));
					shopInfo.setS_picture3(FileProcess.insertImg(shopImages[2], FileProcess.SHOP_IMG_PATH));
				} else {
					shopInfo.setS_picture1(FileProcess.updateImg(shopImages[0], FileProcess.SHOP_IMG_PATH, preS_picture1));
					shopInfo.setS_picture2(FileProcess.updateImg(shopImages[1], FileProcess.SHOP_IMG_PATH, preS_picture2));
					shopInfo.setS_picture3(FileProcess.updateImg(shopImages[2], FileProcess.SHOP_IMG_PATH, preS_picture3));
				}
				break;
			}
		} else {
			// 정보수정에서 사진 등록을 하지 않으면 기존 사진 정보를 냅둠
			if(preS_picture1 != null)
				shopInfo.setS_picture1(preS_picture1);
			if(preS_picture2 != null)
				shopInfo.setS_picture2(preS_picture2);
			if(preS_picture3 != null)
				shopInfo.setS_picture3(preS_picture3);
		}
		
		// 지역코드 설정
		Map<String, String> addrParam = ExtractAreaCode.getAreaCode(shopInfo.getS_address1());
		String areaCode = aService.getAreaCode(addrParam);
		shopInfo.setA_code(areaCode);
		
		service.shopInfoUpdate(shopInfo);
		
		return "redirect:shopManagement?m_id=" + shopInfo.getM_id();
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
	
	@PostMapping(value="employerMapper/shopRegister")
	public String shopRegister(ShopInfoDTO shopInfo, MultipartFile license, MultipartFile[] shopImages) throws Exception {
		
		// 사업자 등록증 업로드 했을 때 등록
		if(!license.getOriginalFilename().isEmpty()) {
			String savedName = FileProcess.insertImg(license, FileProcess.SHOP_LICENSE_PATH);
			shopInfo.setBusiness_license(savedName);
		}
		
		// 가게사진 최대 3개 까지 등록
		// 등록을 안하면 파일 수 1에 파일명 "" 빈값으로 들어옴
		logger.info("가게사진 파일 수: " + shopImages.length);
		if(!shopImages[0].getOriginalFilename().isEmpty()) {
			switch(shopImages.length) {
			case 1:
				shopInfo.setS_picture1(FileProcess.insertImg(shopImages[0], FileProcess.SHOP_IMG_PATH));
				break;
			case 2:
				shopInfo.setS_picture1(FileProcess.insertImg(shopImages[0], FileProcess.SHOP_IMG_PATH));
				shopInfo.setS_picture2(FileProcess.insertImg(shopImages[1], FileProcess.SHOP_IMG_PATH));
				break;
			case 3:
				shopInfo.setS_picture1(FileProcess.insertImg(shopImages[0], FileProcess.SHOP_IMG_PATH));
				shopInfo.setS_picture2(FileProcess.insertImg(shopImages[1], FileProcess.SHOP_IMG_PATH));
				shopInfo.setS_picture3(FileProcess.insertImg(shopImages[2], FileProcess.SHOP_IMG_PATH));
				break;
			}
		}
		
		// 지역코드 설정
		Map<String, String> addrParam = ExtractAreaCode.getAreaCode(shopInfo.getS_address1());
		String areaCode = aService.getAreaCode(addrParam);
		shopInfo.setA_code(areaCode);
			
		service.shopRegister(shopInfo);
			
		return "redirect:/employerMapper/shopManagement?m_id=" + shopInfo.getM_id();
	}
	
//	공고 삭제
	@GetMapping(value="employerMapper/adsDelete")
	public String adsDelete(@RequestParam("a_number")int a_number, @RequestParam("m_id")String m_id)throws Exception{
		service.adsDelete(a_number);
		return "redirect:/employerMapper/adsHistory?m_id=" + m_id;
	}
	
//	가게 삭제
	@GetMapping(value="employerMapper/shopDelete")
	public String shopDelete(@RequestParam("s_number")int s_number, @RequestParam("m_id")String m_id)throws Exception{
		service.shopDelete(s_number);
		return "redirect:/employerMapper/shopManagement?m_id=" + m_id;
	}
}
