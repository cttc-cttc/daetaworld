package kr.co.deataworld.controller;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.co.deataworld.dto.BoardDTO;
import kr.co.deataworld.dto.DeductedPointDTO;
import kr.co.deataworld.dto.EarnedPointDTO;
import kr.co.deataworld.dto.PointDTO;
import kr.co.deataworld.dto.ReviewCommentsDTO;
import kr.co.deataworld.service.EmployeeService;
import kr.co.deataworld.service.NotificationService;
import kr.co.deataworld.dto.ReviewDTO;

import kr.co.deataworld.service.PointService;
import kr.co.deataworld.service.ReviewService;
import kr.co.deataworld.util.PageProcess;
/*
 * 리뷰, 포인트 처리 컨트롤러
 */
@Controller
public class CommonController {
	@Autowired
	PointService pService;
	
	@Autowired
	ReviewService rService;
	
	@Inject
	NotificationService nService;
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
//	포인트 
	@GetMapping(value="pointMapper/pointManagement")
	public String pointManagement(@RequestParam("m_id")String id, Model model) throws Exception {
		model.addAttribute("leftMenu", "pointManagement");	
		PointDTO point = pService.point(id);
		model.addAttribute("point", point);
		return "common/point/pointManagement";
	}

//	포인트 적립 내역
	@GetMapping(value="pointMapper/pointEarned")
	public String pointEarned(@RequestParam("m_id")String id, Model model) throws Exception {
		model.addAttribute("leftMenu", "pointManagement");
		List<EarnedPointDTO> earnedPoint = pService.earnedPoint(id);
		model.addAttribute("earnedPoint", earnedPoint);
		return "common/point/pointEarned";
	}
//	포인트 적립 내역(페이징 처리 ajax)
	@ResponseBody
	@GetMapping(value="pointMapper/pEarnedAjax")
	public Map<String, Object> pEarnedAjax(String m_id, int page) {
		
		Map<String, Object> result = new HashMap<String, Object>();
		int ePointCnt = pService.earnedPointCnt(m_id);
		if(ePointCnt == 0) {
			result.put("emptyMsg", "적립 내역이 없습니다.");
			return result;
		}
		
		PageProcess pp = new PageProcess();
		pp.setCurrPage(page); // 현재 페이지
		pp.setPagePerList(10); // 한 페이지에 보여줄 적립 포인트 내역 수
		pp.setPagePerNavi(10); // 페이지 네비게이터에 표시할 페이지 수
		pp.setBoardCnt(ePointCnt); // 전체 적립 포인트 내역 수
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", m_id);
		map.put("pp", pp);
		
		List<EarnedPointDTO> list = pService.earnedPointPage(map);
		result.put("earnedPointList", list);
		result.put("pp", pp);
		result.put("pageRange", pp.calcPageRange());
		result.put("lastPage", pp.calcLastPage());
		return result;
	}

//	포인트 차감 내역
	@GetMapping(value="pointMapper/pointDeducted")
	public String pointDeducted(@RequestParam("m_id")String id, Model model) throws Exception {
		model.addAttribute("leftMenu", "pointManagement");
		List<DeductedPointDTO> deductedPoint = pService.deductedPoint(id);
		model.addAttribute("deductedPoint", deductedPoint);
		return "common/point/pointDeducted";
	}
//	포인트 차감 내역(페이징 처리 ajax)
	@ResponseBody
	@GetMapping(value="pointMapper/pDeductedAjax")
	public Map<String, Object> pDeductedAjax(String m_id, int page) {
		
		Map<String, Object> result = new HashMap<String, Object>();
		int dPointCnt = pService.deductedPointCnt(m_id);
		if(dPointCnt == 0) {
			result.put("emptyMsg", "차감 내역이 없습니다.");
			return result;
		}
		
		PageProcess pp = new PageProcess();
		pp.setCurrPage(page); // 현재 페이지
		pp.setPagePerList(10); // 한 페이지에 보여줄 차감 포인트 내역 수
		pp.setPagePerNavi(10); // 페이지 네비게이터에 표시할 페이지 수
		pp.setBoardCnt(dPointCnt); // 전체 차감 포인트 내역 수
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", m_id);
		map.put("pp", pp);
		
		List<DeductedPointDTO> list = pService.deductedPointPage(map);
		result.put("deductedPointList", list);
		result.put("pp", pp);
		result.put("pageRange", pp.calcPageRange());
		result.put("lastPage", pp.calcLastPage());
		return result;
	}
	
//	포인트 사용 페이지
	@GetMapping(value="pointMapper/pointUse")
	public String pointUse(@RequestParam("m_id")String id, Model model, HttpServletRequest request) throws Exception {
		model.addAttribute("leftMenu", "pointManagement");
		PointDTO point = pService.point(id);
		model.addAttribute("point", point);
		
		HttpSession session = request.getSession();
		session.setAttribute("loginPoint", point.getPoint());
		
		return "common/point/pointUse";
	}
	
//	포인트 사용
	@ResponseBody
	@PostMapping(value="pointMapper/pointDeduct")
	public int pointDeduct(@RequestParam Map<String, Object> map ) throws Exception {	
		return pService.pointDeduct(map);
	}
	
//	포인트 추가 페이지
	@GetMapping(value="pointMapper/pointAdd")
	public String pointAdd(@RequestParam("m_id")String id, Model model, HttpServletRequest request) throws Exception {
		model.addAttribute("leftMenu", "pointManagement");
		PointDTO point = pService.point(id);
		model.addAttribute("point", point);
		
		HttpSession session = request.getSession();
		session.setAttribute("loginPoint", point.getPoint());
		
		return "common/point/pointAdd";
	}
	
//	포인트 추가
	@ResponseBody
	@PostMapping(value="pointMapper/pointAdd")
	public int pointAdd(@RequestParam Map<String, Object> map) throws Exception{
		return pService.pointAdd(map);
	}
	
//	리뷰 작성	
//	구인자	
	
