package kr.co.deataworld.controller;

import org.springframework.stereotype.Controller;
/*
 * 구직자 별점 랭킹 컨트롤러
 */
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class RankingController {
	
//	@GetMapping(value = "ranking")
//	public String ranking() {
//		
//		return "ranking/ranking";
//	}
	
	
	//랭킹 조회수 보여주기 1~5위까지
	@GetMapping(value="ranking")
	public String ranking()throws Exception{
		
		return "";
		
		
	}
	
	
	
	
	
	
	
	
	
}
