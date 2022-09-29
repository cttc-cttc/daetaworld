package kr.co.deataworld.controller;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

import kr.co.deataworld.service.EmployeeService;

import kr.co.deataworld.dto.ReviewDTO;

import kr.co.deataworld.service.PointService;
import kr.co.deataworld.service.ReviewService;
/*
 * 리뷰, 포인트 처리 컨트롤러
 */
@Controller
public class CommonController {
	@Autowired
	PointService pService;
	
	@Autowired
	ReviewService rService;

	
	private static final Logger logger = LoggerFactory.getLogger(CommonController.class);
//	포인트 
	@GetMapping(value="pointMapper/pointManagement")
	public String pointManagement(Model model) throws Exception {
		model.addAttribute("leftMenu", "pointManagement");	
		String id = "owner";
		PointDTO point = pService.point(id);
		model.addAttribute("point", point);
		return "common/point/pointManagement";
	}

//	포인트 적립 내역
	@GetMapping(value="pointMapper/pointEarned")
	public String pointEarned(Model model) throws Exception {
		model.addAttribute("leftMenu", "pointManagement");
		String id = "owner";
		List<EarnedPointDTO> earnedPoint = pService.earnedPoint(id);
		model.addAttribute("earnedPoint", earnedPoint);
		return "common/point/pointEarned";
	}

//	포인트 차감 내역
	@GetMapping(value="pointMapper/pointDeducted")
	public String pointDeducted(Model model) throws Exception {
		model.addAttribute("leftMenu", "pointManagement");
		String id = "owner";
		List<DeductedPointDTO> deductedPoint = pService.deductedPoint(id);
		model.addAttribute("deductedPoint", deductedPoint);
		return "common/point/pointDeducted";
	}
	
//	포인트 사용 페이지
	@GetMapping(value="pointMapper/pointUse")
	public String pointUse(Model model) throws Exception {
		model.addAttribute("leftMenu", "pointManagement");
		String id = "owner";
		PointDTO point = pService.point(id);
		model.addAttribute("point", point);
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
	public String pointAdd(Model model) throws Exception {
		model.addAttribute("leftMenu", "pointManagement");
		String id = "owner";
		PointDTO point = pService.point(id);
		model.addAttribute("point", point);
		return "common/point/pointAdd";
	}
	
//	포인트 추가
	@ResponseBody
	@PostMapping(value="pointMapper/pointAdd")
	public int pointAdd(@RequestParam Map<String, Object> map) throws Exception{
		return pService.pointAdd(map);
	}	
	
	
//	구인자	
	
	//	리뷰 작성을 위한 완료된 공고 확인
		@GetMapping(value="reviewMapper/r_adsCompleted")
		public String r_adsCompleted(@RequestParam("m_id")String m_id, Model model) throws Exception {
			model.addAttribute("leftMenu", "adsCompleted");
			List<Map<String, Object>> list = rService.r_adsCompleted(m_id);
			model.addAttribute("list", list);
			return "common/review/employer/r_adsCompleted";
		}
		
	//	리뷰 작성한 공고 목록
		@GetMapping(value="reviewMapper/r_wroteReviews")	
		public String r_wroteReviews(@RequestParam("m_id")String m_id, Model model)throws Exception{
			model.addAttribute("leftMenu", "adsCompleted");
			List<Map<String, Object>> list = rService.r_wroteReviews(m_id);
			model.addAttribute("list", list);
			return "common/review/employer/r_wroteReviews";
		}
		
	//	리뷰 작성된 공고 목록
		@GetMapping(value="reviewMapper/r_writtenReviews")
		public String r_writtenReviews(@RequestParam("m_id")String m_id, Model model)throws Exception{
			model.addAttribute("leftMenu", "adsCompleted");
			List<Map<String, Object>> list = rService.r_writtenReviews(m_id);
			model.addAttribute("list", list);
			return "common/review/employer/r_writtenReviews";
		}
		
		
//  구직자
		
	
//	작성한 리뷰 내용 확인
	@GetMapping(value="reviewMapper/wroteDetail")
	public String wroteDetail(@RequestParam("a_number")int a_number, Model model)throws Exception{
		model.addAttribute("leftMenu", "adsCompleted");
		Map<String, Object> detail = rService.wroteDetail(a_number);
		model.addAttribute("detail", detail);
		return "common/review/wroteDetail";
	}

	
//	작성된 리뷰 내용 확인
	@GetMapping(value="reviewMapper/writtenDetail")
	public String writtenDetail(@RequestParam("w_number")int w_number, Model model)throws Exception{
		model.addAttribute("leftMenu", "adsCompleted");
		Map<String, Object> detail = rService.writtenDetail(w_number);
		model.addAttribute("detail", detail);
		return "common/review/writtenDetail";
	}
	
	
//	리뷰 작성
	@GetMapping(value = "reviewMapper/reviewRegister")
	public String reviewRegister(@RequestParam("a_number")int a_number, 
			@RequestParam("m_id")String w_writer, 
			@RequestParam("id_rated")String id_rated, Model model) {
		model.addAttribute("leftMenu", "adsCompleted");
		model.addAttribute("a_number", a_number);
		model.addAttribute("w_writer", w_writer);
		model.addAttribute("id_rated", id_rated);
		return "common/review/reviewRegister";
	}
	
//	리뷰 작성 등록과정
		@RequestMapping(value="reviewMapper/reviewRegister", method = RequestMethod.POST)
		public String reviewRegister(ReviewDTO reviewDTO, HttpServletRequest request)throws Exception {
			request.setCharacterEncoding("utf-8");
			logger.info("내용 : " + reviewDTO);
			int r = rService.reviewRegister(reviewDTO);
			return "redirect:/reviewMapper/r_wroteReviews?m_id="+reviewDTO.getW_writer() ;
		}
}