	//	리뷰 작성을 위한 완료된 공고 확인
	@GetMapping(value="reviewMapper/r_adsCompleted")
	public String r_adsCompleted(@RequestParam("m_id")String m_id, Model model) throws Exception {
		model.addAttribute("leftMenu", "adsCompleted");
		List<Map<String, Object>> list = rService.r_adsCompleted(m_id);
		model.addAttribute("list", list);
		return "common/review/employer/r_adsCompleted";
	}
	
	//	리뷰 작성
		@GetMapping(value = "reviewMapper/r_reviewRegister")
		public String r_reviewRegister(@RequestParam("a_number")int a_number, 
				@RequestParam("id_rated")String id_rated, 
				@RequestParam("m_id")String m_id, String s_name, Model model) {
			model.addAttribute("leftMenu", "adsCompleted");
			model.addAttribute("a_number", a_number);
			model.addAttribute("m_id", m_id);
			model.addAttribute("id_rated", id_rated);
			model.addAttribute("s_name", s_name);
			return "common/review/employer/r_reviewRegister";
		}
		
	//  리뷰 작성 등록과정
	    @RequestMapping(value="reviewMapper/r_reviewRegister", method = RequestMethod.POST)
	    public String r_reviewRegister(ReviewDTO reviewDTO, String s_name, HttpServletRequest request)throws Exception {
	       request.setCharacterEncoding("utf-8");
	       logger.info("내용 : " + reviewDTO);
	       int r = rService.r_reviewRegister(reviewDTO);
	       
	       // 알림타임 8: 구인자가 후기 작성 시 구직자에게 알림발송
	       Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
	       notiInsertInfo.put("m_id", reviewDTO.getId_rated());
	       notiInsertInfo.put("n_type", 8);
	       notiInsertInfo.put("s_name", s_name);
	       nService.insertNotiType8(notiInsertInfo);
	       return "redirect:/reviewMapper/r_wroteReviews?m_id="+reviewDTO.getW_writer() ;
	    }
		
	//	리뷰 작성한 공고 목록
		@GetMapping(value="reviewMapper/r_wroteReviews")	
		public String r_wroteReviews(@RequestParam("m_id")String m_id, String pageType, Model model)throws Exception{
			model.addAttribute("leftMenu", "adsCompleted");
			List<Map<String, Object>> list = rService.r_wroteReviews(m_id);
			model.addAttribute("list", list);
			
			// 타입 4 알림을 클릭해 들어온 경우
			if(pageType != null) {
				Map<String, Object> delNotiInfo = new HashMap<String, Object>();
				delNotiInfo.put("m_id", m_id);
				delNotiInfo.put("n_type", 4);
				nService.deletePart(delNotiInfo);
			}
			return "common/review/employer/r_wroteReviews";
		}
		
