package kr.co.deataworld.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.deataworld.dto.BlacklistDTO;
import kr.co.deataworld.dto.DeductedPointDTO;
import kr.co.deataworld.dto.EarnedPointDTO;
import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.PointDTO;
import kr.co.deataworld.service.AdminService;
import kr.co.deataworld.service.PointService;
import kr.co.deataworld.util.PageProcess;

/*
 * 관리자화면 컨트롤러
 */
@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	AdminService service;
	
	@Inject
	PointService pService;
	
	@GetMapping(value = "admin/user_profile")
	public String userProfile(Model model, String num, String id) {
		logger.info("num: " + num);
		logger.info("id: " + id);
		
		Map<String, String> param = new HashMap<String, String>();
		param.put("m_number", num);
		param.put("m_id", id);
		
		MemberDTO userInfo = service.getUserInfo(param);
		model.addAttribute("userInfo", userInfo);
		if(userInfo.getM_type() == 1) {
			logger.info("관리자화면 접속 : 구직자 회원 프로필");
			model.addAttribute("title", "구직자 프로필 정보");
			model.addAttribute("leftMenu", "employee_list");
		} else {
			logger.info("관리자화면 접속 : 구인자 회원 프로필");
			model.addAttribute("title", "구인자 프로필 정보");
			model.addAttribute("leftMenu", "employer_list");
		}
		return "admin/user_profile";
	}
	
	@GetMapping(value = "admin/user_point")
	public String userPoint(Model model, String num, String id) throws Exception {
		logger.info("num: " + num);
		logger.info("id: " + id);
		
		Map<String, String> param = new HashMap<String, String>();
		param.put("m_number", num);
		param.put("m_id", id);
		
		MemberDTO userInfo = service.getUserInfo(param);
		model.addAttribute("pointInfo", userInfo);
		if(userInfo.getM_type() == 1) {
			logger.info("관리자화면 접속 : 구직자 회원 포인트");
			model.addAttribute("title", "구직자 포인트 정보");
			model.addAttribute("leftMenu", "employee_list");
		} else {
			logger.info("관리자화면 접속 : 구인자 회원 포인트");
			model.addAttribute("title", "구인자 포인트 정보");
			model.addAttribute("leftMenu", "employer_list");
		}
		
		String tmpId = "owner";
		PointDTO point = pService.point(tmpId);
		List<EarnedPointDTO> earnedPoint = pService.earnedPoint(tmpId);
		List<DeductedPointDTO> deductedPoint = pService.deductedPoint(tmpId);
		
		model.addAttribute("point", point);
		model.addAttribute("earnedPoint", earnedPoint);
		model.addAttribute("deductedPoint", deductedPoint);
		return "admin/user_point";
	}
	
	@GetMapping(value = "admin/employee_list")
	public String employeeList(Model model, int page) throws Exception {
		logger.info("관리자화면 접속 : 구직자 회원 리스트");
		
		// 레코드가 없으면 목록이 없다는 메시지 표시
		int employeeCnt = service.employeeCnt();
		if(employeeCnt == 0) {
			model.addAttribute("listZero", "회원 목록이 없습니다.");
			model.addAttribute("leftMenu", "employee_list");
			return "admin/employee_list";
		}
		
		// 1페이지 미만의 번호를 넘기면 1페이지로
		if(page < 1)
			return "redirect:employee_list?page=1";
		
		PageProcess pp = new PageProcess();
		pp.setCurrPage(page); // 현재 페이지
		pp.setPagePerList(10); // 한 페이지에 보여줄 구직자 수
		pp.setPagePerNavi(10); // 페이지 네비게이터에 표시할 페이지 수
		pp.setBoardCnt(employeeCnt); // 전체 구직자 수
		
		// 마지막 페이지를 초과한 번호를 넘기면 마지막 페이지로
		int lastPage = pp.calcLastPage();
		if(page > lastPage)
			return "redirect:employee_list?page=" + lastPage;
			
		List<Map<String, Object>> eList = service.employeeList(pp);
		model.addAttribute("eList", eList);
		model.addAttribute("pp", pp);
		model.addAttribute("leftMenu", "employee_list");
		return "admin/employee_list";
	}
	
	@GetMapping(value = "admin/employer_list")
	public String employerList(Model model, int page) throws Exception {
		logger.info("관리자화면 접속 : 구인자 회원 리스트");
		
		// 레코드가 없으면 목록이 없다는 메시지 표시
		int employerCnt = service.employerCnt();
		if(employerCnt == 0) {
			model.addAttribute("listZero", "회원 목록이 없습니다.");
			model.addAttribute("leftMenu", "employer_list");
			return "admin/employer_list";
		}
		
		// 1페이지 미만의 번호를 넘기면 1페이지로
		if(page < 1)
			return "redirect:employer_list?page=1";
		
		PageProcess pp = new PageProcess();
		pp.setCurrPage(page); // 현재 페이지
		pp.setPagePerList(10); // 한 페이지에 보여줄 구인자 수
		pp.setPagePerNavi(10); // 페이지 네비게이터에 표시할 페이지 수
		pp.setBoardCnt(employerCnt); // 전체 구인자 수
		
		// 마지막 페이지를 초과한 번호를 넘기면 마지막 페이지로
		int lastPage = pp.calcLastPage();
		if(page > lastPage)
			return "redirect:employer_list?page=" + lastPage;
			
		List<Map<String, Object>> rList = service.employerList(pp);
		model.addAttribute("rList", rList);
		model.addAttribute("pp", pp);
		model.addAttribute("leftMenu", "employer_list");
		return "admin/employer_list";
	}
	
	@GetMapping(value = "admin/blacklist")
	public String blacklist(Model model, int page) throws Exception {
		logger.info("관리자화면 접속 : 블랙리스트");
		
		// 레코드가 없으면 목록이 없다는 메시지 표시
		int blacklistCnt = service.blacklistCnt();
		if(blacklistCnt == 0) {
			model.addAttribute("listZero", "블랙리스트 목록이 없습니다.");
			model.addAttribute("leftMenu", "blacklist");
			return "admin/blacklist";
		}
		
		// 1페이지 미만의 번호를 넘기면 1페이지로
		if(page < 1)
			return "redirect:blacklist?page=1";
		
		PageProcess pp = new PageProcess();
		pp.setCurrPage(page); // 현재 페이지
		pp.setPagePerList(10); // 한 페이지에 보여줄 블랙리스트 수
		pp.setPagePerNavi(10); // 페이지 네비게이터에 표시할 페이지 수
		pp.setBoardCnt(blacklistCnt); // 전체 블랙리스트 수
		
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
		
		// 레코드가 없으면 목록이 없다는 메시지 표시
		int jobAdsCnt = service.jobAdsCnt();
		if(jobAdsCnt == 0) {
			model.addAttribute("listZero", "신고 목록이 없습니다.");
			model.addAttribute("leftMenu", "job_ads");
			return "admin/job_ads";
		}
		
		// 1페이지 미만의 번호를 넘기면 1페이지로
		if(page < 1)
			return "redirect:job_ads?page=1";
		
		PageProcess pp = new PageProcess();
		pp.setCurrPage(page); // 현재 페이지
		pp.setPagePerList(10); // 한 페이지에 보여줄 구인공고 신고 수
		pp.setPagePerNavi(10); // 페이지 네비게이터에 표시할 페이지 수
		pp.setBoardCnt(jobAdsCnt); // 전체 구인공고 신고 수
		
		// 마지막 페이지를 초과한 번호를 넘기면 마지막 페이지로
		int lastPage = pp.calcLastPage();
		if(page > lastPage)
			return "redirect:job_ads?page=" + lastPage;
				
		List<Map<String, Object>> jobAds = service.jobAds(pp);
		model.addAttribute("jobAds", jobAds);
		model.addAttribute("pp", pp);
		model.addAttribute("leftMenu", "job_ads");
		return "admin/job_ads";
	}
	
	@GetMapping(value = "admin/warn_job_ads")
	public String warnJobAds(int a_num) throws Exception {
		logger.info("관리자화면 : 구인공고 신고 삭제");
		
		service.warnJobAds(a_num);
		return "redirect:job_ads?page=1";
	}
	
	@GetMapping(value = "admin/cancel_job_ads")
	public String cancelJobAds(int re_num) throws Exception {
		logger.info("관리자화면 : 구인공고 신고 취소");
		
		service.cancelJobAds(re_num);
		return "redirect:job_ads?page=1";
	}
	
	@GetMapping(value = "admin/free_board")
	public String freeBoard(Model model, int page) throws Exception {
		logger.info("관리자화면 접속 : 자유게시판 글 신고");
		
		// 레코드가 없으면 목록이 없다는 메시지 표시
		int freeBoardCnt = service.freeBoardCnt();
		if(freeBoardCnt == 0) {
			model.addAttribute("listZero", "신고 목록이 없습니다.");
			model.addAttribute("leftMenu", "free_board");
			return "admin/free_board";
		}
		
		// 1페이지 미만의 번호를 넘기면 1페이지로
		if(page < 1)
			return "redirect:free_board?page=1";
		
		PageProcess pp = new PageProcess();
		pp.setCurrPage(page); // 현재 페이지
		pp.setPagePerList(10); // 한 페이지에 보여줄 자유게시판 신고 글 수
		pp.setPagePerNavi(10); // 페이지 네비게이터에 표시할 페이지 수
		pp.setBoardCnt(freeBoardCnt); // 전체 자유게시판 신고 글 수
		
		// 마지막 페이지를 초과한 번호를 넘기면 마지막 페이지로
		int lastPage = pp.calcLastPage();
		if(page > lastPage)
			return "redirect:free_board?page=" + lastPage;
			
		List<Map<String, Object>> freeBoard = service.freeBoard(pp);
		model.addAttribute("freeBoard", freeBoard);
		model.addAttribute("pp", pp);
		model.addAttribute("leftMenu", "free_board");
		return "admin/free_board";
	}
	
	@GetMapping(value = "admin/warn_free_board")
	public String warnFreeBoard(int b_num) throws Exception {
		logger.info("관리자화면 : 자유게시판 신고 글 삭제");
		
		service.warnFreeBoard(b_num);
		return "redirect:free_board?page=1";
	}
	
	@GetMapping(value = "admin/cancel_free_board")
	public String cancelFreeBoard(int re_num) throws Exception {
		logger.info("관리자화면 : 자유게시판 신고 글 취소");
		
		service.cancelFreeBoard(re_num);
		return "redirect:free_board?page=1";
	}
	
	@GetMapping(value = "admin/free_comments")
	public String freeComment(Model model, int page) throws Exception {
		logger.info("관리자화면 접속 : 자유게시판 댓글 신고");
		
		// 레코드가 없으면 목록이 없다는 메시지 표시
		int freeCommentsCnt = service.freeCommentsCnt();
		if(freeCommentsCnt == 0) {
			model.addAttribute("listZero", "신고 목록이 없습니다.");
			model.addAttribute("leftMenu", "free_comments");
			return "admin/free_comments";
		}
		
		// 1페이지 미만의 번호를 넘기면 1페이지로
		if(page < 1)
			return "redirect:free_comments?page=1";
		
		PageProcess pp = new PageProcess();
		pp.setCurrPage(page); // 현재 페이지
		pp.setPagePerList(10); // 한 페이지에 보여줄 자유게시판 신고 댓글 수
		pp.setPagePerNavi(10); // 페이지 네비게이터에 표시할 페이지 수
		pp.setBoardCnt(freeCommentsCnt); // 전체 자유게시판 신고 댓글 수
		
		// 마지막 페이지를 초과한 번호를 넘기면 마지막 페이지로
		int lastPage = pp.calcLastPage();
		if(page > lastPage)
			return "redirect:free_comments?page=" + lastPage;
			
		List<Map<String, Object>> freeComments = service.freeComments(pp);
		model.addAttribute("freeComments", freeComments);
		model.addAttribute("pp", pp);
		model.addAttribute("leftMenu", "free_comments");
		return "admin/free_comments";
	}
	
	@GetMapping(value = "admin/warn_free_comments")
	public String warnFreeComments(int c_num) throws Exception {
		logger.info("관리자화면 : 자유게시판 신고 댓글 삭제");
		
		service.warnFreeComments(c_num);
		return "redirect:free_comments?page=1";
	}
	
	@GetMapping(value = "admin/cancel_free_comments")
	public String cancelFreeComments(int cr_num) throws Exception {
		logger.info("관리자화면 : 자유게시판 신고 댓글 취소");
		
		service.cancelFreeComments(cr_num);
		return "redirect:free_comments?page=1";
	}
	
	@GetMapping(value = "admin/temping_board")
	public String tempingBoard(Model model, int page) throws Exception {
		logger.info("관리자화면 접속 : 땜빵게시판 글 신고");
		
		// 레코드가 없으면 목록이 없다는 메시지 표시
		int tempingBoardCnt = service.tempingBoardCnt();
		if(tempingBoardCnt == 0) {
			model.addAttribute("listZero", "신고 목록이 없습니다.");
			model.addAttribute("leftMenu", "temping_board");
			return "admin/temping_board";
		}
		
		// 1페이지 미만의 번호를 넘기면 1페이지로
		if(page < 1)
			return "redirect:temping_board?page=1";
		
		PageProcess pp = new PageProcess();
		pp.setCurrPage(page); // 현재 페이지
		pp.setPagePerList(10); // 한 페이지에 보여줄 땜빵게시판 신고 글 수
		pp.setPagePerNavi(10); // 페이지 네비게이터에 표시할 페이지 수
		pp.setBoardCnt(tempingBoardCnt); // 전체 땜빵게시판 신고 글 수
		
		// 마지막 페이지를 초과한 번호를 넘기면 마지막 페이지로
		int lastPage = pp.calcLastPage();
		if(page > lastPage)
			return "redirect:temping_board?page=" + lastPage;
			
		List<Map<String, Object>> tempingBoard = service.tempingBoard(pp);
		model.addAttribute("tempingBoard", tempingBoard);
		model.addAttribute("pp", pp);
		model.addAttribute("leftMenu", "temping_board");
		return "admin/temping_board";
	}
	
	@GetMapping(value = "admin/warn_temping_board")
	public String warnTempingBoard(int b_num) throws Exception {
		logger.info("관리자화면 : 땜빵게시판 신고 글 삭제");
		
		service.warnTempingBoard(b_num);
		return "redirect:temping_board?page=1";
	}
	
	@GetMapping(value = "admin/cancel_temping_board")
	public String cancelTempingBoard(int re_num) throws Exception {
		logger.info("관리자화면 : 땜빵게시판 신고 글 취소");
		
		service.cancelTempingBoard(re_num);
		return "redirect:temping_board?page=1";
	}
	
	@GetMapping(value = "admin/temping_comments")
	public String tempingComment(Model model, int page) throws Exception {
		logger.info("관리자화면 접속 : 땜빵게시판 댓글 신고");
		
		// 레코드가 없으면 목록이 없다는 메시지 표시
		int tempingCommentsCnt = service.tempingCommentsCnt();
		if(tempingCommentsCnt == 0) {
			model.addAttribute("listZero", "신고 목록이 없습니다.");
			model.addAttribute("leftMenu", "temping_comments");
			return "admin/temping_comments";
		}
		
		// 1페이지 미만의 번호를 넘기면 1페이지로
		if(page < 1)
			return "redirect:temping_comments?page=1";
		
		PageProcess pp = new PageProcess();
		pp.setCurrPage(page); // 현재 페이지
		pp.setPagePerList(10); // 한 페이지에 보여줄 땜빵게시판 신고 댓글 수
		pp.setPagePerNavi(10); // 페이지 네비게이터에 표시할 페이지 수
		pp.setBoardCnt(tempingCommentsCnt); // 전체 땜빵게시판 신고 댓글 수
		
		// 마지막 페이지를 초과한 번호를 넘기면 마지막 페이지로
		int lastPage = pp.calcLastPage();
		if(page > lastPage)
			return "redirect:temping_comments?page=" + lastPage;
			
		List<Map<String, Object>> tempingComments = service.tempingComments(pp);
		model.addAttribute("tempingComments", tempingComments);
		model.addAttribute("pp", pp);
		model.addAttribute("leftMenu", "temping_comments");
		return "admin/temping_comments";
	}
	
	@GetMapping(value = "admin/warn_temping_comments")
	public String warnTempingComments(int c_num) throws Exception {
		logger.info("관리자화면 : 땜빵게시판 신고 댓글 삭제");
		
		service.warnTempingComments(c_num);
		return "redirect:temping_comments?page=1";
	}
	
	@GetMapping(value = "admin/cancel_temping_comments")
	public String cancelTempingComments(int cr_num) throws Exception {
		logger.info("관리자화면 : 땜빵게시판 신고 댓글 취소");
		
		service.cancelTempingComments(cr_num);
		return "redirect:temping_comments?page=1";
	}
}
