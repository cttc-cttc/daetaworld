package kr.co.deataworld.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
/*
 * 리뷰, 포인트 처리 컨트롤러
 */
@Controller
public class CommonController {
	
//	포인트 
	@GetMapping(value="pointMapper/pointManagement")
	public String pointManagement(Model model) {
		model.addAttribute("leftMenu", "pointManagement");
		return "common/point/pointManagement";
	}
	
//	포인트 적립 내역
	@GetMapping(value="pointMapper/pointEarned")
	public String pointEarned(Model model) {
		model.addAttribute("leftMenu", "pointManagement");
		return "common/point/pointEarned";
	}
	
//	포인트 차감 내역
	@GetMapping(value="pointMapper/pointDeducted")
	public String pointDeducted(Model model) {
		model.addAttribute("leftMenu", "pointManagement");
		return "common/point/pointDeducted";
	}
	
//	포인트 사용
	@GetMapping(value="pointMapper/pointUse")
	public String pointUse(Model model) {
		model.addAttribute("leftMenu", "pointManagement");
		return "common/point/pointUse";
	}
	
//	리뷰 작성을 위한 완료된 공고 확인
	@GetMapping(value="reviewMapper/adsCompleted")
	public String adsCompleted(Model model) {
		model.addAttribute("leftMenu", "adsCompleted");
		return "common/review/adsCompleted";
	}
	
//	리뷰 작성
	@GetMapping(value="reviewMapper/reviewRegister")
	public String reviewRegister(Model model) {
		model.addAttribute("leftMenu", "adsCompleted");
		return "common/review/reviewRegister";
	}
	
}
