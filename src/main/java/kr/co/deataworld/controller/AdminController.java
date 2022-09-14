package kr.co.deataworld.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.deataworld.dto.BlacklistDTO;
import kr.co.deataworld.dto.JobAdsReportDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.service.AdminService;
import kr.co.deataworld.util.PageProcess;

/*
 * 관리자화면 컨트롤러
 */
@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	AdminService service;
	
	@GetMapping(value = "admin/employee_list")
	public String employeeList(Model model, int page) throws Exception {
		logger.info("관리자화면 접속 : 구직자 회원 리스트");
		
		// 1페이지 미만의 번호를 넘기면 1페이지로
		if(page < 1)
			return "redirect:employee_list?page=1";
		
		PageProcess pp = new PageProcess();
		pp.setCurrPage(page); // 현재 페이지
		pp.setPagePerList(10); // 한 페이지에 보여줄 구직자 수
		pp.setPagePerNavi(10); // 페이지 네비게이터에 표시할 페이지 수
		pp.setBoardCnt(service.employeeCnt()); // 전체 구직자 수
		
		// 마지막 페이지를 초과한 번호를 넘기면 마지막 페이지로
		int lastPage = pp.calcLastPage();
		if(page > lastPage)
			return "redirect:employee_list?page=" + lastPage;
			
		List<MemberDTO> eList = service.employeeList(pp);
		model.addAttribute("eList", eList);
		model.addAttribute("pp", pp);
		model.addAttribute("leftMenu", "employee_list");
		return "admin/employee_list";
	}
	
	@GetMapping(value = "admin/employee_profile")
	public String employeeProfile(Model model) {
		logger.info("관리자화면 접속 : 구직자 회원 프로필");
		
		model.addAttribute("leftMenu", "employee_list");
		return "admin/employee_profile";
	}
	
	@GetMapping(value = "admin/employer_list")
	public String employerList(Model model, int page) throws Exception {
		logger.info("관리자화면 접속 : 구인자 회원 리스트");
		
		// 1페이지 미만의 번호를 넘기면 1페이지로
		if(page < 1)
			return "redirect:employer_list?page=1";
		
		PageProcess pp = new PageProcess();
		pp.setCurrPage(page); // 현재 페이지
		pp.setPagePerList(10); // 한 페이지에 보여줄 구인자 수
		pp.setPagePerNavi(10); // 페이지 네비게이터에 표시할 페이지 수
		pp.setBoardCnt(service.employerCnt()); // 전체 구인자 수
		
		// 마지막 페이지를 초과한 번호를 넘기면 마지막 페이지로
		int lastPage = pp.calcLastPage();
		if(page > lastPage)
			return "redirect:employer_list?page=" + lastPage;
			
		List<MemberDTO> rList = service.employerList(pp);
		model.addAttribute("rList", rList);
		model.addAttribute("pp", pp);
		model.addAttribute("leftMenu", "employer_list");
		return "admin/employer_list";
	}
	
	@GetMapping(value = "admin/employer_profile")
	public String employerProfile(Model model) {
		logger.info("관리자화면 접속 : 구인자 회원 프로필");
		
		model.addAttribute("leftMenu", "employer_list");
		return "admin/employer_profile";
	}
	
	@GetMapping(value = "admin/blacklist")
	public String blacklist(Model model, int page) throws Exception {
		logger.info("관리자화면 접속 : 블랙리스트");
		
		// 1페이지 미만의 번호를 넘기면 1페이지로
		if(page < 1)
			return "redirect:blacklist?page=1";
		
		PageProcess pp = new PageProcess();
		pp.setCurrPage(page); // 현재 페이지
		pp.setPagePerList(10); // 한 페이지에 보여줄 블랙리스트 수
		pp.setPagePerNavi(10); // 페이지 네비게이터에 표시할 페이지 수
		pp.setBoardCnt(service.blacklistCnt()); // 전체 블랙리스트 수
		
		// 마지막 페이지를 초과한 번호를 넘기면 마지막 페이지로
		int lastPage = pp.calcLastPage();
		if(page > lastPage)
			return "redirect:blacklist?page=" + lastPage;
			
		List<BlacklistDTO> blacklist = service.blacklist(pp);
		for(BlacklistDTO bList : blacklist) { // r_types와 c_numbers를 분할해서 배열에 각각 따로 저장
			bList.setR_type(bList.getR_types().split(","));
			bList.setC_number(bList.getC_numbers().split(","));
			
			// [[신고타입1, 댓글번호1], [신고타입2, 댓글번호2], [신고타입3, 댓글번호3]] 형식으로 저장
			ArrayList<ArrayList<String>> rType_cNumbers = new ArrayList<ArrayList<String>>();
			for(int i=0; i<bList.getR_type().length; i++) {
				ArrayList<String> rType_cNumber = new ArrayList<String>();
				rType_cNumber.add(bList.getR_type()[i]); // 신고 타입
				rType_cNumber.add(bList.getC_number()[i]); // 해당 댓글 번호
				rType_cNumbers.add(rType_cNumber);
			}
			bList.setrType_cNumbers(rType_cNumbers);
		}
		model.addAttribute("blacklist", blacklist);
		model.addAttribute("pp", pp);
		model.addAttribute("leftMenu", "blacklist");
		return "admin/blacklist";
	}
	
	@GetMapping(value = "admin/job_ads")
	public String jobAds(Model model, int page) throws Exception {
		logger.info("관리자화면 접속 : 구인공고 신고");
		
		// 1페이지 미만의 번호를 넘기면 1페이지로
		if(page < 1)
			return "redirect:job_ads?page=1";
		
		PageProcess pp = new PageProcess();
		pp.setCurrPage(page); // 현재 페이지
		pp.setPagePerList(10); // 한 페이지에 보여줄 구인공고 신고 수
		pp.setPagePerNavi(10); // 페이지 네비게이터에 표시할 페이지 수
		pp.setBoardCnt(service.blacklistCnt()); // 전체 구인공고 신고 수
		
		// 마지막 페이지를 초과한 번호를 넘기면 마지막 페이지로
		int lastPage = pp.calcLastPage();
		if(page > lastPage)
			return "redirect:job_ads?page=" + lastPage;
				
		List<JobAdsReportDTO> jobAds = service.jobAds(pp);
		model.addAttribute("jobAds", jobAds);
		model.addAttribute("pp", pp);
		model.addAttribute("leftMenu", "job_ads");
		return "admin/job_ads";
	}
	
	@GetMapping(value = "admin/free_board")
	public String freeBoard(Model model) {
		logger.info("관리자화면 접속 : 자유게시판 글 신고");
		
		model.addAttribute("leftMenu", "free_board");
		return "admin/free_board";
	}
	
	@GetMapping(value = "admin/free_comment")
	public String freeComment(Model model) {
		logger.info("관리자화면 접속 : 자유게시판 댓글 신고");
		
		model.addAttribute("leftMenu", "free_comment");
		return "admin/free_comment";
	}
	
	@GetMapping(value = "admin/temping_board")
	public String tempingBoard(Model model) {
		logger.info("관리자화면 접속 : 땜빵게시판 글 신고");
		
		model.addAttribute("leftMenu", "temping_board");
		return "admin/temping_board";
	}
	
	@GetMapping(value = "admin/temping_comment")
	public String tempingComment(Model model) {
		logger.info("관리자화면 접속 : 땜빵게시판 댓글 신고");
		
		model.addAttribute("leftMenu", "temping_comment");
		return "admin/temping_comment";
	}

}