	//	리뷰 작성된 공고 목록
		@GetMapping(value="reviewMapper/r_writtenReviews")
		public String r_writtenReviews(@RequestParam("m_id")String m_id, String pageType, Model model)throws Exception{
			model.addAttribute("leftMenu", "adsCompleted");
			List<Map<String, Object>> list = rService.r_writtenReviews(m_id);
			model.addAttribute("list", list);
			
			// 타입 3 알림을 클릭해 들어온 경우
			if(pageType != null) {
				Map<String, Object> delNotiInfo = new HashMap<String, Object>();
				delNotiInfo.put("m_id", m_id);
				delNotiInfo.put("n_type", 3);
				nService.deletePart(delNotiInfo);
			}
			return "common/review/employer/r_writtenReviews";
		}		
		
		
//구직자
	//리뷰 작성
		@GetMapping(value = "reviewMapper/e_reviewRegister")
		public String e_reviewRegister(@RequestParam("a_number") int a_number,
									   @RequestParam("m_id") String m_id, 
									   @RequestParam("id_rated") String id_rated, String s_name, Model model) {
			model.addAttribute("leftMenu", "adsCompleted");
			model.addAttribute("a_number", a_number);
			model.addAttribute("id_rated", id_rated);
			model.addAttribute("m_id", m_id);
			model.addAttribute("s_name", s_name);
			return "common/review/employee/e_reviewRegister";
			}
		
		
	//  리뷰 작성 등록과정
		@PostMapping(value="reviewMapper/e_reviewRegister")
		public String e_reviewRegister(ReviewDTO reviewDTO, String s_name) throws Exception{
			int r = rService.e_reviewRegister(reviewDTO);
			
			// 알림타입 3: 구직자가 후기 작성 시 구인자에게 알림발송
			Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
		    notiInsertInfo.put("m_id", reviewDTO.getId_rated());
		    notiInsertInfo.put("n_type", 3);
		    notiInsertInfo.put("s_name", s_name);
		    nService.insertNotiType3(notiInsertInfo);
			return "redirect:/reviewMapper/e_wroteReviews?m_id="+reviewDTO.getW_writer();
		}
		
		
		//나를 평가한 리뷰
		@GetMapping(value="reviewMapper/e_writtenReviews")	
		public String e_writtenReviews(@RequestParam("m_id") String m_id, String pageType, Model model)throws Exception{
			model.addAttribute("leftMenu", "adsCompleted");
			List<Map<String, Object>> list = rService.e_writtenReviews(m_id);
			model.addAttribute("list", list);
			
			// 타입 8 알림을 클릭해 들어온 경우
			if(pageType != null) {
				Map<String, Object> delNotiInfo = new HashMap<String, Object>();
				delNotiInfo.put("m_id", m_id);
				delNotiInfo.put("n_type", 8);
				nService.deletePart(delNotiInfo);
			}
			return "common/review/employee/e_writtenReviews";
		}	
	
	
		//내가 평가한 리뷰
		@GetMapping(value="reviewMapper/e_wroteReviews")	
		public String e_myReview(@RequestParam("m_id")String m_id, String pageType, Model model)throws Exception{
			model.addAttribute("leftMenu", "adsCompleted");
			List<Map<String, Object>> list = rService.e_wroteReviews(m_id);
			model.addAttribute("list", list);
			System.out.println("값을 가져왔니? : "+list);
			
			// 타입 9 알림을 클릭해 들어온 경우
			if(pageType != null) {
				Map<String, Object> delNotiInfo = new HashMap<String, Object>();
				delNotiInfo.put("m_id", m_id);
				delNotiInfo.put("n_type", 9);
				nService.deletePart(delNotiInfo);
			}
			return "common/review/employee/e_wroteReviews";
		}
	

//	공통		
		  // 작성된 리뷰 내용 확인
		  @GetMapping(value="reviewMapper/wroteDetail")
		  public String wroteDetail(@RequestParam("w_number")int w_number, Model model)throws Exception{
		     model.addAttribute("leftMenu", "adsCompleted");
		     Map<String, Object> detail = rService.wroteDetail(w_number);
		     model.addAttribute("detail", detail);
		     return "common/review/wroteDetail";
		  }
		  
		// 작성된 리뷰 내용 확인
		@GetMapping(value="reviewMapper/writtenDetail")
		public String writtenDetail(@RequestParam("w_number")int w_number, String s_name, Model model)throws Exception{
			model.addAttribute("leftMenu", "adsCompleted");
			Map<String, Object> detail = rService.writtenDetail(w_number);
			model.addAttribute("detail", detail);
			model.addAttribute("s_name", s_name);
			return "common/review/writtenDetail";
		}
		
		@PostMapping(value="reviewMapper/replyRegister")
		public String replyRegister(ReviewCommentsDTO rcDTO, 
									String w_writer, String s_name, int m_type, Model model)throws Exception{
			model.addAttribute("leftMenu", "adsCompleted");
			int r = rService.replyRegister(rcDTO);
			
			if(m_type == 1) {
				// 알림타입 4: 구직자가 구인자 후기에 대한 댓글 작성 시 구인자에게 알림발송
				Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
			    notiInsertInfo.put("m_id", w_writer);
			    notiInsertInfo.put("n_type", 4);
			    notiInsertInfo.put("s_name", s_name);
			    nService.insertNotiType4(notiInsertInfo);
			    
			} else if(m_type == 2) {
				// 알림타입 9: 구인자가 구직자 후기에 대한 댓글 작성 시 구직자에게 알림발송
				Map<String, Object> notiInsertInfo = new HashMap<String, Object>();
			    notiInsertInfo.put("m_id", w_writer);
			    notiInsertInfo.put("n_type", 9);
			    notiInsertInfo.put("s_name", s_name);
			    nService.insertNotiType9(notiInsertInfo);
			}
			return "redirect:/reviewMapper/writtenDetail?w_number=" + rcDTO.getW_number();
		}

		
		
}
