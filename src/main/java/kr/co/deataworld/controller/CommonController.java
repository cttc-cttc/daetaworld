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

	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

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
	
//	리뷰 작성을 위한 완료된 공고 확인
	@GetMapping(value="reviewMapper/adsCompleted")
	public String adsCompleted(@RequestParam("m_id")String m_id, Model model) throws Exception {
		model.addAttribute("leftMenu", "adsCompleted");
		List<Map<String, Object>> list = rService.adsCompleted(m_id);
		model.addAttribute("list", list);
		return "common/review/adsCompleted";
	}

//	리뷰 작성
	@GetMapping(value = "reviewMapper/reviewRegister")
	public String reviewRegister(Model model) {
		model.addAttribute("leftMenu", "adsCompleted");
		return "common/review/reviewRegister";
	}
	
//	리뷰 작성 등록과정
		@RequestMapping(value="common/reviewRegister", method = RequestMethod.POST)
		public String reviewRegister(ReviewDTO reviewDTO, HttpServletRequest request)throws Exception {
			request.setCharacterEncoding("utf-8");
			logger.info("내용 : " + reviewDTO);
			int r = rService.reviewRegister(reviewDTO);
			return "common/review/reviewRegister";
		}
		
		
}
