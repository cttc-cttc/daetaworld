package kr.co.deataworld.controller;

import java.lang.ProcessBuilder.Redirect;
import java.lang.annotation.Retention;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.catalina.filters.AddDefaultCharsetFilter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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
import kr.co.deataworld.service.EmployeeService;
import kr.co.deataworld.util.FileProcess;
/*
 * 구직자 컨트롤러 (마이페이지)
 */
@Controller
public class EmployeeController {
	@Inject
	EmployeeService service;
	
	private static final Logger logger = LoggerFactory.getLogger(EmployeeController.class);
	
	//내 정보 불러오기
	@GetMapping(value="employeeMapper/myInfo")
	public ModelAndView myInfo(@RequestParam("m_id")String m_id)throws Exception {
		ModelAndView mav = new ModelAndView();
		Map<String, Object> myInfo = service.myInfo(m_id);
		mav.addObject("myInfo", myInfo);
		mav.setViewName("employee/myInfo/myInfo");
		return mav;
	}
	
	
	// 내 정보 수정하기
	@ResponseBody
	@PostMapping(value = "employeeMapper/myInfoUpdate")
	public int myInfoUpdate(MemberDTO memberDTO, MultipartFile chooseFile, String preFileName) throws Exception {
		// 사진을 변경했다면 로컬 프로필 이미지 폴더에서 기존 사진을 삭제하고 새 사진을 저장
		System.out.println(chooseFile);
		if(!chooseFile.getOriginalFilename().isEmpty()) {
			String savedName = FileProcess.updateImg(chooseFile, FileProcess.PROFILE_IMG_PATH, preFileName);
			memberDTO.setM_picture(savedName);
		}
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
	
	
//	//구직자 자기소개서 작성 폼으로 이동
//	@GetMapping(value="employeeMapper/resumeRegister")
//	public String resumeRegister()throws Exception {
//		String m_id="user";
//		if(service.resumeRegister(m_id).size()) {
//			
//		}
//		
//		return "employee/resume/resumeRegister";
//	}
	
	//구직자 자기소개서 작성 폼으로 이동
	@GetMapping(value="employeeMapper/resumeRegister")
	public String resumeRegister()throws Exception {
		return "employee/resume/resumeRegister";
	}
	
	
	//구직자 자기소개서 작성 저장
	@PostMapping(value="employeeMapper/resumeRegister")
	public String resumeRegister(ResumeDTO resumeDTO, Model model)throws Exception {
		service.resumeRegister(resumeDTO);
		model.addAttribute("m_id", resumeDTO.getM_id());
		return "redirect:resumeManagement";
	}
	
	
	//자소서 대표 설정
	@GetMapping(value="employeeMapper/resumeDefault")
	public String defaultIntro(ResumeDTO resumeDTO, Model model)throws Exception {
		service.resumeDefaultInit(resumeDTO);
		service.resumeDefault(resumeDTO);
		model.addAttribute("m_id", resumeDTO.getM_id());
		return "redirect:resumeManagement";
	}
	
//	ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
	//신청 -> 가게정보 불러오기 -> 대타내역 보여주기
	//신청 -> 대표 자소서 보내야함
	
	
	//대타신청 - 신청을 하면 -> m_id 값을 보냄 -> 이미 지원한 공고인지 확인 해야함 -> 구직/구인자 지원상태를 0(지원함)으로 바꿈 -> 구직자 대표 자기소개서를 update해줌. 
	@GetMapping(value="employeeMapper/jobApply")
	public String jobApply(JobApplyDTO jobapplyDTO)throws Exception {
		service.jobApply(jobapplyDTO); //m_id, 구직&구인자 지원상태를 0(지원함)으로 insert 함
		service.applyIntro(jobapplyDTO); //구직자가 볼수있게 대표 자기소개서를 update 함
		return "redirect:/jobAds/listAll";
	}
	
	
	
	//구직자 대타내역 보기 ()
//	@GetMapping(value="employeeMapper/pinchHistory")
//	public ModelAndView pinchHistory(Model model)throws Exception {
//		model.addAttribute("leftMenu", "pinchHistory");
//		ModelAndView mav = new ModelAndView();
//		List<JobAdsDTO> list = service.pinchHistory();
//		mav.addObject("list", list);
//		mav.setViewName("employee/pinch/pinchHistory");
//		return mav;
//	}

	
	
	//구직자 대타내역
	@GetMapping(value="employeeMapper/pinchHistory")
	public ModelAndView pinchHistory(Model model)throws Exception {
		model.addAttribute("leftMenu", "pinchHistory");
		ModelAndView mav = new ModelAndView();
		List<JobAdsDTO> list = service.pinchHistory();
		mav.addObject("list", list);
		mav.setViewName("employee/pinch/pinchHistory");
		return mav;
	}
	
	
	
	
	
	//구직자 지원현황
	@GetMapping(value="employeeMapper/pinchStatus")
	public String pinchStatus(Model model) {
		model.addAttribute("leftMenu", "pinchStatus");
		return "employee/pinch/pinchStatus";
	}
	
	
	//구직자 알바요청
	@GetMapping(value="employeeMapper/requests")
	public String requests() {
		return "employee/pinch/requests";
	}
	
	
	//구직자 종료된 공고
	@GetMapping(value="employeeMapper/pinchExpired")
	public String pinchExpired() {
		return "employee/pinch/pinchExpired";
	}
	
}
