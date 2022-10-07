package kr.co.deataworld.controller;

import java.lang.ProcessBuilder.Redirect;
import java.lang.annotation.Retention;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.co.deataworld.dto.JobAdsDTO;
import kr.co.deataworld.dto.JobApplyDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.ResumeDTO;
import kr.co.deataworld.service.AccountService;
import kr.co.deataworld.service.EmployeeService;
import kr.co.deataworld.service.NotificationService;
import kr.co.deataworld.util.ExtractAreaCode;
import kr.co.deataworld.util.FileProcess;
/*
 * 구직자 컨트롤러 (마이페이지)
 */
@Controller
public class EmployeeController {
	@Inject
	EmployeeService service;
	
	@Autowired
	AccountService aService;
	
	@Inject
	NotificationService nService;
	
	private static final Logger logger = LoggerFactory.getLogger(EmployeeController.class);
	
	//내 정보 불러오기
	@GetMapping(value="employeeMapper/myInfo")
	public ModelAndView myInfo(@RequestParam("m_id")String m_id, HttpSession session)throws Exception {
		ModelAndView mav = new ModelAndView();
		Map<String, Object> myInfo = service.myInfo(m_id);
		mav.addObject("myInfo", myInfo);
		mav.setViewName("employee/myInfo/myInfo");
		
		// 헤더 로그인 표시정보를 바꾸기 위한 세션값 갱신
		session.setAttribute("loginM_nick", myInfo.get("m_nick"));
		session.setAttribute("loginM_picture", myInfo.get("m_picture"));
		return mav;
	}
	
	
	// 내 정보 수정하기
	@ResponseBody
	@PostMapping(value = "employeeMapper/myInfoUpdate")
	public int myInfoUpdate(MemberDTO memberDTO, MultipartFile chooseFile, String preFileName) throws Exception {
		// 사진을 변경했다면 로컬 프로필 이미지 폴더에서 기존 사진을 삭제하고 새 사진을 저장
		if(chooseFile != null) {
			String savedName = FileProcess.updateImg(chooseFile, FileProcess.PROFILE_IMG_PATH, preFileName);
			memberDTO.setM_picture(savedName);
		}
		
		// 지역코드 설정
		Map<String, String> addrParam = ExtractAreaCode.getAreaCode(memberDTO.getM_address1());
		String areaCode = aService.getAreaCode(addrParam);
		System.out.println("지역코드: "+areaCode);
		memberDTO.setA_code(areaCode);
		
		System.out.println(memberDTO);
		return service.myInfoUpdate(memberDTO);
	}
	
	
	//구직자 자기소개서 관리
	@GetMapping(value="employeeMapper/resumeManagement")
	public ModelAndView resumeManagement(@RequestParam("m_id")String m_id)throws Exception {
		ModelAndView mav = new ModelAndView();
		List<ResumeDTO> list = service.resumeManagement(m_id);
		System.out.println("값이 있나? : " + list);
		mav.addObject("list", list);
		mav.setViewName("employee/resume/resumeManagement");
		return mav;
	}
	
	
	//자소서 글 읽기
	@GetMapping(value="employeeMapper/selectResume")
	public String selectResume(@RequestParam("m_id")String m_id,
							@RequestParam("i_number")int i_number, Model model) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("m_id", m_id);
		map.put("i_number", i_number);
		ResumeDTO resume = service.selectResume(map);
		model.addAttribute("resume", resume);
		return "employee/resume/selectResume";
	}
	
	
	//선택한 자소서 수정 폼으로 이동
		@GetMapping(value="employeeMapper/resumeUpdate")
		public String resumeUpdate(@RequestParam("i_number")int i_number,
								   @RequestParam("m_id")String m_id, Model model)throws Exception {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("m_id", m_id);
			map.put("i_number", i_number);
			ResumeDTO resume = service.selectResume(map);
			model.addAttribute("resume", resume);
			return "employee/resume/resumeUpdate";
		}
	
	
	//ajax를 이용한 자기소개서 수정 저장
	@ResponseBody
	@PostMapping(value="employeeMapper/resumeUpdate")
	public int resumeUpdate(ResumeDTO resumDTO)throws Exception {
		return service.resumeUpdate(resumDTO);
	}
	
	
	//자기소개서 삭제
	@GetMapping(value="employeeMapper/resumeDelete")
	public String resumeDelete(ResumeDTO resumeDTO, Model model)throws Exception {
		service.resumeDelete(resumeDTO);
		model.addAttribute("m_id", resumeDTO.getM_id());
		return "redirect:resumeManagement";
	}
	
	
	//구직자 자기소개서 작성 폼으로 이동
	@GetMapping(value="employeeMapper/resumeRegister")
	public String resumeRegister()throws Exception {
		return "employee/resume/resumeRegister";
	}
	
	//ajax
	//구직자 자기소개서 작성 저장
	@ResponseBody
	@PostMapping(value="employeeMapper/resumeRegister")
	public int resumeRegister(ResumeDTO resumeDTO, Model model)throws Exception {
		Map<String, Object> intro = service.resumeChk(resumeDTO); //m_id를 통해 자기소개서가 등록 되어있는지 확인
		if(intro == null) { //자기소개서가 등록되어있지 않다면
			return service.resumeRegister_1(resumeDTO); //작성된 자기소개서를 대표자기소개서(i_default = 1)로 변경후 저장.
		} else {
			return service.resumeRegister(resumeDTO); //자기소개서가 등록되어있다면 일반자기소개서(i_default = 0)로 저장.
		}
	}
	
	
	//자소서 대표 설정
	@GetMapping(value="employeeMapper/resumeDefault")
	public String defaultIntro(ResumeDTO resumeDTO, Model model)throws Exception {
		service.resumeDefaultInit(resumeDTO);
		service.resumeDefault(resumeDTO);
		model.addAttribute("m_id", resumeDTO.getM_id());
		return "redirect:resumeManagement";
	}
	
	
	//대타신청 - 신청을 하면 -> m_id 값을 보냄 -> 이미 지원한 공고인지 확인 해야함 -> 구직/구인자 지원상태를 0(지원함)으로 바꿈 -> 구직자 대표 자기소개서를 update해줌. 
	// 구인자한테 신청했다고 알림 보냄
	@GetMapping(value="employeeMapper/jobApply")
	public String jobApply(JobApplyDTO jobapplyDTO, String employer_id, String s_name)throws Exception {
		//지원하기 누르면 1.대표설정된 자기소개서가 있는지 확인이 필요 - 확인값이 0보다 크면 - 대표자소서가 설정되어 있는것
		Map<String, Object> chk = new HashMap<String, Object>();
		chk = service.introChk(jobapplyDTO);
		
		if(chk != null) {
			service.jobApply(jobapplyDTO); //m_id, 구직&구인자 지원상태를 0(지원함)으로 insert 함
			service.applyIntro(jobapplyDTO); //구직자가 볼수있게 대표 자기소개서를 update 함
			
			// 공고 지원자 알림을 등록할 정보
			Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
			notiInsertInfo.put("m_id", employer_id);
			notiInsertInfo.put("s_name", s_name);
			notiInsertInfo.put("n_type", 0);
			nService.insertAdsApplicant(notiInsertInfo);
			return "redirect:/jobAds/listAll";
			
		} else { //0보다 크지않다 - null값이다 - 대표설정된 자소서가 없다.
			return "redirect:/employeeMapper/resumeManagement?m_id=" + jobapplyDTO.getM_id();
		}
		
	}
	
	//신청 -> 가게정보 불러오기 -> 대타내역 보여주기
	//신청 -> 대표 자소서 보내야함
	
	
	//구직자 신청한 대타내역 모두 불러오기
	@GetMapping(value="employeeMapper/pinchHistory")
	public ModelAndView pinchHistory(@RequestParam("m_id") String m_id, Model model)throws Exception {
		model.addAttribute("leftMenu", "pinchHistory");
		ModelAndView mav = new ModelAndView();
		List<Map> list = service.pinchHistory(m_id);
		mav.addObject("list", list);
		mav.setViewName("employee/pinch/pinchHistory");
		return mav;
	}
	
	
	//구직 신청한 가게 상세정보 보기
	@GetMapping(value="employeeMapper/pinchDetail")
	public String pinchDetail(@RequestParam("s_number") int s_number)throws Exception {
		return "redirect:jobAds/listAllDetail";
	}
	
	
	//구직자 지원현황
	@GetMapping(value="employeeMapper/pinchStatus")
	public ModelAndView pinchStatus(@RequestParam("m_id") String m_id ,Model model)throws Exception {
		model.addAttribute("leftMenu", "pinchStatus");
		ModelAndView mav = new ModelAndView();
		List<Map> list = service.pinchStatus(m_id);
		mav.addObject("list", list);
		mav.setViewName("employee/pinch/pinchStatus");
		return mav;
	}
	
	
	//구직자 종료된 공고
	@GetMapping(value="employeeMapper/pinchExpired")
	public ModelAndView pinchExpired(@RequestParam("m_id") String m_id, Model model)throws Exception {
		ModelAndView mav = new ModelAndView();
		List<Map> list = service.pinchExpired(m_id);
		mav.addObject("list", list);
		mav.setViewName("employee/pinch/pinchExpired");
		return mav;
	}
	
	
	//구직자 알바요청받은 목록 검색(주변노예검색)
	@GetMapping(value="employeeMapper/requests")
	public ModelAndView requests(@RequestParam("m_id") String m_id, Model model)throws Exception {
		ModelAndView mav = new ModelAndView();
		List<Map> list = service.requests(m_id);
		mav.addObject("list", list);
		mav.setViewName("employee/pinch/requests");
		return mav;
	}
	
	
	//구직자 요청받은 알바 상세내용 보기
	@GetMapping(value="employeeMapper/requestList")
	public String requestList(@RequestParam("m_id") String m_id, 
							  @RequestParam("a_number") int a_number, Model model)throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("m_id", m_id);
		map.put("a_number", a_number);
		Map<String, Object> list = service.requestList(map);
		model.addAttribute("map", list);
		return "jobAds/requestList";
	}
	
	
	//ajax
	//구직자 요청받은 공고 수락버튼 클릭(m_id, a_number 가지고 가야함) -> job_apply의 jae_status, jar_status 상태를 변경하고 -> 대타내역으로 이동함.(m_id를 가지고 가야함)
	@ResponseBody
	@PostMapping(value="employeeMapper/requestYes")
	public int requestYes(JobApplyDTO jobApplyDTO)throws Exception {
		return service.requestYes(jobApplyDTO);
	}

	
	//ajax
	//구직자 요청받은 공고 거절버튼 클릭(m_id, a_number 가지고 가야함) -> job_apply의 jae_status, jar_status 상태를 변경하고 -> 대타내역으로 이동함.(m_id를 가지고 가야함)
	@ResponseBody
	@PostMapping(value="employeeMapper/requestNo")
	public int requestNo(JobApplyDTO jobApplyDTO)throws Exception {
		return service.requestNo(jobApplyDTO);
	}
	
	//완료된 공고 '확인' 버튼 클릭시 a_status의 상태를 3으로 변경
	@ResponseBody
	@PostMapping(value="employeeMapper/pinchChk")
	public int pinchChk(@RequestParam Map<String, Object> map )throws Exception{
		System.out.println("asdasds : " + map);
		return service.pinchChk(map);
	}
	
	
	//공고 신청 후 (구인자는 수락상태) 수락 선택
	@GetMapping(value="employeeMapper/apply_o")
	public String apply_o(@RequestParam("ja_number") int ja_number,
						  @RequestParam("m_id") String m_id, Model model)throws Exception{
		service.apply_o(ja_number);
		model.addAttribute("m_id", m_id);
		return "redirect:pinchStatus";
	}
	
	
	//공고 신청 후 (구인자는 수락상태) 거절 선택
	@GetMapping(value="employeeMapper/apply_x")
	public String apply_x(@RequestParam("ja_number") int ja_number,
						  @RequestParam("m_id") String m_id, Model model)throws Exception{
		service.apply_x(ja_number);
		model.addAttribute("m_id", m_id);
		return "redirect:pinchStatus";
	}
	
	
	//신청한 공고 취소하기 ajax
	@ResponseBody
	@PostMapping(value="employeeMapper/applyCancel")
	public int applyCancel(@RequestParam Map<String, Object> map, Model model)throws Exception{
		System.out.println("값 받았니?" + map);
		return service.applyCancel(map);
	}
	
	
	
	
	
	
}
