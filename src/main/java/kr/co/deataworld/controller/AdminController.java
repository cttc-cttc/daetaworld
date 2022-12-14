package kr.co.deataworld.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.deataworld.dto.MemberDTO;
import kr.co.deataworld.dto.PointDTO;
import kr.co.deataworld.service.AdminService;
import kr.co.deataworld.service.NotificationService;
import kr.co.deataworld.service.PointService;
import kr.co.deataworld.util.PageProcess;

/*
 * 관리자화면 컨트롤러
 */
@Controller
public class AdminController {
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Inject
	AdminService service;
	
	@Inject
	PointService pService;
	
	@Inject
	NotificationService nService;
	
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
		
		PointDTO point = pService.point(id);
		model.addAttribute("point", point);
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
		
		// 정지된 유저의 신고 사유들을 표시하고 그 사유에 해당하는 본문을 링크를 하기 위한 처리
		List<Map<String, Object>> blacklistTmp = service.blacklist(pp);
		List<Map<String, Object>> blacklist = new ArrayList<Map<String,Object>>();
		
		for(Map<String, Object> blackMap : blacklistTmp) {
			String[] r_types = ((String) blackMap.get("r_types")).split(",");
			String[] b_numbers = ((String) blackMap.get("b_numbers")).split(",");
			String[] a_numbers = ((String) blackMap.get("a_numbers")).split(",");
			String[] c_numbers = ((String) blackMap.get("c_numbers")).split(",");
			String[] r_kind_types = ((String) blackMap.get("r_kind_types")).split(",");
			
			List<Map<String, Object>> r_types_info = new ArrayList<Map<String,Object>>();
			for(int i=0; i<r_types.length; i++) {
				if(i > 2) // 3개 까지만 처리
					break;
				
				Map<String, Object> map = new HashMap<String, Object>();
				map.put("r_type", r_types[i]);
				map.put("b_number", Integer.parseInt(b_numbers[i]));
				map.put("a_number", Integer.parseInt(a_numbers[i]));
				map.put("c_number", Integer.parseInt(c_numbers[i]));
				map.put("r_kind_type", Integer.parseInt(r_kind_types[i]));
				r_types_info.add(map);
			}
			blackMap.put("r_types_info", r_types_info);
			blacklist.add(blackMap);
		}
		
