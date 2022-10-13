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
import org.springframework.web.bind.annotation.RequestBody;
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
import kr.co.deataworld.service.EmployerService;
import kr.co.deataworld.service.NotificationService;
import kr.co.deataworld.util.ExtractAreaCode;
import kr.co.deataworld.util.FileProcess;

// 구직자 컨트롤러 (마이페이지)
 
@Controller
public class EmployeeController {
	@Inject
	EmployeeService service;
	
	@Autowired
	AccountService aService;
	
	@Inject
	NotificationService nService;
	
	@Inject
	EmployerService rService;
	
	private static final Logger logger = LoggerFactory.getLogger(EmployeeController.class);
	
	//내 정보 불러오기
	@GetMapping(value="employeeMapper/myInfo")
	public ModelAndView myInfo(@RequestParam("m_id")String m_id, Model model, HttpSession session)throws Exception {
		model.addAttribute("leftMenu", "myInfo");
		ModelAndView mav = new ModelAndView();
		Map<String, Object> myInfo = service.myInfo(m_id);
		mav.addObject("myInfo", myInfo);
		mav.setViewName("employee/myInfo/myInfo");
		
		// 헤더 로그인 표시정보를 바꾸기 위한 세션값 갱신
		session.setAttribute("loginM_nick", myInfo.get("m_nick"));
		session.setAttribute("loginM_picture", myInfo.get("m_picture"));
		return mav;
	}
	
	
	//회원 탈퇴
	@PostMapping(value = "employeeMapper/e_signOut")
	public String e_signOut(@RequestParam("m_id")String m_id, HttpSession session) throws Exception{
		rService.signOut(m_id);
		session.invalidate();
		return "redirect:/";
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
	
	
	//등록된 자소서 체크하는 메소드
	public int commonResumeChk(ResumeDTO resumeDTO)throws Exception{
		List<Map<String, Object>> map = service.resumeChk(resumeDTO);
		if(map.size() >= 3) {//작성 불가능 (자소서 3개이상) 9리턴
			int result = 9;
			return result;
		}else {
			int result = 8;
			return result;
		}
	}
	
	//수정중
	//구직자 자기소개서 관리
	@GetMapping(value = "employeeMapper/resumeManagement")
	public ModelAndView resumeManagement(ResumeDTO resumeDTO, Model model) throws Exception {
		model.addAttribute("leftMenu", "resumeManagement");
		ModelAndView mav = new ModelAndView();
		// 자소서 3개까지 등록가능
		int result = commonResumeChk(resumeDTO); 
			List<ResumeDTO> list = service.resumeManagement(resumeDTO.getM_id());
			mav.addObject("result", result);
			mav.addObject("list", list);
			mav.setViewName("employee/resume/resumeManagement");
			return mav;
		}

	
	//자소서 글 읽기
	@GetMapping(value="employeeMapper/selectResume")
	public String selectResume(ResumeDTO resumeDTO, Model model) throws Exception {
		int result = commonResumeChk(resumeDTO); //게시글 갯수 확인 메소드 리턴이 9면 작성불가, 리턴이 8이면 작성가능
		ResumeDTO resume = service.selectResume(resumeDTO);
		model.addAttribute("result", result);
		model.addAttribute("resume", resume);
		return "employee/resume/selectResume";
	}
	
	
	//선택한 자소서 수정 폼으로 이동
	@GetMapping(value="employeeMapper/resumeUpdate")
	public String resumeUpdate(ResumeDTO resumeDTO, Model model)throws Exception {
		int result = commonResumeChk(resumeDTO);
		ResumeDTO resume = service.selectResume(resumeDTO);
		model.addAttribute("result", result);
		model.addAttribute("resume", resume);
		return "employee/resume/resumeUpdate";
	}
	
	
	//ajax를 이용한 자기소개서 수정 저장
	@ResponseBody
	@PostMapping(value="employeeMapper/resumeUpdate")
	public int resumeUpdate(ResumeDTO resumDTO)throws Exception {
		return service.resumeUpdate(resumDTO);
	}
	
	//ajax
	// 자기소개서 삭제
	@ResponseBody
	@PostMapping(value = "employeeMapper/resumeDelete")
	public int resumeDelete(ResumeDTO resumeDTO, Model model) throws Exception {
		int res = service.defaultIntro_xDel(resumeDTO);
		if(res == 0) {//대표자소서가 아니면 삭제 성공
			return service.resumeDelete(resumeDTO);
		}else{
			int result = 9;
			return result;
		}
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
		List<Map<String, Object>> intro = service.resumeChk(resumeDTO); //m_id를 통해 자기소개서가 등록 되어있는지 확인
		System.out.println("왜 도대체 왜 안나오냐1:" + intro);
		if(intro.size() > 0) { //자기소개서가 등록되어있다면
			System.out.println("왜 도대체 왜 안나오냐2:" + intro);
			return service.resumeRegister(resumeDTO); //자기소개서가 등록되어있다면 일반자기소개서(i_default = 0)로 저장.
		} else {
			System.out.println("왜 도대체 왜 안나오냐3:" + intro);
			return service.resumeRegister_1(resumeDTO); //작성된 자기소개서를 대표자기소개서(i_default = 1)로 변경후 저장.
		}
	}
	
	
	//자소서 대표 설정
	@ResponseBody
	@PostMapping(value="employeeMapper/resumeDefault")
	public int defaultIntro(ResumeDTO resumeDTO)throws Exception {
		service.resumeDefaultInit(resumeDTO);
		return service.resumeDefault(resumeDTO);
	}
	
	
	//대타신청 - 신청을 하면 -> m_id 값을 보냄 -> 이미 지원한 공고인지 확인 해야함 -> 구직/구인자 지원상태를 0(지원함)으로 바꿈 -> 구직자 대표 자기소개서를 update해줌. 
	@GetMapping(value="employeeMapper/jobApply")
	public String jobApply(JobApplyDTO jobapplyDTO, String employer_id, String s_name)throws Exception {
		//지원하기 누르면 1.대표설정된 자기소개서가 있는지 확인이 필요 - 확인값이 0보다 크면 - 대표자소서가 설정되어 있는것
		Map<String, Object> chk = new HashMap<String, Object>();
		chk = service.introChk(jobapplyDTO);
		if(chk != null) {
			service.jobApply(jobapplyDTO); //m_id, 구직&구인자 지원상태를 0(지원함)으로 insert 함
			service.applyIntro(jobapplyDTO); //구직자가 볼수있게 대표 자기소개서를 update 함
			
			// 알림타입 1: 구직자가 공고지원 신청 시 구인자에게 알림발송
			Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
			notiInsertInfo.put("m_id", employer_id);
			notiInsertInfo.put("s_name", s_name);
			notiInsertInfo.put("n_type", 1);
			nService.insertNotiType1(notiInsertInfo);
			return "redirect:/employeeMapper/pinchStatus?m_id=" + jobapplyDTO.getM_id();
		} else { //0보다 크지않다 - null값이다 - 대표설정된 자소서가 없다.
			return "redirect:/employeeMapper/resumeManagement?m_id=" + jobapplyDTO.getM_id();
		}
	}
	
	
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
	public ModelAndView pinchStatus(@RequestParam("m_id") String m_id, String pageType, Model model)throws Exception {
		model.addAttribute("leftMenu", "pinchStatus");
		ModelAndView mav = new ModelAndView();
		List<Map> list = service.pinchStatus(m_id);
		mav.addObject("list", list);
		mav.setViewName("employee/pinch/pinchStatus");
		
		// 타입 7 알림을 클릭해 들어온 경우
		if(pageType != null) {
			Map<String, Object> delNotiInfo = new HashMap<String, Object>();
			delNotiInfo.put("m_id", m_id);
			delNotiInfo.put("n_type", 7);
			nService.deletePart(delNotiInfo);
		}
		return mav;
	}
	
	
	//구직자 종료된 공고
	@GetMapping(value="employeeMapper/pinchExpired")
	public ModelAndView pinchExpired(@RequestParam("m_id") String m_id, Model model)throws Exception {
		model.addAttribute("leftMenu", "pinchExpired");
		ModelAndView mav = new ModelAndView();
		List<Map> list = service.pinchExpired(m_id);
		mav.addObject("list", list);
		mav.setViewName("employee/pinch/pinchExpired");
		return mav;
	}
	
	
	//구직자 알바요청받은 목록 검색(주변노예검색)
	@GetMapping(value="employeeMapper/requests")
	public ModelAndView requests(@RequestParam("m_id") String m_id,
									String pageType, Model model)throws Exception {
		ModelAndView mav = new ModelAndView();
		List<Map> list = service.requests(m_id);
		mav.addObject("list", list);
		mav.setViewName("employee/pinch/requests");
		
		// 타입 6 알림을 클릭해 들어온 경우
		if(pageType != null) {
			Map<String, Object> delNotiInfo = new HashMap<String, Object>();
			delNotiInfo.put("m_id", m_id);
			delNotiInfo.put("n_type", 6);
			nService.deletePart(delNotiInfo);
		}
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
	public int requestYes(JobApplyDTO jobApplyDTO, String owner_id)throws Exception {
		service.requestYes(jobApplyDTO);
		// 알림타입 2: 구직자가 구인자의 요청을 수락/거절하면 구인자에게 알림발송
		Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
		notiInsertInfo.put("m_id", owner_id);
		notiInsertInfo.put("n_type", 2);
		notiInsertInfo.put("ja_status", "y");
		return nService.insertNotiType2(notiInsertInfo);
	}

	
	//ajax
	//구직자 요청받은 공고 거절버튼 클릭(m_id, a_number 가지고 가야함) -> job_apply의 jae_status, jar_status 상태를 변경하고 -> 대타내역으로 이동함.(m_id를 가지고 가야함)
	@ResponseBody
	@PostMapping(value="employeeMapper/requestNo")
	public int requestNo(JobApplyDTO jobApplyDTO, String owner_id)throws Exception {
		service.requestNo(jobApplyDTO);
		
		// 알림타입 2: 구직자가 구인자의 주변 구직자 요청을 수락/거절하면 구인자에게 알림발송
		Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
		notiInsertInfo.put("m_id", owner_id);
		notiInsertInfo.put("n_type", 2);
		notiInsertInfo.put("ja_status", "n");
		return nService.insertNotiType2(notiInsertInfo);
	}
	
	//완료된 공고 '확인' 버튼 클릭시 a_status의 상태를 3으로 변경
	@ResponseBody
	@PostMapping(value="employeeMapper/pinchChk")
	public int pinchChk(@RequestParam Map<String, Object> map)throws Exception{
		System.out.println("asdasds : " + map);
		return service.pinchChk(map);
	}
	
	//ajax
	//공고 신청 후 (구인자는 수락상태) 수락 선택
	@ResponseBody
	@PostMapping(value="employeeMapper/apply_o")
	public int apply_o(@RequestParam("ja_number") int ja_number, @RequestParam("m_id") String m_id, Model model)throws Exception{
		return service.apply_o(ja_number);
	}
	
	//ajax
	//공고 신청 후 (구인자는 수락상태) 거절 선택
	@ResponseBody
	@PostMapping(value="employeeMapper/apply_x")
	public int apply_x(@RequestParam("ja_number") int ja_number, @RequestParam("m_id") String m_id, Model model)throws Exception{
		return service.apply_x(ja_number);
	}
	
	//ajax
	//신청한 공고 취소하기
	@ResponseBody
	@PostMapping(value="employeeMapper/applyCancel")
	public int applyCancel(@RequestParam Map<String, Object> map, Model model)throws Exception{
		System.out.println("값 받았니?" + map);
		return service.applyCancel(map);
	}
	
	//신청 취소한 공고 재신청하기
	@GetMapping(value="employeeMapper/reApply")
	public String reApply(JobApplyDTO jobApply)throws Exception {
		service.reApply(jobApply);
		System.out.println("내가 재신청 넣어줬다??");
		return "redirect:/employeeMapper/pinchHistory?m_id=" + jobApply.getM_id();
	}
	
	
	
}