		model.addAttribute("blacklist", blacklist);
		model.addAttribute("pp", pp);
		model.addAttribute("leftMenu", "blacklist");
		return "admin/blacklist";
	}
	
	@GetMapping(value = "admin/job_ads")
	public String jobAds(Model model, int page, String pageType) throws Exception {
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
		
		// 타입 15 알림을 클릭해 들어온 경우
		if(pageType != null) {
			Map<String, Object> delNotiInfo = new HashMap<String, Object>();
			delNotiInfo.put("m_id", "admin");
			delNotiInfo.put("n_type", 15);
			nService.deletePart(delNotiInfo);
		}
		return "admin/job_ads";
	}
	
	@GetMapping(value = "admin/warn_job_ads")
	public String warnJobAds(int a_num, String m_id, String r_type) throws Exception {
		logger.info("관리자화면 : 구인공고 신고 삭제");
		
		service.warnJobAds(a_num, m_id);
		
		// 알림타임 10: 회원이 자유게시판 글/댓글, 땜빵게시판 글/댓글, 구인공고 5가지 중 신고를 당해 경고처리가 되면 신고내용 알림발송
        Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
        notiInsertInfo.put("m_id", m_id);
        notiInsertInfo.put("n_type", 10);
        notiInsertInfo.put("r_type", r_type);
        notiInsertInfo.put("r_kind", "구인공고");
        nService.insertNotiType10(notiInsertInfo);
		return "redirect:job_ads?page=1";
	}
	
	@GetMapping(value = "admin/cancel_job_ads")
	public String cancelJobAds(int re_num) throws Exception {
		logger.info("관리자화면 : 구인공고 신고 취소");
		
		service.cancelJobAds(re_num);
		return "redirect:job_ads?page=1";
	}
	
	@GetMapping(value = "admin/free_board")
	public String freeBoard(Model model, int page, String pageType) throws Exception {
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
		
		// 타입 11 알림을 클릭해 들어온 경우
		if(pageType != null) {
			Map<String, Object> delNotiInfo = new HashMap<String, Object>();
			delNotiInfo.put("m_id", "admin");
			delNotiInfo.put("n_type", 11);
			nService.deletePart(delNotiInfo);
		}
		return "admin/free_board";
	}
	
	@GetMapping(value = "admin/warn_free_board")
	public String warnFreeBoard(int b_num, String m_id, String r_type) throws Exception {
		logger.info("관리자화면 : 자유게시판 신고 글 삭제");
		
		service.warnFreeBoard(b_num, m_id);
		
		// 알림타임 10: 회원이 자유게시판 글/댓글, 땜빵게시판 글/댓글, 구인공고 5가지 중 신고를 당해 경고처리가 되면 신고내용 알림발송
        Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
        notiInsertInfo.put("m_id", m_id);
        notiInsertInfo.put("n_type", 10);
        notiInsertInfo.put("r_type", r_type);
        notiInsertInfo.put("r_kind", "자유게시판 글");
        nService.insertNotiType10(notiInsertInfo);
		return "redirect:free_board?page=1";
	}
	
	@GetMapping(value = "admin/cancel_free_board")
	public String cancelFreeBoard(int re_num) throws Exception {
		logger.info("관리자화면 : 자유게시판 신고 글 취소");
		
		service.cancelFreeBoard(re_num);
		return "redirect:free_board?page=1";
	}
	
	@GetMapping(value = "admin/free_comments")
	public String freeComment(Model model, int page, String pageType) throws Exception {
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
		
		// 타입 12 알림을 클릭해 들어온 경우
		if(pageType != null) {
			Map<String, Object> delNotiInfo = new HashMap<String, Object>();
			delNotiInfo.put("m_id", "admin");
			delNotiInfo.put("n_type", 12);
			nService.deletePart(delNotiInfo);
		}
		return "admin/free_comments";
	}
	
	@GetMapping(value = "admin/warn_free_comments")
	public String warnFreeComments(int c_num, String m_id, String r_type) throws Exception {
		logger.info("관리자화면 : 자유게시판 신고 댓글 삭제");
		
		service.warnFreeComments(c_num, m_id);
		
		// 알림타임 10: 회원이 자유게시판 글/댓글, 땜빵게시판 글/댓글, 구인공고 5가지 중 신고를 당해 경고처리가 되면 신고내용 알림발송
        Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
        notiInsertInfo.put("m_id", m_id);
        notiInsertInfo.put("n_type", 10);
        notiInsertInfo.put("r_type", r_type);
        notiInsertInfo.put("r_kind", "자유게시판 댓글");
        nService.insertNotiType10(notiInsertInfo);
		return "redirect:free_comments?page=1";
	}
	
	@GetMapping(value = "admin/cancel_free_comments")
	public String cancelFreeComments(int cr_num) throws Exception {
		logger.info("관리자화면 : 자유게시판 신고 댓글 취소");
		
		service.cancelFreeComments(cr_num);
		return "redirect:free_comments?page=1";
	}
	
	@GetMapping(value = "admin/temping_board")
	public String tempingBoard(Model model, int page, String pageType) throws Exception {
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
		
		// 타입 13 알림을 클릭해 들어온 경우
		if(pageType != null) {
			Map<String, Object> delNotiInfo = new HashMap<String, Object>();
			delNotiInfo.put("m_id", "admin");
			delNotiInfo.put("n_type", 13);
			nService.deletePart(delNotiInfo);
		}
		return "admin/temping_board";
	}
	
	@GetMapping(value = "admin/warn_temping_board")
	public String warnTempingBoard(int b_num, String m_id, String r_type) throws Exception {
		logger.info("관리자화면 : 땜빵게시판 신고 글 삭제");
		
		service.warnTempingBoard(b_num, m_id);
		
		// 알림타임 10: 회원이 자유게시판 글/댓글, 땜빵게시판 글/댓글, 구인공고 5가지 중 신고를 당해 경고처리가 되면 신고내용 알림발송
        Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
        notiInsertInfo.put("m_id", m_id);
        notiInsertInfo.put("n_type", 10);
        notiInsertInfo.put("r_type", r_type);
        notiInsertInfo.put("r_kind", "땜빵게시판 글");
        nService.insertNotiType10(notiInsertInfo);
		return "redirect:temping_board?page=1";
	}
	
	@GetMapping(value = "admin/cancel_temping_board")
	public String cancelTempingBoard(int re_num) throws Exception {
		logger.info("관리자화면 : 땜빵게시판 신고 글 취소");
		
		service.cancelTempingBoard(re_num);
		return "redirect:temping_board?page=1";
	}
	
	@GetMapping(value = "admin/temping_comments")
	public String tempingComment(Model model, int page, String pageType) throws Exception {
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
		
		// 타입 14 알림을 클릭해 들어온 경우
		if(pageType != null) {
			Map<String, Object> delNotiInfo = new HashMap<String, Object>();
			delNotiInfo.put("m_id", "admin");
			delNotiInfo.put("n_type", 14);
			nService.deletePart(delNotiInfo);
		}
		return "admin/temping_comments";
	}
	
	@GetMapping(value = "admin/warn_temping_comments")
	public String warnTempingComments(int c_num, String m_id, String r_type) throws Exception {
		logger.info("관리자화면 : 땜빵게시판 신고 댓글 삭제");
		
		service.warnTempingComments(c_num, m_id);
		
		// 알림타임 10: 회원이 자유게시판 글/댓글, 땜빵게시판 글/댓글, 구인공고 5가지 중 신고를 당해 경고처리가 되면 신고내용 알림발송
        Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
        notiInsertInfo.put("m_id", m_id);
        notiInsertInfo.put("n_type", 10);
        notiInsertInfo.put("r_type", r_type);
        notiInsertInfo.put("r_kind", "땜빵게시판 댓글");
        nService.insertNotiType10(notiInsertInfo);
		return "redirect:temping_comments?page=1";
	}
	
	@GetMapping(value = "admin/cancel_temping_comments")
	public String cancelTempingComments(int cr_num) throws Exception {
		logger.info("관리자화면 : 땜빵게시판 신고 댓글 취소");
		
		service.cancelTempingComments(cr_num);
		return "redirect:temping_comments?page=1";
	}
	
	/*
	 * 신고 확인 & 신고
	 * 
	 * Map<String, Object> reportInfo
	 * 신고 코드(r_code) : 1-광고, 2-비속어 사용, 3-분쟁 조장, 4-선정적, 5-사기 · 도박
	 * 신고 타입(r_type) : 1-자유게시판 글, 2-자유게시판 댓글, 3-땜빵게시판 글, 4-땜빵게시판 댓글, 5-구인공고 글
	 * 게시글 번호(b_number) : 없으면 -1
	 * 댓글 번호(c_number) : 없으면 -1
	 * 구인공고 번호(a_number) : 없으면 -1
	 * 피신고인(m_id) : 해당 글/댓글 작성자
	 * 신고인(r_id) : 로그인 유저
	 */
	@ResponseBody
	@PostMapping(value = "reportProcess")
	public int report(@RequestBody Map<String, Object> reportInfo) {
		logger.info("신고정보: "+ reportInfo);
		int r_type = (Integer) reportInfo.get("r_type");
		
		// 신고하기 전, 로그인 유저가 이미 신고했는지 확인
		switch(r_type) {
		case 1: case 3: case 5:
			int reportResult = service.confirmReport(reportInfo);
			if(reportResult != 0) {
				logger.info("해당 글 이미 신고됨");
				return 1;
			}
			break;
		case 2: case 4:
			int reportCommentsResult = service.confirmCommentsReport(reportInfo);
			if(reportCommentsResult != 0) {
				logger.info("해당 댓글 이미 신고됨");
				return 2;
			}
		}
		
		// 신고
		switch(r_type) {
		case 1: case 3:
			// 해당 게시판 글의 r_code 업데이트
			// report 테이블에 새 레코드 추가 
			service.boardReport(reportInfo);
			logger.info("해당 게시판 글 신고완료");
			break;
		case 2: case 4:
			// 해당 게시판 댓글의 r_code 업데이트
			// comments_report 테이블에 새 레코드 추가
			service.commentsReport(reportInfo);
			logger.info("해당 게시판 댓글 신고완료");
			break;
		case 5:
			// 해당 구인공고 글의 r_code 업데이트
			// report 테이블에 새 레코드 추가
			service.adsReport(reportInfo);
			logger.info("해당 구인공고 글 신고완료");
		}
		
		// 관리자에게 알림 보내기
		// 알림타입 11: 구직자, 구인자가 자유게시판 글 신고를 받으면 해당 게시글 번호로 관리자에게 신고내용 알림발송
		// 알림타입 12: 구직자, 구인자가 자유게시판 댓글 신고를 받으면 해당 댓글 번호로 관리자에게 신고내용 알림발송
		// 알림타입 13: 구직자가 땜빵게시판 글 신고를 받으면 해당 게시글 번호로 관리자에게 신고내용 알림발송
		// 알림타입 14: 구직자가 땜빵게시판 댓글 신고를 받으면 해당 댓글 번호로 관리자에게 신고내용 알림발송
		// 알림타입 15: 구인자가 구인공고 글 신고를 받으면 해당 게시글 번호로 관리자에게 신고내용 알림발송
		Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
	    notiInsertInfo.put("m_id", "admin");
	    notiInsertInfo.put("b_number", (int) reportInfo.get("b_number"));
	    notiInsertInfo.put("c_number", (int) reportInfo.get("c_number"));
	    notiInsertInfo.put("a_number", (int) reportInfo.get("a_number"));
	    
	    switch(r_type) {
	    case 1:
	    	notiInsertInfo.put("n_type", 11);
	    	nService.insertNotiType11(notiInsertInfo);
	    	break;
	    case 2:
	    	notiInsertInfo.put("n_type", 12);
	    	nService.insertNotiType12(notiInsertInfo);
	    	break;
	    case 3:
	    	notiInsertInfo.put("n_type", 13);
	    	nService.insertNotiType13(notiInsertInfo);
	    	break;
	    case 4:
	    	notiInsertInfo.put("n_type", 14);
	    	nService.insertNotiType14(notiInsertInfo);
	    	break;
	    case 5:
	    	notiInsertInfo.put("n_type", 15);
	    	nService.insertNotiType15(notiInsertInfo);
	    }
		return 3;
	}
}
